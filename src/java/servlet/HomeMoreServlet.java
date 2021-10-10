/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
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
        QuizDAO qDAO = new QuizDAO();
        Quiz q = new Quiz();
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        List<Quiz> list = new ArrayList<>();
        if (action != null) {
            switch (action) {
                case "Recommend":
                    if (user != null) {
                        if (qDAO.getRandomQuiz(user.getUser_id()).isEmpty()) {
                            list = qDAO.getRandomQuiz2();
                        } else {
                            list = qDAO.getRandomQuiz(user.getUser_id());
                        }
                    } else {
                        list = qDAO.getRandomQuiz2();
                    }
                    break;
                case "All Quiz":
                    list = qDAO.getAllQuiz();
                    break;
                default:
                    break;
            }
        }
        int size = list.size();
        int numperPage = 6;
        int numPage = size / numperPage + (size % numperPage == 0 ? 0 : 1);
        String spage = request.getParameter("page");
        int page;
        if (spage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(spage);
        }
        int start, end;
        start = (page - 1) * numperPage;
        end = Math.min(size, page * numperPage);

        List<Quiz> arr = qDAO.getQuizByPage(list, start, end);
        request.setAttribute("Action", action);
        request.setAttribute("quizList", arr);
        request.setAttribute("num", numPage);
        //     request.setAttribute("data", arr);
        request.setAttribute("page", page);
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
