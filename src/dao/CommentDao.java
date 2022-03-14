package dao;

import domain.Comment;
import util.DbcpUtil;
import util.JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentDao {
    public CommentDao() {
    }

    public List<Comment> selectCommentByMid(Integer mid) throws SQLException, ClassNotFoundException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;
        conn = DbcpUtil.getConnection();
        String sql = "SELECT c.Cid, c.Cdetail FROM movie m inner join r_com_mov r inner join comment c where M.mid = r.mid and r.cid = c.cid and M.mid = ?";

        pStat = conn.prepareStatement(sql);
        pStat.setInt(1, mid);
        res = pStat.executeQuery();

        List<Comment> commentList = new ArrayList<>();
        while(res.next()){
            Comment comment = new Comment();
            comment.setCid(res.getInt(1));
            comment.setDetail(res.getString(2));
            commentList.add(comment);
        }
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return commentList;
    }
    public int insertComment(Integer mid, String detail) throws ClassNotFoundException, SQLException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;
        int isSuccess = 0;
        Comment comment = new Comment();
        comment.setDetail(detail);
        conn = DbcpUtil.getConnection();
        conn.setAutoCommit(false);
        String sql = "SELECT MAX(cid) from comment";
        pStat = conn.prepareStatement(sql);
        res = pStat.executeQuery();
        if(res.next()){
        	comment.setCid(res.getInt(1) + 1);
        }
        System.out.println(comment.getCid());
        sql = "INSERT INTO comment(Cid, Cdetail) values(?, ?)";
        pStat = conn.prepareStatement(sql);
        pStat.setInt(1, comment.getCid());
        pStat.setString(2, comment.getDetail());
        System.out.println(pStat.toString());
        isSuccess = pStat.executeUpdate();
        System.out.println(isSuccess);
        if(isSuccess == 1) {
            sql = "INSERT INTO r_com_mov(Cid, Mid) values(?, ?)";
            pStat = conn.prepareStatement(sql);
            pStat.setInt(1, comment.getCid());
            pStat.setInt(2, mid);
            System.out.println(pStat.toString());
            isSuccess = pStat.executeUpdate();
            if(isSuccess == 1)
            {
            	conn.commit();
            }
            else {
				conn.rollback();
			}
        }
        else {
			conn.rollback();
		}
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return isSuccess;
    }
}
