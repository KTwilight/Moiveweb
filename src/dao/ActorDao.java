package dao;

import domain.Actor;
import util.DbcpUtil;
import util.JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ActorDao {
    public ActorDao() {
    }

    public List<Actor> selectActorByMid(Integer mid) throws SQLException, ClassNotFoundException {
        Connection conn;
        PreparedStatement pStat;
        ResultSet res;
        conn = DbcpUtil.getConnection();
        String sql = "SELECT a.aid, a.aname FROM movie m inner join r_act_mov r inner join actor a where M.mid = r.mid and r.aid = a.aid and M.mid = ? limit 0,5";

        pStat = conn.prepareStatement(sql);
        pStat.setInt(1, mid);
        res = pStat.executeQuery();

        List<Actor> actorList = new ArrayList<>();
        while(res.next()){
            Actor actor = new Actor();
            actor.setAid(res.getInt(1));
            actor.setName(res.getString(2));
            actorList.add(actor);
        }
        JdbcUtil.closeDb(pStat,res);
        DbcpUtil.closeConnection(conn);
        return actorList;
    }


}
