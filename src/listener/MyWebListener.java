package listener;

import domain.Movie;
import service.MovieService;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


@WebListener
public class MyWebListener implements ServletContextListener {

    public MyWebListener() {
    }

    public void contextDestroyed(ServletContextEvent sce)  {
    }

    public void contextInitialized(ServletContextEvent sce)  {
        MovieService service = new MovieService();
        List<Movie> recommendedMovie = new ArrayList<Movie>();
        try {
            for(int i = 1; i < 9; i++){
                recommendedMovie.add(service.selectMovieByMid(i));
            }
        } catch (SQLException | ClassNotFoundException throwable) {
            throwable.printStackTrace();
        }
        sce.getServletContext().setAttribute("RecommendedMovie", recommendedMovie);
    }

}
