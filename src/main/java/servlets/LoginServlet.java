
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    
    
    

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    
    String[] base = new String[2];
    base[0] = "Juan";
    base[1] = "juan123";
    
    String usuario = request.getParameter("usuario");
    String contra = request.getParameter("contra");
    
    if (usuario.equals(base[0]) && contra.equals(base[1])) {
        // Almacenar el nombre de usuario en la sesión
        request.getSession().setAttribute("usuario", usuario);
        response.sendRedirect("inicio.jsp");
    } else {
        response.sendRedirect("Login.jsp");
    }
}


  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
