package com.ht.event.dao;


import java.util.List;
import com.ht.event.model.Event;
/**
 * Created by tanvigupta on 28/06/17.
 */
public interface EventDao {
    public void addEvent(Event event);
    public void updateEvent(Event event);
    public Event getEvent(Integer id);
    public void deleteEvent(Integer id);
    public List<Event> getEvents();
}
