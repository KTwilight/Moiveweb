package servlet;

import domain.Actor;
import domain.Comment;
import domain.Director;
import domain.Genre;
import domain.Movie;
import service.ActorService;
import service.CommentService;
import service.DirectorService;
import service.GenreService;
import service.MovieService;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/showMovieDetail")
public class showMovieDetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public showMovieDetailServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int mid;
        if(!request.getParameter("mid").isEmpty())
            mid = Integer.parseInt(request.getParameter("mid"));
        else
            mid = 1;

        MovieService movieService = new MovieService();
        DirectorService directorService = new DirectorService();
        ActorService actorService = new ActorService();
        GenreService genreService = new GenreService();
        CommentService commentService = new CommentService();
        Movie movie = new Movie();
        List<Director> directorList = new ArrayList<>();
        List<Actor> actorList = new ArrayList<>();
        List<Genre> genreList = new ArrayList<>();
        List<Comment> commentList = new ArrayList<>();

        try {
			movie = movieService.selectMovieByMid(mid);
	        directorList = directorService.selectDirectorByMid(mid);
	        genreList = genreService.selectGenreByMid(mid);
	        commentList = commentService.selectCommentByMid(mid);
	        actorList = actorService.selectActorByMid(mid);
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        request.setAttribute("movie", movie);
        request.setAttribute("directorList", directorList);
        request.setAttribute("commentList", commentList);
        request.setAttribute("genreList", genreList);
        request.setAttribute("actorList", actorList);
        request.getRequestDispatcher("movie_detail.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}