package com.ht.event.model;

import javax.persistence.Entity;
import javax.persistence.Table;
//import org.hibernate.search.annotations.*;
//import org.hibernate.search.annotations.Index;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.*;
import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "event")
public class Event implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    //    @Field(index= Index.YES, analyze= Analyze.YES, store= Store.NO)
    private String name;

    private String description;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date date;

    private String day;
    private String duration;
    //    private Time time;
    private String address;

    //    @Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
    private String city;

    private String country;

    private String pincode;
    private String imgURL;
    private float latitude;   //google api geo location
    private float longitude;  //google api geo location

    @ManyToMany(cascade = CascadeType.ALL, fetch=FetchType.LAZY)
    @JoinTable(name="event_category", joinColumns = {@JoinColumn(name="event_id")}, inverseJoinColumns = {@JoinColumn(name="category_id")})
    private Set<Category> category = new HashSet<Category>(0);

    private float fees;

}
