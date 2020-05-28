/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author nadz
 */
public class Project {
    
    private int project_id;
    private String project_name;
    private int project_period;
    private String members;

    public Project(int project_id, String project_name, int project_period, String members) {
        this.project_id = project_id;
        this.project_name = project_name;
        this.project_period = project_period;
        this.members = members;
    }

    public int getProject_id() {
        return project_id;
    }

    public void setProject_id(int project_id) {
        this.project_id = project_id;
    }

    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public int getProject_period() {
        return project_period;
    }

    public void setProject_period(int project_period) {
        this.project_period = project_period;
    }

    public String getMembers() {
        return members;
    }

    public void setMembers(String members) {
        this.members = members;
    }
    
    
    
}
