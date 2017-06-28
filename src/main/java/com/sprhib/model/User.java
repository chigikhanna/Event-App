package com.sprhib.model;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

import javax.persistence.*;
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
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String name;
    private String email;
    private String pw;
    private Double phno;

<<<<<<< HEAD
//    private Integer age;
=======
<<<<<<< HEAD
=======
    private Integer age;
>>>>>>> ecffd79b187b8667b4342378b3b09818bdbd7e50

>>>>>>> origin/master
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
//    public void setAge(Integer age) {
//        this.age = age;
//    }

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
//    public Integer getAge() {
//        return age;
//    }
}
