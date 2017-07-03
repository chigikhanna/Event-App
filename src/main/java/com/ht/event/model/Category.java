package com.ht.event.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by chigi on 30-Jun-17.
 */
@Entity
@Table(name = "category")
public class Category implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private Integer id;
    private String name;
    private Set event;

    public String getName() {
        return name;
    }
    public Integer getId() {
        return id;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public Set getEvent() {
        return event;
    }

    public void setEvent(Set event) {
        this.event = event;
    }
}