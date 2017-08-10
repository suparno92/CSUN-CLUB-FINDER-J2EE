/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author suparno92
 */
public final class department {
    
    private String name;
    private int ID;
    private ArrayList<clubs> c;
    private int badge;
   

public department(String name, int id, Connection con){
    this.name = name;
    c = new ArrayList();
    this.ID = id;

        try{         
        
        Statement stmt=con.createStatement();  
        ResultSet rs=stmt.executeQuery("select * from club where dept_id=" + this.ID);
        
        while(rs.next())  {
            if(rs.getString("logo_url") == null){
               
              this.c.add(new clubs(rs.getInt("club_id"),rs.getString("name"),rs.getString("description"),rs.getString("video_url"),"uploads/default.jpg",rs.getInt("gps_id")));  
            }else{
            this.c.add(new clubs(rs.getInt("club_id"),rs.getString("name"),rs.getString("description"),rs.getString("video_url"),rs.getString("logo_url"),rs.getInt("gps_id")));
            }
         }
        rs=stmt.executeQuery("SELECT COUNT(club.club_id) as number FROM club,department,meeting_detail where department.dept_id = club.dept_id and club.dept_id ="+ id +" and meeting_detail.club_id = club.club_id  and date between now() and date_add(now(),INTERVAL 1 WEEK)");
        if(rs.next()){
          this.badge = rs.getInt("number");
        }      
        
        
    
        
          rs.close();
          stmt.close();        
        }catch(SQLException e){ System.out.println(e);} 
    
}

   public String getName() {
        return name;
    }

    public ArrayList<clubs> getC() {
        return c;
    }

    public int getBadge() {
        return badge;
    }
    


}
