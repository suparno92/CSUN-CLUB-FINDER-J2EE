package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DAO;
import model.eventInfo;

@WebServlet(urlPatterns = {"/ajaxfront"})
public class MainServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        if(request.getParameterMap().containsKey("upcomming")){
            
          if(request.getSession(false).getAttribute("myuser") != null){
              int club_id = (Integer)request.getSession(false).getAttribute("club_id");
               
            PrintWriter out = response.getWriter();
                        
            DAO dao = new DAO();
            for(eventInfo eventInfo : dao.getEventInfo(club_id) ){
            out.print(" <div id=\"navo2\">\n" +
         
                        "      <ul class=\"nav navbar-nav navbar-left\">\n" +
                        "        <h3 class=\"section-title\">" + eventInfo.getTitle()  + "</h3>\n" +
                        "      </ul>\n" +
            
                        "      <ul class=\"nav navbar-nav navbar-right\">\n" +
                        "        <div class=\"btn-group\">\n" +
                        "          <button type=\"button\" class=\"btn white dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n" +
                        "           Action &nbsp<span class=\"caret\"></span>\n" +
                        "          </button>\n" +
                        "          <ul class=\"dropdown-menu\">\n" +
                        "            <li><a href=\"#\" onclick=\"edit(this)\" id=\"" + eventInfo.getID() + "\" >Edit</a></li>\n" +
                        "            <li role=\"separator\" class=\"divider\"></li>\n" +
                        "            <li><a href=\"#\" onclick=\"deletepost(this)\" id=\"" + eventInfo.getID() + "\" >Delete</a></li>\n" +
                        "          </ul>\n" +
                        "        </div>\n" +
                        "      </ul>\n" +
                        "    </div>\n" +
                        "    <div id=\"navo2-in\">\n" +
                        "         <h4><span class=\"lightg\" > Event Date: </span>" + eventInfo.getDate() + " <span class=\"lightg\" >Time:</span> " + eventInfo.getTime() + " <span class=\"lightg\" >Room No:</span> " + eventInfo.getRoom_no() + "<br><br>\n<span class=\"des\" >" + eventInfo.getDescription() +
                        "</span> \n" +
                        "         </h4>\n" +
                        "    </div>");
        
                 }
            dao.connectionClose();
        }
        }
        if(request.getParameterMap().containsKey("map")){
            
     
              int club_id = Integer.parseInt(request.getParameter("map"));
               System.out.print("map id" + club_id);
            PrintWriter out = response.getWriter();
            out.print("<div id=\"info_container\">");
            DAO dao = new DAO();
            out.print("<div><h2>" + dao.getClubName(club_id) + "</h2> </div>" );
            for(eventInfo eventInfo : dao.getEventInfo(club_id) ){
            out.print("<div id=\"navo2\">\n" +
         
                       
                        "        <h3>" + eventInfo.getTitle()  + "</h3>\n" +
                       
            
                        "    </div>\n" +
                        "    <div id=\"navo2-in\">\n" +
                        "         <h5><span class=\"lightg\" > Date/Time </span><span class=\"lightg-in\" >" + eventInfo.getDate() + "<span class=\"lightg\" > at </span>"+eventInfo.getTime()+ "</span><span class=\"lightg\" ><br>Location </span><span class=\"lightg-in\"> " + eventInfo.getRoom_no() + "</span><br><h5 class=\"des\">" + eventInfo.getDescription() +
                        "</h5> \n" +
                        "         </h5>\n" +
                        "    </div>");
        
                 }
             out.print("</div>");
            dao.connectionClose();
    
        }
        
        
        
        if(request.getParameterMap().containsKey("addevent")){
            
            String title = request.getParameter("title");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String description = request.getParameter("description");
            String room_no = request.getParameter("room_no");
            
            String regex = "<script(?:[^>]*src=['\"]([^'\"]*)['\"][^>]*>|[^>]*>([^<]*)</script>)";
            Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE | Pattern.DOTALL);
            
            Matcher match = pattern.matcher(description);
            description = match.replaceAll("");
            
            match = pattern.matcher(title);
            title = match.replaceAll("");
            
            match = pattern.matcher(room_no);
            room_no = match.replaceAll("");
                      
             
            int club_id = (Integer) request.getSession(false).getAttribute("club_id");
            if (description.length() < 301 && room_no.length() < 10 ){
             
                DAO dao = new DAO();
                if(dao.addEvent(club_id,title,date,description,room_no, time)){
                
                   response.setContentType("text/html;charset=UTF-8");
                   response.sendRedirect(request.getContextPath() + "/profile");
                  dao.connectionClose();
                }
                
            }
         }
        
        if(request.getParameterMap().containsKey("new_event")){
            
            String title = request.getParameter("title_new");
            String description = request.getParameter("brief_new");
        
            String regex = "<script(?:[^>]*src=['\"]([^'\"]*)['\"][^>]*>|[^>]*>([^<]*)</script>)";
            Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE | Pattern.DOTALL);
            
            Matcher match = pattern.matcher(description);
            description = match.replaceAll("");
            
            match = pattern.matcher(title);
            title = match.replaceAll("");
            
            DAO dao = new DAO();
            int club_id = (Integer) request.getSession(false).getAttribute("club_id");
            if (description.length() < 301 ){
                if(dao.updateClub(title, description, club_id)){
                   HttpSession session = request.getSession(false);
                   dao.setClub(club_id);
                   session.setAttribute("club_name", dao.getUserClub().getName()); 
                   session.setAttribute("myclub", dao.getUserClub());
                }
                dao.connectionClose();
                
            }
        }
        
        
        if(request.getParameterMap().containsKey("login")){
            
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            if (email.length() < 31 && password.length() < 15 ){
                
                DAO dao = new DAO();
                if (dao.checkUser(email,password)){
                    dao.setClub(dao.getUser().getClub_id());
                    HttpSession session = request.getSession();
                    
                    session.setAttribute("myuser", dao.getUser());
                    session.setAttribute("club_name", dao.getUserClub().getName());
                    session.setAttribute("club_id", dao.getUser().getClub_id());
                    session.setAttribute("myclub", dao.getUserClub());
                    
                    response.setContentType("text/html;charset=UTF-8");
                  
                    response.sendRedirect(request.getContextPath() + "/");
                }
                else {
                   response.setContentType("text/html;charset=UTF-8");
                    response.sendRedirect(request.getContextPath() + "/Search");
                }
                 dao.connectionClose();
                
                
            }
            
        }
        
        
        if(request.getParameterMap().containsKey("register")){
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int club_id = Integer.parseInt(request.getParameter("club_id"));
            if (email.length() < 31 && password.length() < 15 ){
                DAO dao = new DAO();
                try {
                    if(dao.addUser(club_id, email, password, "suparno", "samanta")){
                       
                        dao.setClub(club_id);         
                       }
    
                    } catch (NoSuchAlgorithmException ex) {
                    Logger.getLogger(MainServlet.class.getName()).log(Level.SEVERE, null, ex);
                     }
                dao.connectionClose();
                response.setContentType("text/html;charset=UTF-8");
                response.sendRedirect(request.getContextPath() + "/");
                
            }
            
        }
        
           if(request.getParameterMap().containsKey("new_location")){
           int new_location = Integer.parseInt(request.getParameter("new_location"));
         
           int club_id = (Integer) request.getSession(false).getAttribute("club_id");
            DAO dao = new DAO();
            dao.changeLocation(new_location, club_id);
            dao.connectionClose();
            System.out.println("location = " + new_location);
           
               
            response.setContentType("text/html;charset=UTF-8");
            response.sendRedirect(request.getContextPath() + "/profile");
                
            
            
        }
        
        if(request.getParameterMap().containsKey("gps_request")){
            
            response.setContentType("application/json");
            response.setCharacterEncoding("utf-8");
            PrintWriter out = response.getWriter();
            
            DAO dao = new DAO(); 
            out.print(dao.getGps().toString());
            dao.connectionClose();
        }
        
        
        
        if(request.getParameterMap().containsKey("delete_meeting_id")){
            
            int meeting_id =  Integer.parseInt(request.getParameter("delete_meeting_id"));
           
            int club_id = (Integer) request.getSession(false).getAttribute("club_id");
           
                
                DAO dao = new DAO(); 
                if(dao.removeEvent(meeting_id)){
                PrintWriter out = response.getWriter();
                    
                    for(eventInfo eventInfo : dao.getEventInfo(club_id) ){
                    out.print(" <div id=\"navo2\">\n" +
         
                        "      <ul class=\"nav navbar-nav navbar-left\">\n" +
                        "        <h3>" + eventInfo.getTitle() + "</h3>\n" +
                        "      </ul>\n" +
            
                        "      <ul class=\"nav navbar-nav navbar-right\">\n" +
                        "        <div class=\"btn-group\">\n" +
                        "          <button type=\"button\" class=\"btn white dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n" +
                        "           Action &nbsp<span class=\"caret\"></span>\n" +
                        "          </button>\n" +
                        "          <ul class=\"dropdown-menu\">\n" +
                        "            <li><a href=\"#\" onclick=\"edit(this)\" id=\"" + eventInfo.getID() + "\" >Edit</a></li>\n" +
                        "            <li role=\"separator\" class=\"divider\"></li>\n" +
                        "            <li><a href=\"#\" onclick=\"deletepost(this)\" id=\"" + eventInfo.getID() + "\" >Delete</a></li>\n" +
                        "          </ul>\n" +
                        "        </div>\n" +
                        "      </ul>\n" +
                        "    </div>\n" +
                        "    <div id=\"navo2-in\">\n" +
                        "          <h4><span class=\"lightg\" > Event Date: </span>" + eventInfo.getDate() + " <span class=\"lightg\" >Time:</span> " + eventInfo.getTime() + " <span class=\"lightg\" >Room No:</span> " + eventInfo.getRoom_no() + "<br><br>\n<span class=\"des\" >" + eventInfo.getDescription() +
                        " \n" +
                        "         </h4>\n" +
                        "    </div>");
        
                 }
                }
                 dao.connectionClose();
                
        
         }
         
        
        
        
         
        
        
        
        if(request.getParameterMap().containsKey("logout") ){
            
              
            HttpSession session = request.getSession(false);
            session.invalidate();  
            response.sendRedirect(request.getContextPath() + "/logout");
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
