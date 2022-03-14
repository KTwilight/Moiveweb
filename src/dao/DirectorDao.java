package dao;

import domain.Director;
import util.DbcpUtil;
import util.JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DirectorDao {
    public DirectorDao() {
    }

    public List<Director> selectDirectorByMid(Integer mid) throws SQLException, ClassNotFoundException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;
        conn = DbcpUtil.getConnection();
        String sql = "SELECT d.Did, d.Dname FROM movie m inner join r_dir_mov r inner join director d where M.mid = r.mid and r.Did = d.Did and M.mid = ?";

        pStat = conn.prepareStatement(sql);
        pStat.setInt(1, mid);
        res = pStat.executeQuery();

        List<Director> directorList = new ArrayList<>();
        while(res.next()){
            Director director = new Director();
            director.setDid(res.getInt(1));
            director.setName(res.getString(2));
            directorList.add(director);
        }
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return directorList;
    }
}
