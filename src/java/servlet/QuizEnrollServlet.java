/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.CategoryDAO;
import dao.QuizDAO;
import dao.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Quiz;
import model.Users;

/**
 *
 * @author Dell
 */
@WebServlet(name = "QuizEnrollServlet", urlPatterns = {"/QuizEnrollServlet"})
public class QuizEnrollServlet extends HttpServlet {

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
            out.println("<title>Servlet QuizEnrollServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet QuizEnrollServlet at " + request.getContextPath() + "</h1>");
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
        // processRequest(request, response);
        String quizId = request.getParameter("quizid");
        QuizDAO dao = new QuizDAO();
        CategoryDAO categoryDAO = new CategoryDAO();
        UsersDAO udao = new UsersDAO();
        Quiz quiz = dao.getQuizByID(quizId);
        int numOfEroll = dao.countUserEnrollAQuiz(quizId);
        float avgRate = dao.avgRateOfQuiz(quizId);
        int countUserRate = dao.countUserRate(quizId);
        Users creator = udao.getUserByID(String.valueOf(quiz.getCreator_id()));
        float fiveStar = dao.countRateStars(5, quizId) / (float) countUserRate *100 ;
        float fourStar = dao.countRateStars(4, quizId) / (float) countUserRate *100;
        float threeStar = dao.countRateStars(3, quizId)/ (float) countUserRate *100;
        float twoStar = dao.countRateStars(2, quizId)/ (float) countUserRate *100;
        float oneStar = 100 - fiveStar - fourStar - threeStar - twoStar;
        int countFeedback = dao.countFeedback(quizId);
        request.setAttribute("categoryNameOfQuiz", categoryDAO.getCategoryForQuiz(Integer.parseInt(quizId)));
        request.setAttribute("quiz", quiz);
        request.setAttribute("creator", creator);
        request.setAttribute("numOfEroll", numOfEroll);
        request.setAttribute("avgRate", String.format("%.1f", avgRate));
        request.setAttribute("countUserRate", countUserRate);
        request.setAttribute("fiveStar", String.format("%.2f", fiveStar));
        request.setAttribute("fourStar", String.format("%.2f", fourStar));   
        request.setAttribute("threeStar", String.format("%.2f", threeStar));
        request.setAttribute("twoStar", String.format("%.2f", twoStar));  
        request.setAttribute("countFeedback", countFeedback);
        request.setAttribute("oneStar",oneStar);
        
        request.getRequestDispatcher("QuizEnroll.jsp").forward(request, response);
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
