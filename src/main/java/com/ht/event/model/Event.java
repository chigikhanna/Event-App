package com.ht.event.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

//import org.hibernate.search.annotations.*;
//import org.hibernate.search.annotations.Index;

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

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "event_category", joinColumns = {@JoinColumn(name = "event_id")}, inverseJoinColumns = {@JoinColumn(name = "category_id")})
    private Set<Category> categories = new HashSet<Category>(0);

    private float fees;

}
