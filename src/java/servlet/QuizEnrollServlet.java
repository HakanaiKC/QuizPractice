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
import static java.lang.Double.NaN;
import static java.lang.Double.isNaN;
import java.util.ArrayList;
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
//        HttpSession session = request.getSession();
//        Users user = (Users) session.getAttribute("userSeisson");
        Quiz quiz = dao.getQuizByID(quizId);
        List<model.Feedback> listFeeback = dao.getAllFeeback(Integer.parseInt(quizId));
//        float[] typeRate = new float[5];
//        ArrayList<Double> typeRate = new ArrayList<>(5);
        int numOfEroll = dao.countUserEnrollAQuiz(quizId);
        float avgRate = dao.avgRateOfQuiz(quizId);
        int countUserRate = dao.countUserRate(quizId);
        Users creator = udao.getUserByID(String.valueOf(quiz.getCreator_id()));
        float fiveStar = dao.countRateStars(5, quizId) / (float) countUserRate * 100;
        float fourStar = dao.countRateStars(4, quizId) / (float) countUserRate * 100;
        float threeStar = dao.countRateStars(3, quizId) / (float) countUserRate * 100;
        float twoStar = dao.countRateStars(2, quizId) / (float) countUserRate * 100;
        float oneStar = 100 - fiveStar - fourStar - threeStar - twoStar;
        int countFeedback = dao.countFeedback(quizId);
        if (isNaN(fiveStar)) fiveStar = 0;
        if (isNaN(fourStar)) fourStar = 0;
        if (isNaN(threeStar)) threeStar = 0;
        if (isNaN(twoStar)) twoStar = 0;
        if (isNaN(oneStar)) oneStar = 0;


//        PrintWriter out = response.getWriter();
//                out.println(fiveStar+" "+ fourStar+" "+ threeStar+ " "+ twoStar+" "+ oneStar);
                
//        for (int i = 5; i >0; i--) {
//             double Star = dao.countRateStars(i, quizId) / (float) countUserRate * 100;
//             if (isNaN(Star)) Star = 0;
//             typeRate.add(Star);
////             Double a = typeRate.get(i);
////            out.println(i+ " "+ a.doubleValue());
//        }
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
        request.setAttribute("oneStar", oneStar);
        request.setAttribute("listFeeback", listFeeback);
//        request.setAttribute("enroll", dao.checkEnrollmentExist(quizId, user.getUser_id()));
//        request.setAttribute("typeRate", typeRate);
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
