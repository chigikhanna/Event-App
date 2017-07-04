package com.ht.event.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by tanvigupta on 30-Jun-17.
 */
@Entity
@Table(name = "category")
public class Category implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
@Column(name = "category_id")
    private Integer id;
    private String name;

    private Set<Event> events = new HashSet<Event>();

    public Category(Integer id, String name){
        this.id=id;
        this.name=name;
    }

    public String getName() {
        return name;
    }
    public Integer getId() {
        return id;
    }
    public Set<Event> getEvents(){
        return events;
    }


    public void setName(String name) {
        this.name = name;
    }
    public void setId(Integer id) {
        this.id = id;
    }


    public void addEvent(Event event){
        this.events.add(event);
    }

}
