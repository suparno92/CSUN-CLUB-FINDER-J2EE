
package controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.DAO;

/**
 *
 * @author suparno92
 */
@WebServlet(name = "mediaupload", urlPatterns = {"/mediaupload"})
@MultipartConfig(maxFileSize=1024*1024*4,      // 4MB
                 maxRequestSize=1024*1024*5)
public class mediaupload extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
         if( request.getSession(false).getAttribute("myuser") != null){
                     
            
            Part filePart = request.getPart("logo_url");            
           
            String appPath = "/var/www/html/static/uploads";                   
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
                                   
            filePart.write(appPath + File.separator + fileName);
         
            
            String mysql_url = "uploads" + File.separator + fileName;
            
            DAO dao = new DAO();
            int club_id = (Integer) request.getSession(false).getAttribute("club_id");
            if(dao.changeLogo(mysql_url,club_id)){
                if(dao.setClub(club_id)){
                
                request.getSession(false).setAttribute("myclub", dao.getUserClub());
                 response.sendRedirect(request.getContextPath() + "/profile");
                }
            }
            dao.connectionClose();
          
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
