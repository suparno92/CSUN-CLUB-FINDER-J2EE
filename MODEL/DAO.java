/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.simple.JSONObject;

public class DAO {
    
  
  private user user;
  private clubs userclub;
  private final Connection con;
         
   public DAO(){
     con = database.getInstance().getConnection();
       
    }
  public boolean addUser(int club_id, String email, String password,String fname,String lname) throws NoSuchAlgorithmException{
       boolean useradded = false;  
              
        String hashedPassword = PasswordAuth.createPass(password);
        try{  
           
            String query = "Insert into user(hashedPassword,club_id,email,fname,lname)"
            + " values (?, ?, ?, ?, ?)";
           try (PreparedStatement preparedStmt = con.prepareStatement(query)) {
                preparedStmt.setString(1, hashedPassword);
                preparedStmt.setInt(2, club_id);
                preparedStmt.setString(3, email);
                preparedStmt.setString(4, fname);
                preparedStmt.setString(5, lname);
               
               
               if(preparedStmt.executeUpdate() > 0){
                   useradded = true;                   
               }
            }
           
         
                  
        }catch(SQLException e){ System.out.println(e); 
                 database.getInstance().close();} 
          
      return useradded;
    
  }
  public JSONObject getGps(){
      
      JSONObject json = new JSONObject();
       try{  
            String query = "Select *  from gps";
            PreparedStatement stmt = con.prepareStatement(query); 
           
            ResultSet rs = stmt.executeQuery();
            
            while( rs.next()){
             JSONObject json2 =  new JSONObject();
             json2.put(rs.getString("lattitude"),rs.getString("longitude"));
             json.put(rs.getInt("gps_id"), json2);

            }
 
          rs.close();
          stmt.close(); 
         
        }catch(SQLException e){ System.out.println(e);} 
      
    return json;
  }
  
    public HashMap getLocation(){
      HashMap hm = new HashMap();
      
       try{  
            String query = "Select *  from gps";
            PreparedStatement stmt = con.prepareStatement(query); 
           
            ResultSet rs = stmt.executeQuery();
            
            while( rs.next()){
             
             hm.put(rs.getInt("gps_id"),rs.getString("building_name"));

            }
 
          rs.close();
          stmt.close(); 
         
        }catch(SQLException e){ System.out.println(e);} 
      
    return hm;
  }
  
  public clubs getUserClub(){
      return userclub;
  }
  
  public boolean updateClub(String title, String description, int club_id){
       boolean status = false;
     
        String query = "update club set name = ?, description = ?"
            + " where club_id = ?";
           try (PreparedStatement preparedStmt = con.prepareStatement(query)) {
                preparedStmt.setString(1, title);
                preparedStmt.setString(2, description);
                preparedStmt.setInt(3, club_id);
              
               System.out.println("adding url");
                  
               if(preparedStmt.executeUpdate() > 0){
                   status = true;   
                    System.out.println("added club update");
                  
                     
               }
            
           
        }catch(SQLException e){ System.out.println(e); 
                 database.getInstance().close();} 
     
     
     return status;
  }
  
   public boolean changeLocation(int new_location, int club_id){
     boolean status = false;
          
        
        String query = "update club set gps_id = ?"
            + " where club_id = ?";
           try (PreparedStatement preparedStmt = con.prepareStatement(query)) {
                preparedStmt.setInt(1, new_location);
                preparedStmt.setInt(2, club_id);
              
               System.out.println("setting location");
                  
               if(preparedStmt.executeUpdate() > 0){
                   status = true;   
                    System.out.println("added location");
                  
                     
               }
            
           
        }catch(SQLException e){ System.out.println(e); 
                 database.getInstance().close();} 
     
     
     return status;
  }
  
  public boolean changeLogo(String logo_url, int club_id){
     boolean status = false;
     
      
        
        String query = "update club set logo_url = ?"
            + " where club_id = ?";
           try (PreparedStatement preparedStmt = con.prepareStatement(query)) {
                preparedStmt.setString(1, logo_url);
                preparedStmt.setInt(2, club_id);
              
               System.out.println("adding url");
                  
               if(preparedStmt.executeUpdate() > 0){
                   status = true;   
                    System.out.println("added url");
                  
                     
               }
            
           
        }catch(SQLException e){ System.out.println(e); 
                 database.getInstance().close();} 
     
     
     return status;
  }
  
    public boolean changeVideo(String video_url, int club_id){
     boolean status = false;
     
      
        
        String query = "update club set video_url = ?"
            + " where club_id = ?";
           try (PreparedStatement preparedStmt = con.prepareStatement(query)) {
                preparedStmt.setString(1, video_url);
                preparedStmt.setInt(2, club_id);
              
               System.out.println("adding url");
                  
               if(preparedStmt.executeUpdate() > 0){
                   status = true;   
                    System.out.println("added url");
                  
                     
               }
            
           
        }catch(SQLException e){ System.out.println(e); 
                 database.getInstance().close();} 
     
     
     return status;
  }
  
