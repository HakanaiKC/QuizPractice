/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
@WebServlet(name = "AdminServlet", urlPatterns = {"/AdminServlet"})
public class AdminServlet extends HttpServlet {

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
            out.println("<title>Servlet AdminServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath() + "</h1>");
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
        String action = request.getParameter("Action");
         AdminDAO dao = new AdminDAO();
         HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        if (user == null || user.getRole_id()!=2) {
            request.getRequestDispatcher("Home").forward(request, response);
        }
        if (action != null) {
            switch (action) {
                case "Overview":
                   
                    List<Quiz> list = dao.getAllQuiz();
                    List<Users> listUser = dao.getUser();
                    request.setAttribute("listQuiz", list);
                    request.setAttribute("numQuiz", dao.countQuiz());
                    request.setAttribute("numUser", dao.countUser());
                    request.setAttribute("numRuby", dao.countRuby());
                    request.setAttribute("listUser", listUser);
                    request.getRequestDispatcher("AdminDashboardOverview.jsp").forward(request, response);
                    break;
                case "Statistics":
                    String thisweek = dao.numVisitorInWeek(LocalDate.now());
                    String lastweek = dao.numVisitorInWeek(LocalDate.now().minusDays(7));
                    request.setAttribute("lastweekVisit", lastweek);
                    request.setAttribute("thisweekVisit", thisweek);
                    int yearNow = Integer.parseInt(LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy")));
                    String quizInThisYear = dao.QuizCreateInYear(yearNow);
                    String quizInLastYear = dao.QuizCreateInYear(yearNow-1);
                    request.setAttribute("thisyearQuizCreated", quizInThisYear);
                    request.setAttribute("lastyearQuizCreated", quizInLastYear);
                    String moneyInThisYear = dao.MoneyInYear(yearNow);
                    String moneyInLastYear = dao.MoneyInYear(yearNow-1);
                    request.setAttribute("moneyInThisYear", moneyInThisYear);
                    request.setAttribute("moneyInLastYear", moneyInLastYear);
                    request.getRequestDispatcher("AdminDashboardStatistics.jsp").forward(request, response);
                    break;
                default:
                    break;
            }
        }
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
