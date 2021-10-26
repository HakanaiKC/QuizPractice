/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ExamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.ExamReview;
import model.Option;
import model.Question;
import model.Users;

/**
 *
 * @author Dell
 */
@WebServlet(name = "ExamResultServlet", urlPatterns = {"/ExamResultServlet"})
public class ExamResultServlet extends HttpServlet {

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
            out.println("<title>Servlet ExamResultServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ExamResultServlet at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String exam_id = request.getParameter("exam_id");
        ExamDAO dao = new ExamDAO();
        ExamReview examReview = dao.getExamById(Integer.parseInt(exam_id));
        List<Question> listQuesInExam = dao.getQuesInExam(Integer.parseInt(exam_id));
        request.setAttribute("examReview", examReview);
        request.setAttribute("listQues", listQuesInExam);
        request.getRequestDispatcher("ReviewQuiz.jsp").forward(request, response);

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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        ExamDAO dao = new ExamDAO();
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("userSeisson");
        String quiz_id = request.getParameter("quiz_id");
        String dateNow = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        try {
            String[] listQues = request.getParameterValues("listQues");
            String[] listOption = request.getParameterValues("listOption");
            String[] listChoose = request.getParameterValues("listChoose");
            PrintWriter out = response.getWriter();
            if (listChoose == null) {
                for (int i = 0; i < listOption.length; i++) {
                    listOption[i] += "-0";
                }
            } else {
                for (int i = 0; i < listOption.length; i++) {
                    boolean check = false;
                    for (int j = 0; j < listChoose.length; j++) {
                        if (listOption[i].substring(0, listChoose[j].length()).equals(listChoose[j])) {
                            check = true;
                            break;
                        }
                    }
                    if (check) {
                        listOption[i] += "-1";
                    } else {
                        listOption[i] += "-0";
                    }
                }
            }

            List<Option> optionReview = dao.optionReview(listOption);
            List<Question> questionReview = dao.questionReview(listQues, optionReview);
            int numOfCorrect = dao.numOfCorrect(questionReview);
            float mark = (float) numOfCorrect / listQues.length;
            mark = (float) Math.round(mark * 1000) / 100;
            dao.addExam(user.getUser_id(), quiz_id, mark, numOfCorrect, listQues.length, dateNow, "");
            int exam_id = dao.getCurentExamID(user.getUser_id(), quiz_id);
            dao.addQuesExam(exam_id, questionReview);
            dao.addOptionExam(exam_id, optionReview);
        } catch (Exception e) {
        }
        response.sendRedirect("ListExamServlet?quiz_id=" + quiz_id);
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
