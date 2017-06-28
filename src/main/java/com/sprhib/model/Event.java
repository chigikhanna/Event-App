package com.sprhib.model;

import java.util.Date;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Time;

@Entity
@Table(name = "event")

public class Event implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String name;
    private String description;
    private Date date;
    private String day;
    private Time time;
    private float latitude;
    private float longitude;
    private String category;
    private float fees;

    public void setId(){
        this.id=id;
    }
    public void setName(){
        this.name=name;
    }
    public void setDescription(){
        this.description=description;
    }
    public void setDate(){
        this.date=date;
    }
    public void setDay(){
        this.day=day;
    }
    public void setTime(){
        this.time=time;
    }
    public void setLatitude(){
        this.latitude=latitude;
    }
    public void setLongitude(){
        this.longitude=longitude;
    }
    public void setCategory(){
        this.category=category;
    }
    public void setFees(){
        this.fees=fees;
    }


    public Integer getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public String getDescription() {
        return description;
    }
    public Date getDate() {
        return date;
    }
    public String getDay() {
        return day;
    }
    public Time getTime() {
        return time;
    }
    public float getLatitude() {
        return latitude;
    }
    public float getLongitude() {
        return longitude;
    }
    public String getCategory() {
        return category;
    }
    public float getFees() {
        return fees;
    }
}
