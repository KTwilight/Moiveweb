package servlet;

import domain.Movie;
import service.MovieService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/search")
public class searchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public searchServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String content = request.getParameter("content");
        System.out.println(content);
        Integer offset = Integer.parseInt(request.getParameter("offset"));
        MovieService movieService = new MovieService();
        List<Movie> movieSearch = new ArrayList<>();
        try {
            movieSearch = movieService.selectMovieByName(content, offset);
        } catch (SQLException | ClassNotFoundException throwable) {
            throwable.printStackTrace();
        }
        request.setAttribute("movieSearch", movieSearch);
        request.setAttribute("content", content);
        request.setAttribute("nextOffset", offset + 12);
        request.setAttribute("lastOffset", offset - 12);
        request.getRequestDispatcher("movie_search.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}