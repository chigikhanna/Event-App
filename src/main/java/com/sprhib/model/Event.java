package com.sprhib.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.sql.Time;

@Entity
@Table(name = "event")

public class Event implements Serializable {
    @Id
    @GeneratedValue

    private String name;

    private Integer latitude;

    private Integer longitude;

    private String area;

    private Time time;

    private String description;

    private String categories;

    private String ticket;

}
