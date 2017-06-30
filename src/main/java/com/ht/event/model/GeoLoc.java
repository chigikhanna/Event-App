package com.ht.event.model;

/**
 * Created by tanvigupta on 30/06/17.
 */
public class GeoLoc {
    private String ipAddress;
    private String city;
    private String latitude;
    private String longitude;
    
    public GeoLoc(String ip, String cityName, String latitude, String longitude) {
        this.ipAddress = ip;
        this.city = cityName;
        this.latitude = latitude;
        this.longitude = longitude;

    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }
    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }


    public String getIpAddress() {
        return ipAddress;
    }
    public String getCity() {
        return city;
    }
    public String getLatitude() {
        return latitude;
    }

    public String getLongitude() {
        return longitude;
    }
}
