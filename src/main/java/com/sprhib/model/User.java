package com.sprhib.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.criteria.CriteriaBuilder;
import java.io.Serializable;
import java.lang.Double;

@Entity
@Table(name = "users")

public class User implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;

    private String name;
    private String email;
    private String pw;
    private Double phno;
    private float latitude;
    private float longitude;

    public void setId(Integer id) {
        this.id = id;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setPw(String pw) {
        this.pw = pw;
    }
    public void setPhno(Double phno) {
        this.phno = phno;
    }
    public void setLatitude(float latitude) {
        this.latitude = latitude;
    }
    public void setLongitude() {
       this.longitude=longitude;
    }

    public Integer getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public String getEmail() {
        return email;
    }
    public String getPw() {
        return pw;
    }
    public Double getPhno() {
        return phno;
    }
    public float getLatitude(){return latitude;}
    public float getLongitude(){
        return longitude;
    }


}
