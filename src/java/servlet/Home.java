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
 * @author nxhai
 */
@WebServlet(name = "Home", urlPatterns = {"/Home"})
public class Home extends HttpServlet {

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
            QuizDAO qDAO = new QuizDAO();
            Quiz q = new Quiz();
            HttpSession session = request.getSession();
            Users user = (Users) session.getAttribute("userSeisson");
            List<Quiz> quiz = qDAO.getRecentQuiz(user.getUser_id());
            request.setAttribute("quizList", quiz);
            if (user != null) { //neu user lay ve co gia tri
                if (qDAO.getRandomQuiz(user.getUser_id()).isEmpty()) {
                    List<Quiz> listRandomQuiz2 = qDAO.getRandomQuiz2(); // neu getRandomQuiz trong thi sang GRQ2
                    request.setAttribute("randomQuiz", listRandomQuiz2);
                } else {
                    List<Quiz> listRandomQuiz = qDAO.getRandomQuiz(user.getUser_id()); //neu getRandomQuiz co du lieeu thi tra ve nó
                    request.setAttribute("randomQuiz", listRandomQuiz);
                }
            } else { // neu user lay ve bi trong
                List<Quiz> listRandomQuiz = qDAO.getRandomQuiz2();
                request.setAttribute("randomQuiz", listRandomQuiz);
            }
            request.getRequestDispatcher("Home.jsp").forward(request, response);
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
        QuizDAO qDAO = new QuizDAO();
        Quiz q = new Quiz();
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        if (user != null) {
            if (qDAO.getRandomQuiz(user.getUser_id()).isEmpty()) {
                List<Quiz> listRandomQuiz2 = qDAO.getRandomQuiz2();
                request.setAttribute("randomQuiz", listRandomQuiz2);
            } else {
                List<Quiz> quiz = qDAO.getRecentQuiz(user.getUser_id());
                request.setAttribute("quizList", quiz);
                List<Quiz> listRandomQuiz = qDAO.getRandomQuiz(user.getUser_id());
                request.setAttribute("randomQuiz", listRandomQuiz);
            }
        } else {
            List<Quiz> listRandomQuiz = qDAO.getRandomQuiz2();
            request.setAttribute("randomQuiz", listRandomQuiz);
        }
        request.getRequestDispatcher("Home.jsp").forward(request, response);
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
