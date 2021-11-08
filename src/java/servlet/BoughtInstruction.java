/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.QuestionDAO;
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
import model.Option;
import model.Question;
import model.Quiz;
import model.Users;

/**
 *
 * @author Admin
 */
@WebServlet(name = "BoughtInstruction", urlPatterns = {"/BoughtInstruction"})
public class BoughtInstruction extends HttpServlet {

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
            out.println("<title>Servlet BoughtInstruction</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BoughtInstruction at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        QuizDAO qDAO = new QuizDAO();
        Quiz q = new Quiz();
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        String action = request.getParameter("Action");
        QuestionDAO quesDao = new QuestionDAO();
        List<Question> allQuizOfBoughtInstruction = quesDao.getQuizOfBoughtInstruction(user.getUser_id());
        request.setAttribute("AllQuizOfBoughtInstruction", allQuizOfBoughtInstruction);
        List<Option> listOp = quesDao.getBoughtOption(user.getUser_id());
        request.setAttribute("listOp", listOp);
        if (action.equals("All")) {
            List<Question> allBoughtInstruction = quesDao.getBoughtInstruction(user.getUser_id());
            request.setAttribute("AllBoughtInstruction", allBoughtInstruction);
        }
        else {
            
            List<Question> allQuestionOfQuizOfBoughtInstruction = quesDao.getQuestionOfQuizOfBoughtInstruction(user.getUser_id(),action);
            action = qDAO.getQuizNameByID(action);
            request.setAttribute("AllBoughtInstruction", allQuestionOfQuizOfBoughtInstruction);
//            out.print("Created");
        }
        request.setAttribute("Action", action);
        request.getRequestDispatcher("BoughtInstruction.jsp").forward(request, response);
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
