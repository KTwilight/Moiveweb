package service;

import dao.CommentDao;
import domain.Comment;

import java.sql.SQLException;
import java.util.List;

public class CommentService {
    private CommentDao commentDao = new CommentDao();
    public List<Comment> selectCommentByMid(Integer mid) throws SQLException, ClassNotFoundException {
        return commentDao.selectCommentByMid(mid);
    }
    public int insertComment(Integer mid, String detail) throws ClassNotFoundException, SQLException {
    	return commentDao.insertComment(mid, detail);
    }
}
