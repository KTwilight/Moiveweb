package service;

import dao.MovieDao;
import domain.Movie;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public class MovieService {
    private MovieDao movieDao = new MovieDao();
    public MovieService() {

    }
    public Movie selectMovieByMid(Integer mid) throws SQLException, ClassNotFoundException {
        return movieDao.selectMovieByMid(mid);
    }
    public List<Movie> selectMovieByMultiRequirement(Integer gId, Integer yearId, Integer offset) throws SQLException, ClassNotFoundException, ParseException {
        return movieDao.selectMovieByMultiRequirement(gId,yearId,offset);
    }

    public List<Movie> selectMovieByName(String name, Integer offset) throws SQLException, ClassNotFoundException {
        return movieDao.selectMovieByName(name, offset);
    }

}
