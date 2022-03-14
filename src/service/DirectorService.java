package service;

import dao.DirectorDao;
import domain.Director;

import java.sql.SQLException;
import java.util.List;

public class DirectorService {
    private DirectorDao directorDao = new DirectorDao();
    public List<Director> selectDirectorByMid(Integer mid) throws SQLException, ClassNotFoundException {
        return directorDao.selectDirectorByMid(mid);
    }
}
