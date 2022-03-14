package service;

import dao.GenreDao;
import domain.Genre;

import java.sql.SQLException;
import java.util.List;

public class GenreService {
    private GenreDao genreDao = new GenreDao();
    public List<Genre> selectAllGenre() throws SQLException, ClassNotFoundException{
        return genreDao.selectAllGenre();
    }
    public List<Genre> selectGenreByMid(Integer mid) throws SQLException, ClassNotFoundException {
    	return genreDao.selectGenreByMid(mid);
    }
}
