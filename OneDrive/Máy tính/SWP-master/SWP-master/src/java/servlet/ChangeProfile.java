/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;

/**
 *
 * @author Dell
 */
@WebServlet(name = "ChangeProfile", urlPatterns = {"/ChangeProfile"})
public class ChangeProfile extends HttpServlet {

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
            out.println("<title>Servlet ChangeName</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangeName at " + request.getContextPath() + "</h1>");
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
        //  processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        UsersDAO dao = new UsersDAO();
        String id = request.getParameter("id");
        String name = request.getParameter("fullname");
        String aboutme = request.getParameter("aboutme");
        String connect = request.getParameter("connect");
//        PrintWriter out = response.getWriter();
//        out.print(id+ " "+ name+ " "+ aboutme+ " "+ connect);
        if (name.equals("")) {
//            Users u = dao.getUserByID(id);
//            //    out.println("new: "+ u);
//            HttpSession session = request.getSession();
//            session.setAttribute("userSeisson", u);
            request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
        } else {

            dao.updateProfile(id, name,aboutme,connect);
            Users u = dao.getUserByID(id);
            //    out.println("new: "+ u);
            HttpSession session = request.getSession();
            session.setAttribute("userSeisson", u);
            request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
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
