/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;


public class database {
  private static database instance = null;
  private Connection connection; 
   
  
  public database(){
    
}
    
  public static database getInstance(){
      if(instance == null){
	instance = new database();
	}
    return instance;
  }
     
  public Connection getConnection() {
      
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Properties props = new Properties();        
        props.setProperty("user", "root");
        props.setProperty("password", "anupam");
        connection = DriverManager.getConnection(  
        "jdbc:mysql://localhost:3306/db_csun_club",props);
        System.out.println("Successfull");
        } 
        catch (SQLException ex) {
            System.out.println("Error Occured: " + ex);
            connection = null;
        } 
        catch (ClassNotFoundException ex) {
          Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
      }
    
    return connection;      
  }
  
  
  public void close(){
    try {
	connection.close();
	} catch(SQLException e) {
	// TODO Auto-generated catch block
	
	}
	
    }
  
  
 
}



