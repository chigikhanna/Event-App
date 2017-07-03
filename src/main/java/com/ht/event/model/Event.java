package com.ht.event.model;

import java.util.Date;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Time;
import java.util.HashSet;
import java.util.Set;

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
    private float latitude;   //google api geo location
    private float longitude;  //google api geo location

    private Set<Category> category = new HashSet<Category>(0);  //many to many
    private float fees;
    //image url
    //jsp for this -->>>

    public void setId(Integer id){
        this.id=id;
    }
    public void setName(String name){
        this.name=name;
    }
    public void setDescription(String description){
        this.description=description;
    }
    public void setDate(Date date){
        this.date=date;
    }
    public void setDay(String day){
        this.day=day;
    }
    public void setTime(Time time){
        this.time=time;
    }
    public void setLatitude(float latitude){
        this.latitude=latitude;
    }
    public void setLongitude(float longitude){
        this.longitude=longitude;
    }
    public void setFees(float fees){
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
    public float getFees() {
        return fees;
    }



    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "event_category", joinColumns = { @JoinColumn(name = "id") }, inverseJoinColumns = { @JoinColumn(name = "id") })
    public Set<Category> getCategory() {
        return this.category;
    }

    public void setCategory(Set<Category> category) {
        this.category = category;
    }
}
