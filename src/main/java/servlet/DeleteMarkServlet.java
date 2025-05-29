package servlet;

import dao.MarkDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteMark")
public class DeleteMarkServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MarkDAO markDAO;

    public void init() {
        markDAO = new MarkDAO();
    }

    // Handle GET requests (when called from a hyperlink)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");
        if (idParam != null && !idParam.isEmpty()) {
            int studentID = Integer.parseInt(idParam);
            markDAO.deleteMark(studentID);
        }
        response.sendRedirect("markdisplay.jsp");
    }

    // Optional: Handle POST if you switch to using a form
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("studentID");
        if (idParam != null && !idParam.isEmpty()) {
            int studentID = Integer.parseInt(idParam);
            markDAO.deleteMark(studentID);
        }
        response.sendRedirect("markdisplay.jsp");
    }
}
