package com.ht.event.model;

import lombok.Getter;
import lombok.Setter;
import java.io.Serializable;
import java.util.Date;


@Getter
@Setter
public class EventDTO implements Serializable {

   private int size;
   private int start;

}
