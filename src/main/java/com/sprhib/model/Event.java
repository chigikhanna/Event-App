package com.sprhib.model;

import sun.util.calendar.LocalGregorianCalendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.sql.Time;

@Entity
@Table(name = "event")

public class Event implements Serializable {
    @Id
    @GeneratedValue
    private Integer id;

    private String name;
    private String description;
    private LocalGregorianCalendar.Date date;
    private String day;
    private Time time;
    private Integer latitude;
    private Integer longitude;
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

    public LocalGregorianCalendar.Date getDate() {
        return date;
    }

    public String getDay() {
        return day;
    }

    public Time getTime() {
        return time;
    }

    public Integer getLatitude() {
        return latitude;
    }

    public Integer getLongitude() {
        return longitude;
    }

    public String getCategory() {
        return category;
    }

    public float getFees() {
        return fees;
    }
}
