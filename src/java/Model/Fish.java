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
public class Fish {
    private int fishID;
    private String scName;
    private String cmName;
    private String ordID;
    private String ordName;
    private String fmlyID;
    private String fmlyName;
    private String catID;
    private String catName;
    private String fish_pic;
    private String longs;
    private String lat;
    private String location;

    public Fish(int fishID, String scName, String cmName, String ordID, String ordName, String fmlyID, String fmlyName, String catID, String catName, String fish_pic, String longs, String lat, String location) {
        this.fishID = fishID;
        this.scName = scName;
        this.cmName = cmName;
        this.ordID = ordID;
        this.ordName = ordName;
        this.fmlyID = fmlyID;
        this.fmlyName = fmlyName;
        this.catID = catID;
        this.catName = catName;
        this.fish_pic = fish_pic;
        this.longs = longs;
        this.lat = lat;
        this.location = location;
    }

    public int getFishID() {
        return fishID;
    }

    public void setFishID(int fishID) {
        this.fishID = fishID;
    }

    public String getScName() {
        return scName;
    }

    public void setScName(String scName) {
        this.scName = scName;
    }

    public String getCmName() {
        return cmName;
    }

    public void setCmName(String cmName) {
        this.cmName = cmName;
    }

    public String getOrdID() {
        return ordID;
    }

    public void setOrdID(String ordID) {
        this.ordID = ordID;
    }

    public String getOrdName() {
        return ordName;
    }

    public void setOrdName(String ordName) {
        this.ordName = ordName;
    }

    public String getFmlyID() {
        return fmlyID;
    }

    public void setFmlyID(String fmlyID) {
        this.fmlyID = fmlyID;
    }

    public String getFmlyName() {
        return fmlyName;
    }

    public void setFmlyName(String fmlyName) {
        this.fmlyName = fmlyName;
    }

    public String getCatID() {
        return catID;
    }

    public void setCatID(String catID) {
        this.catID = catID;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public String getFish_pic() {
        return fish_pic;
    }

    public void setFish_pic(String fish_pic) {
        this.fish_pic = fish_pic;
    }

    public String getLongs() {
        return longs;
    }

    public void setLongs(String longs) {
        this.longs = longs;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
   
}
