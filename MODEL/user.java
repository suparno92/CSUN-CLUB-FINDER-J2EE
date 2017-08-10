/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


public class user {
    
    private String firstname;
    private String lastname;
    private int ID; 
    private int club_id;    
    private String email; 

    
     
    
    public user(String firstname, String lastname, String email, int ID, int club_id){
        this.firstname = firstname;
        this.lastname = lastname;
        this.ID = ID;
        this.email = email;
        this.club_id = club_id;
              
    }

    
    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public int getID() {
        return ID;
    }

    public String getEmail() {
        return email;
    }

    public int getClub_id() {
        return club_id;
    }
    
    
    
}
