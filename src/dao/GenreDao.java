package dao;

import domain.Genre;
import util.DbcpUtil;
import util.JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GenreDao {
    public GenreDao() {

    }
    public List<Genre> selectGenreByMid(Integer mid) throws SQLException, ClassNotFoundException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;
        conn = DbcpUtil.getConnection();
        String sql = "SELECT g.Gid, g.Gtype FROM movie m inner join r_gen_mov r inner join genre g where M.mid = r.mid and r.gid = g.gid and M.mid = ?";

        pStat = conn.prepareStatement(sql);
        pStat.setInt(1, mid);
        res = pStat.executeQuery();

        List<Genre> genreList = new ArrayList<>();
        while(res.next()){
            Genre genre = new Genre();
            genre.setGid(res.getInt(1));
            genre.setName(res.getString(2));
            genreList.add(genre);
        }
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return genreList;
    }

    public List<Genre> selectGenreByGid(Integer gid) throws SQLException, ClassNotFoundException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;
        conn = DbcpUtil.getConnection();
        String sql = "SELECT * FROM ? genre WHERE Gid = ?";

        pStat = conn.prepareStatement(sql);
        pStat.setInt(1, gid);
        res = pStat.executeQuery();

        List<Genre> genreList = new ArrayList<>();
        while(res.next()){
            Genre genre = new Genre();
            genre.setGid(res.getInt(1));
            genre.setName(res.getString(2));
            genreList.add(genre);
        }
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return genreList;
    }

    public List<Genre> selectAllGenre() throws SQLException, ClassNotFoundException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;
        conn = DbcpUtil.getConnection();
        String sql = "SELECT * FROM genre";

        pStat = conn.prepareStatement(sql);
        res = pStat.executeQuery();

        List<Genre> genreList = new ArrayList<>();
        while(res.next()){
            Genre genre = new Genre();
            genre.setGid(res.getInt(1));
            genre.setName(res.getString(2));
            genreList.add(genre);
        }
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return genreList;
    }
}
