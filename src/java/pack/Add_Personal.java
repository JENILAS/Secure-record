/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class Add_Personal extends HttpServlet {

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
    PrintWriter out = response.getWriter();
    try {           
           
              String name = request.getParameter("username");
              String mobile = request.getParameter("mobile");
              String email = request.getParameter("email");
              String address = request.getParameter("address");
              String bloodgroup = request.getParameter("bloodgroup");
              String sugarlevel = request.getParameter("sugarlevel");
              String heartbeatrate = request.getParameter("heartbeatrate");
            
            Connection con=new database().fun();
            PreparedStatement ps = con.prepareStatement("insert into personal(username,mobile,email,address,bloodgroup,sugarlevel,heartbeatrate) "
                + "values('" + name + "','" + mobile+ "','" + email + "','" + address + "','" + bloodgroup + "','" + sugarlevel + "','" + heartbeatrate + "')");
                        
                     System.out.println(ps);
            ps.executeUpdate();
          System.out.println(ps);
        out.println("<script>"
				+"alert(' Data uploaded successfully')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/Add_Insurance_Data.jsp");
		rd.include(request, response); 
	}
	catch(Exception e){
            System.out.println(e);
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
