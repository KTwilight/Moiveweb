package test;

import java.sql.SQLException;
import dao.CommentDao;

public class test {

    public static void main(String[] args) throws ClassNotFoundException, SQLException{
    	CommentDao commentDao = new CommentDao();
    	commentDao.insertComment(1, "好耶");
    }
}