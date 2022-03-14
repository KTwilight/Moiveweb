package dao;

import domain.Movie;
import extra.Year;
import util.DbcpUtil;
import util.JdbcUtil;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class MovieDao {
    public MovieDao() {
    }

    public Movie selectMovieByMid(Integer mid) throws SQLException, ClassNotFoundException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;

        conn = DbcpUtil.getConnection();
        String sql = "SELECT * FROM movie WHERE mid = ?";
        pStat = conn.prepareStatement(sql);
        pStat.setInt(1, mid);
        res = pStat.executeQuery();
        Movie movie = new Movie();
        if(res.next()){
            movie.setMid(res.getInt(1));
            movie.setName(res.getString(2));
            movie.setScore(res.getFloat(3));
            movie.setPoster(res.getString(4));
            movie.setDescription(res.getString(5));
            movie.setDate(res.getDate(6));
            movie.setRatingCount(res.getInt(7));
        }
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return movie;
    }

    public List<Movie> selectMovieByMultiRequirement(Integer gId, Integer yearId, Integer offset) throws SQLException, ClassNotFoundException, ParseException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;

        conn = DbcpUtil.getConnection();
        String sql = "SELECT distinct m.Mid, m.Mname, m.Mscore, m.Mimg, m.Mdescri, m.Mdate, m.Mrating FROM movie m inner join r_gen_mov r inner join genre g where M.mid = r.mid and r.gid = g.gid ";
        if(gId != 0)
            sql += "and g.gid = ? ";
        sql += "and m.Mdate between ? and ? limit ?, 8";
        Year year = new Year(yearId);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        pStat = conn.prepareStatement(sql);
        if(gId != 0) {
            pStat.setInt(1, gId);
            pStat.setString(2,simpleDateFormat.format(year.getLowerDate()));
            pStat.setString(3,simpleDateFormat.format(year.getUpperDate()));
            pStat.setInt(4, offset);
        }
        else{
            pStat.setString(1,simpleDateFormat.format(year.getLowerDate()));
            pStat.setString(2,simpleDateFormat.format(year.getUpperDate()));
            pStat.setInt(3, offset);
        }
        System.out.println(pStat.toString());
        res = pStat.executeQuery();
        List<Movie> movieList = new ArrayList<>();
        while(res.next()){
            Movie movie = new Movie();
            movie.setMid(res.getInt(1));
            movie.setName(res.getString(2));
            movie.setScore(res.getFloat(3));
            movie.setPoster(res.getString(4));
            movie.setDescription(res.getString(5));
            movie.setDate(res.getDate(6));
            movie.setRatingCount(res.getInt(7));
            movieList.add(movie);
        }
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return movieList;
    }


    public List<Movie> selectMovieByName(String name, Integer offset) throws SQLException, ClassNotFoundException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;

        conn = DbcpUtil.getConnection();
        String sql = "SELECT * FROM movie WHERE Mname like ? limit ?, ?";
        pStat = conn.prepareStatement(sql);
        pStat.setString(1, "%"+name+"%");
        pStat.setInt(2, offset);
        pStat.setInt(3, 12);
        System.out.println(pStat.toString());
        res = pStat.executeQuery();
        List<Movie> movieList = new ArrayList<>();

        while(res.next()){
            Movie movie = new Movie();
            movie.setMid(res.getInt(1));
            movie.setName(res.getString(2));
            movie.setScore(res.getFloat(3));
            movie.setPoster(res.getString(4));
            movie.setDescription(res.getString(5));
            movie.setDate(res.getDate(6));
            movie.setRatingCount(res.getInt(7));
            movieList.add(movie);
        }
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return movieList;
    }
}

