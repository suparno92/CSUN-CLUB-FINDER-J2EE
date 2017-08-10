/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.security.NoSuchAlgorithmException;


public class PasswordAuth {
    
  
    public static String createPass(String password) throws NoSuchAlgorithmException 
    {
     
        String generatedSecuredPasswordHash = BCrypt.hashpw(password, BCrypt.gensalt(12));
         
     return generatedSecuredPasswordHash;
    }
    public static boolean checkUser(String password, String hashedPassword) throws NoSuchAlgorithmException 
    {
               
        boolean matched = BCrypt.checkpw(password, hashedPassword);
       
      return matched;
    }
  
    
}