  public user getUser() {
        return user;
    }
  public boolean addEvent(int club_id,String title, String date,String description,String room_no, String time ){
      boolean status = false;
      
      
            String query = "Insert into meeting_detail(club_id,title,date,description, room_no, time)"
            + " values (?, ?, ?, ?, ?, ?)";
           try (PreparedStatement preparedStmt = con.prepareStatement(query)) {
                preparedStmt.setInt(1, club_id);
                preparedStmt.setString(2, title);
                preparedStmt.setString(3, date);
                preparedStmt.setString(4, description);
                preparedStmt.setString(5, room_no);
                preparedStmt.setString(6, time);
               
                  
               if(preparedStmt.executeUpdate() > 0){
                   status = true;   
                     
               }
            
           
        }catch(SQLException e){ System.out.println(e); 
                 database.getInstance().close();} 
      
      
      
   return status;
  }
  
    
  public boolean checkUser(String email, String password){
     boolean status = false;
        
        
        try{  
            
            String query = "Select *  from user where email = ? ";
            PreparedStatement stmt = con.prepareStatement(query); 
            stmt.setString(1, email);
            ResultSet rs=stmt.executeQuery();
            
            if( rs.next()){
                
                if(BCrypt.checkpw(password, rs.getString("hashedPassword"))){
                    

                    this.user = new user(rs.getString("fname"),rs.getString("lname"),rs.getString("email"),rs.getInt("user_id"),rs.getInt("club_id"));
                    status = true;
                    
                    
                }
            }
            
          
    
         
          rs.close();
          stmt.close(); 
         
        }catch(SQLException e){ System.out.println(e);} 
                 
      
      return status;
  }
  
  public String getClubName(int club_id){
     String clubname = "none";
        
        
        try{  
            
            String query = "Select *  from club where club_id = ? ";
            PreparedStatement stmt = con.prepareStatement(query); 
            stmt.setInt(1, club_id);
            ResultSet rs=stmt.executeQuery();
            
            if( rs.next()){
       
                    clubname  = rs.getString("name");
          
            }
          
          rs.close();
          stmt.close(); 
         
        }catch(SQLException e){ System.out.println(e);} 
                 
      
      return clubname;
  }
  
  public String getLocationName(int club_id){
     String clubname = "none";
        
        
        try{  
            
            String query = "Select building_name from club,gps where club_id = ? and gps.gps_id=club.gps_id";
            PreparedStatement stmt = con.prepareStatement(query); 
            stmt.setInt(1, club_id);
            ResultSet rs=stmt.executeQuery();
            
            if( rs.next()){
       
                    clubname  = rs.getString("building_name");
          
            }
          
          rs.close();
          stmt.close(); 
         
        }catch(SQLException e){ System.out.println(e);} 
                 
      
      return clubname;
  }
  
  
  
  
  
  public boolean setClub(int club_id){
      boolean status = false;
        
        
        try{  
       
            String query2 = "Select *  from club where club_id = ? ";
            PreparedStatement stmt2 = con.prepareStatement(query2); 
            stmt2.setInt(1,club_id);
            ResultSet rs2=stmt2.executeQuery();
            System.out.println("PRE - club data");
            
            if( rs2.next()){
                    status = true;
                    System.out.println("getting club data");
                    this.userclub = new clubs(rs2.getInt("club_id"),rs2.getString("name"),rs2.getString("description"),rs2.getString("video_url"),rs2.getString("logo_url"),rs2.getInt("gps_id"));
            
            }
            
    
          
          rs2.close();
          stmt2.close();
        }catch(SQLException e){ System.out.println(e);} 
                 
      
      return status;
  }
   
 
   
  public ArrayList<eventInfo> getEventInfo(int club_id){
      ArrayList<eventInfo> eventARRAY;
        eventARRAY = new ArrayList();
       
        
        try{  
        
        Statement stmt=con.createStatement();  
        ResultSet rs=stmt.executeQuery("select * from meeting_detail where club_id = " + club_id);
        
        while(rs.next())  {
            int id = Integer.parseInt(rs.getString("meeting_id"));
            
         
        eventARRAY.add(new eventInfo(id,rs.getString("title"),rs.getString("date"),rs.getString("time"),rs.getString("room_no"),rs.getString("description")));
         }
    
         
          rs.close();
          stmt.close();        
        }catch(Exception e){ System.out.println(e);} 
                 
      
      return eventARRAY;
  } 
   
  
  public boolean removeEvent(int meeting_id){
       boolean status = false;
       
           
        
           try 
              {
              
                String query = "delete from meeting_detail where meeting_id= ?";
                PreparedStatement preparedStmt = con.prepareStatement(query);
                preparedStmt.setInt(1, meeting_id);
                                   
               
               if(preparedStmt.executeUpdate() > 0){
                   status = true;   
                 
               }
            
          
                  
        }catch(SQLException e){ System.out.println(e); 
                 database.getInstance().close();}
      
      
      return status;
  }
  public ArrayList<department> getDepartment(){
      ArrayList<department> arr = new ArrayList();  
         
        try{  
         
              if(con!=null){
                Statement stmt = con.createStatement();

                ResultSet rs = stmt.executeQuery("select * from department"); 
                while(rs.next())  {   arr.add(new department(rs.getString("name"),rs.getInt("dept_id"),con ));
                }
              }
              
              
                  
        }catch(SQLException e){ System.out.println(e);} 
          
      return arr;
  }
  
  public void connectionClose(){
     database.getInstance().close();
  }
 
   
}
