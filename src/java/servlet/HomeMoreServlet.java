/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Quiz;
import model.Users;

/**
 *
 * @author Dell
 */
@WebServlet(name = "HomeMoreServlet", urlPatterns = {"/HomeMoreServlet"})
public class HomeMoreServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeMoreServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeMoreServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //  processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("Action");
        PrintWriter out = response.getWriter();
        QuizDAO qDAO = new QuizDAO();
        Quiz q = new Quiz();
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        if (action.equals("Recommend")) {
           if (user != null) {
            if (qDAO.getRandomQuiz(user.getUser_id()).isEmpty()) {
                List<Quiz> listRandomQuiz2 = qDAO.getRandomQuiz2();
                request.setAttribute("quizList", listRandomQuiz2);
            } else {
                List<Quiz> listRandomQuiz = qDAO.getRandomQuiz(user.getUser_id());
                request.setAttribute("quizList", listRandomQuiz);
            }
        } else {
            List<Quiz> listRandomQuiz = qDAO.getRandomQuiz2();
            request.setAttribute("quizList", listRandomQuiz);
        }
        } else {
            List<Quiz> listAllQuiz = qDAO.getAllQuiz();
            request.setAttribute("quizList", listAllQuiz);
        }
        request.setAttribute("Action", action);
        request.getRequestDispatcher("HomeMore.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
