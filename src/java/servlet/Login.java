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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;

/**
 *
 * @author nxhai
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
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
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("email")) {
                request.setAttribute("email", o.getValue());
            }
            if (o.getName().equals("pass")) {
                request.setAttribute("pass", o.getValue());
            }
            if (o.getName().equals("remember")) {
                request.setAttribute("remember", o.getValue());
            }
        }
        request.getRequestDispatcher("Login.jsp").forward(request, response);
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
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String remember = request.getParameter("remember");

        UsersDAO ud = new UsersDAO();
        Users u = ud.getUsers(email, password);
        if (u == null) {
            request.setAttribute("messageInvalidEmail_Pass", "invalid email or password");
            request.getRequestDispatcher("Login.jsp").forward(request, response);

        } else {
            if (u.getRole_id() ==10) {
            request.setAttribute("messageInvalidEmail_Pass", "Your account has been banned. Please contact us via email: hakanai2020@gmail.com for support");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
            HttpSession session = request.getSession();
            session.setAttribute("userSeisson", u);

            Cookie cookieEmail = new Cookie("email", email);
            Cookie cookiePass = new Cookie("pass", password);
            Cookie cookieRemember = new Cookie("remember", remember);
          

            if (remember != null) {
                cookieEmail.setMaxAge(60 * 60 * 24);
                cookiePass.setMaxAge(60 * 60 * 24);
                cookieRemember.setMaxAge(60 * 60 * 24);
            } else {
                cookieEmail.setMaxAge(0);
                cookiePass.setMaxAge(0);
                cookieRemember.setMaxAge(0);
            }
            response.addCookie(cookieEmail);//luu pass va email len trinh duyet
            response.addCookie(cookiePass);
            response.addCookie(cookieRemember);
            request.getRequestDispatcher("Home").forward(request, response);
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
