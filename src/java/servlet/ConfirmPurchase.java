/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.PaymentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Payment;
import model.Users;

/**
 *
 * @author nxhai
 */
@WebServlet(name = "ConfirmPurchase", urlPatterns = {"/ConfirmPurchase"})
public class ConfirmPurchase extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
        HttpSession session = request.getSession();
        PaymentDAO paymentDao = new PaymentDAO();
//        Users user = (Users) session.getAttribute("userSeisson");
//        int userId = user.getUser_id();
        List<Payment> listPaymentHistory = paymentDao.getAllHistoryPayment();
        request.setAttribute("paymentHistory", listPaymentHistory);
        request.getRequestDispatcher("AdminPayment.jsp").forward(request, response);
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
         HttpSession session = request.getSession();
         int paymentId = Integer.parseInt(request.getParameter("paymentId"));
          int userID = Integer.parseInt(request.getParameter("userId"));
          float getRuby = Float.parseFloat(request.getParameter("ruby"));
        PaymentDAO paymentDao = new PaymentDAO();
        paymentDao.updateStatusPurchaseRuby(paymentId);
        paymentDao.updateRubyAfterConfirm(getRuby, userID);
        List<Payment> listPaymentHistory = paymentDao.getAllHistoryPayment();
        request.setAttribute("paymentHistory", listPaymentHistory);
        request.getRequestDispatcher("AdminPayment.jsp").forward(request, response);
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
