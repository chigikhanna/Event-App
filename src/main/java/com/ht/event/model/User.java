package com.ht.event.model;


//import com.sun.istack.internal.NotNull;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.lang.Double;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "users")

public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String name;
    private String email;
    private String pw;
    private Double phone;

    //    @NotNull
    @ManyToMany(cascade = CascadeType.ALL, fetch=FetchType.LAZY)
    @JoinTable(name="user_event", joinColumns = {@JoinColumn(name="user_id")}, inverseJoinColumns = {@JoinColumn(name="event_id")})
    private Set<Event> events = new HashSet<Event>();


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
    public void setPhone(Double phone) {
        this.phone = phone;
    }
    public void setEvents(Set<Event> events) {
        this.events = events;
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
    public Double getPhone() {
        return phone;
    }
    public Set<Event> getEvents() {
        return events;
    }
}

