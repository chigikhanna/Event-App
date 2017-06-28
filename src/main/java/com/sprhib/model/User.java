package com.sprhib.model;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
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

    private String address;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public Double getPhno() {
        return phno;
    }

    public void setPhno(Double phno) {
        this.phno = phno;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
