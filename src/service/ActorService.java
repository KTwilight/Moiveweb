package service;

import java.sql.SQLException;
import java.util.List;

import dao.ActorDao;
import domain.Actor;

public class ActorService {
	private ActorDao actorDao = new ActorDao();
	public List<Actor> selectActorByMid(Integer mid) throws SQLException, ClassNotFoundException {
		return actorDao.selectActorByMid(mid);
	}
}
