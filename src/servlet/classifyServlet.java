package servlet;

import domain.Genre;
import domain.Movie;
import extra.Year;
import service.GenreService;
import service.MovieService;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/classify")
public class classifyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public classifyServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MovieService movieService = new MovieService();
        GenreService genreService = new GenreService();
        Integer gid = Integer.parseInt(request.getParameter("gId"));
        Integer yearId = Integer.parseInt(request.getParameter("yearId"));
        Integer offset = Integer.parseInt(request.getParameter("offset"));
        List<Genre> genreList = new ArrayList<>();
        List<Year> yearList = new ArrayList<>();
        List<Movie> movieList = new ArrayList<>();
        genreList.add(new Genre(0,"全部"));
        try {
            genreList.addAll(genreService.selectAllGenre());
            movieList = movieService.selectMovieByMultiRequirement(gid, yearId, offset);
        } catch (SQLException | ClassNotFoundException | ParseException throwable) {
            throwable.printStackTrace();
        }
        for(int i = 0; i < 7;i++){
            try {
				yearList.add(new Year((Integer)i));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        request.setAttribute("genreList", genreList);
        request.setAttribute("yearList", yearList);
        request.setAttribute("pageGId", gid);
        request.setAttribute("pageYearId", yearId);
        request.setAttribute("pageOffset", offset);
        request.setAttribute("nextOffset", offset + 8);
        request.setAttribute("lastOffset", offset - 8);
        request.setAttribute("movieList", movieList);
        request.getRequestDispatcher("movie_classify.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}