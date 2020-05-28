/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import DBController.Dbconnect;
import java.sql.PreparedStatement;
import Model.Project;
import Model.Fish;
import Model.Researcher;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nadz
 */
public class Datacontroller {
    
    //Project Part
    public void addProject(Project project){
        try {
            PreparedStatement ps = Dbconnect.getps("INSERT INTO project(project_name,project_period,members) VALUES(?,?,?)");
            ps.setString(1, project.getProject_name());
            ps.setInt(2, project.getProject_period());
            ps.setString(3, project.getMembers());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Project> getAllProject(){
        List<Project> pls = new LinkedList<>();
        
        try {
            ResultSet rs = Dbconnect.getps("SELECT * FROM project").executeQuery();
            while(rs.next()){
                Project project = new Project(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4));
                pls.add(project);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public static List<Project> getAllProjectbyID(int project_id){
        List<Project> pls = new LinkedList<>();
        String sql = "SELECT * FROM project WHERE project_id = " +project_id;
        try {
            ResultSet rs = Dbconnect.getps(sql).executeQuery();
            while(rs.next()){
                Project project = new Project(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4));
                pls.add(project);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public void projectEdit(int project_id, String project_name, int project_period, String members){
        String sql = "UPDATE project set project_name = ?, project_period=?, members=?"+ "WHERE project_id=?";
        PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setString(1, project_name);
            ps.setInt(2, project_period);
            ps.setString(3,members);
            ps.setInt(4, project_id);
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        
    }
    
    public void projectDelete(int project_id){
         String sql = "DELETE FROM project WHERE project_id=?";
         PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setInt(1, project_id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    //project part end here
    //Fish Part
    
    public void addFish(Fish fish){
        try {
            PreparedStatement ps = Dbconnect.getps("INSERT INTO fish(scName,cmName,ordID,ordName,fmlyID,fmlyName,catID,	catName, fish_pic) VALUES(?,?,?,?,?,?,?,?,?)");
            ps.setString(1,fish.getScName());
            ps.setString(2,fish.getCmName());
            ps.setString(3,fish.getOrdID());
            ps.setString(4,fish.getOrdName());
            ps.setString(5,fish.getFmlyID());
            ps.setString(6,fish.getFmlyName());
            ps.setString(7,fish.getCatID());
            ps.setString(8,fish.getCatName());
            ps.setString(9,fish.getFish_pic());
        
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Fish> getAllFish(){
        List<Fish> pls = new LinkedList<>();
        
        try {
            ResultSet rs = Dbconnect.getps("SELECT * FROM fish").executeQuery();
            while(rs.next()){
                Fish fish = new Fish(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13));
                pls.add(fish);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public static List<Fish> getFishbyID(int fishID){
        List<Fish> pls = new LinkedList<>();
        String sql = "SELECT * FROM fish WHERE fishID = "+fishID;
        try {
            ResultSet rs = Dbconnect.getps(sql).executeQuery();
            while(rs.next()){
                Fish fish = new Fish(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13));
                pls.add(fish);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public void fishEdit(int fishID, String scName, String cmName, String ordID, String ordName, String fmlyID, String fmlyName, String catID, String catName, String fish_pic, String longs, String lat, String location){
        String sql = "UPDATE fish set scName=?, cmName=?, ordID=?, ordName=?, fmlyID=?, fmlyName=?, catID=?,catName=?, fish_pic=?,longs=?,lat=?,location=?"+ "WHERE fishID=?";
        PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setString(1,scName);
            ps.setString(2,cmName);
            ps.setString(3,ordID);
            ps.setString(4,ordName);
            ps.setString(5,fmlyID);
            ps.setString(6,fmlyName);
            ps.setString(7,catID);
            ps.setString(8,catName);
            ps.setString(9,fish_pic);
            ps.setString(10,longs);
            ps.setString(11,lat);
            ps.setString(12,location);
            ps.setInt(13, fishID);
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        
    }
    
    public void fishDelete(int fishID){
         String sql = "DELETE FROM fish WHERE fishID=?";
         PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setInt(1, fishID);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    //fish part end here
    
    
    //Researcher Part
    public void addResearcher(Researcher researcher){
        try {
            PreparedStatement ps = Dbconnect.getps("INSERT INTO researcher(name,institute,field,email,phoneNo,username,password) VALUES(?,?,?,?,?,?,?)");
            ps.setString(1,researcher.getName());
            ps.setString(2,researcher.getInstitute());
            ps.setString(3,researcher.getField());
            ps.setString(4,researcher.getEmail());
            ps.setString(5,researcher.getPhoneNo());
            ps.setString(6,researcher.getUsername());
            ps.setString(7,researcher.getPassword());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Researcher> getAllResearcher(){
        List<Researcher> pls = new LinkedList<>();
        
        try {
            ResultSet rs = Dbconnect.getps("SELECT * FROM researcher").executeQuery();
            while(rs.next()){
                Researcher researcher = new Researcher(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
                pls.add(researcher);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public static List<Researcher> getResearcherbyID(int ID){
        List<Researcher> pls = new LinkedList<>();
        String sql = "SELECT * FROM researcher WHERE ID = "+ID;
        try {
            ResultSet rs = Dbconnect.getps(sql).executeQuery();
            while(rs.next()){
                Researcher researcher = new Researcher(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
                pls.add(researcher);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pls;
    }
    
    public void researcherEdit(int ID, String name, String institute, String field, String email, String phoneNo, String username, String password){
        String sql = "UPDATE researcher set name=?, institute=?, field=?, email=?, phoneNo=?, username=?, password=?"+ "WHERE ID=?";
        PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setString(1,name);
            ps.setString(2,institute);
            ps.setString(3,field);
            ps.setString(4,email);
            ps.setString(5,phoneNo);
            ps.setString(6,username);
            ps.setString(7,password);
            ps.setInt(8,ID);
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
    
    
    public void researcherDelete(int ID){
         String sql = "DELETE FROM researcher WHERE ID=?";
         PreparedStatement ps;
        try {
            ps = Dbconnect.getps(sql);
            ps.setInt(1, ID);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Datacontroller.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    
    
    //researcher part end here
     
}
