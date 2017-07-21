package com.ht.event.model;

import lombok.Getter;
import lombok.Setter;
import java.io.Serializable;
import java.util.Date;


@Getter
@Setter
public class EventDTO implements Serializable {

    private Integer id;

    private String name;

    private String description;

    private Date date;

    private String day;

    private String duration;

    private String address;

    private String city;

    private String country;

    private String pincode;

    private String imgURL;

    private float latitude;

    private float longitude;

    private float fees;

}
