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
import model.Option;
import model.Question;

/**
 *
 * @author Dell
 */
@WebServlet(name = "AttemptExamServlet", urlPatterns = {"/AttemptExamServlet"})
public class AttemptExamServlet extends HttpServlet {

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
            out.println("<title>Servlet AttemptExamServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AttemptExamServlet at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
//        processRequest(request, response);
            QuizDAO dao = new QuizDAO();
        String quiz_id = request.getParameter("quiz_id");
        int numOfQues = Integer.parseInt(request.getParameter("numOfQuestion"));
        int hour = Integer.parseInt(request.getParameter("hour"));
        int minute = Integer.parseInt(request.getParameter("minute"));
        ExamDAO examdao = new ExamDAO();
        List<Question> listQuesInExam = examdao.getNQuestion(Integer.parseInt(quiz_id),numOfQues);
//        for (Question question : listQuesInExam) {
//            response.getWriter().println(question);
//        }
        request.setAttribute("hour", hour);
        request.setAttribute("minute", minute);
        request.setAttribute("listQuesInExam", listQuesInExam);
        request.setAttribute("quiz_id",quiz_id);
        request.getRequestDispatcher("TakeExam.jsp").forward(request, response);
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
