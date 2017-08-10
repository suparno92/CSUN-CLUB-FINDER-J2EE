/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
public class clubs {    
    private String name;
    private String brief;
    private String videoLink;
    private String logo_url;
    private int club_id;
    private int gps_id;
    
    public clubs(int club_id, String name, String brief,String video_url, String logo_url, int gps_id){
          this.name = name; 
          this.brief = brief;
          this.logo_url = logo_url;
          this.club_id = club_id;
          this.gps_id = gps_id;
          this.videoLink = video_url;
      }
    public void setLogo_url(String logo_url) {
        this.logo_url = logo_url;
    }    
    public String getLogo_url() {
        return logo_url;
    }   
    public String getBrief() {
        return brief;
    }
    public String getName() {
        return name;
    }
    public String getVideoLink() {
        return videoLink;
    }
    public int getClub_id() {
        return club_id;
    }
    public int getGps_id() {
        return gps_id;
    }
  
}
