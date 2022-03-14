package util;
import java.sql.*;
public class JdbcUtil {
    public static void closeDb(Statement stat,ResultSet res){
        try {
            if(res != null){
                res.close();
            }

            if(stat != null){
                stat.close();
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
