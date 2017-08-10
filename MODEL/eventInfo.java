/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author suparno92
 */
public class eventInfo {
    private String title;
    private String time;
    private String description;
    private int ID;
    private String room_no;
    private String date;

   
    
    public eventInfo(int ID, String title,String date, String time, String room_no, String description){
      this.title = title;
      this.description = description;
      this.room_no = room_no;
      this.time = time;
      this.date = date;
      this.ID = ID;
     
  }
     public String getTime() {
        return time;
    }

    public String getDate() {
        return date;
    }

    public int getID() {
        return ID;
    }

    public String getRoom_no() {
        return room_no;
    }

    public String getDescription() {
        return description;
    }

    public String getTitle() {
        return title;
    }
    
  
  
  
}
