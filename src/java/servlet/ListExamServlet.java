/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ExamDAO;
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
import model.ExamReview;
import model.Users;

/**
 *
 * @author Dell
 */
@WebServlet(name = "ListExamServlet", urlPatterns = {"/ListExamServlet"})
public class ListExamServlet extends HttpServlet {

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
            out.println("<title>Servlet ListExamServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListExamServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        String quiz_id = null;
        try {
            quiz_id = request.getParameter("quiz_id");
            QuizDAO qdao = new QuizDAO();
            int numQuesOfQuiz = qdao.countQuestion(Integer.parseInt(quiz_id));
            request.setAttribute("numQuesOfQuiz", numQuesOfQuiz);
        } catch (Exception e) {
        }

        ExamDAO dao = new ExamDAO();
        List<ExamReview> list = null;
        if (quiz_id == null) {
//            response.getWriter().print(quiz_id);
            list = dao.getExamReviewByUserId(user.getUser_id());
        } else {
            list = dao.getExamReviewByQuizID(user.getUser_id(), Integer.parseInt(quiz_id));
        }
        request.setAttribute("quiz_id", quiz_id);
        request.setAttribute("listEv", list);
        request.getRequestDispatcher("QuizResult.jsp").forward(request, response);
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
