package com.ht.event.model;

import javax.persistence.*;
import java.io.Serializable;
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
}
