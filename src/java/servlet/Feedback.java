/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;

/**
 *
 * @author bekim
 */
@WebServlet(name = "Feedback", urlPatterns = {"/Feedback"})
public class Feedback extends HttpServlet {

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
            out.println("<title>Servlet Feedback</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Feedback at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        QuizDAO dao = new QuizDAO();
        String action = request.getParameter("Action");
        if (action != null) {
            switch (action) {
                case "feedback":
                    String feedback = request.getParameter("feedback");
                    HttpSession session = request.getSession();
                    Users user = (Users) session.getAttribute("userSeisson");
                    int user_id = (user.getUser_id());
                    String quiz_id = request.getParameter("quizid");
//        PrintWriter out = response.getWriter();
//        out.print(feedback+""+user_id+""+quiz_id);
                    if (feedback.equals("")) {
                        request.getRequestDispatcher("QuizDetail.jsp").forward(request, response);
                    } else {
                        String datenow = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                        dao.Feedback(quiz_id, user_id, feedback,datenow);
                        request.getRequestDispatcher("QuizDetail.jsp").forward(request, response);
                    }
                    break;
                case "rate":
                    String quiz = request.getParameter("quizid");
                    String rate = request.getParameter("myField");
                    PrintWriter out = response.getWriter();
                    out.println(rate);
                    out.print(quiz);
                    break;
                default:
                    break;
            }
        }

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
