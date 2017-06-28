package com.sprhib.dao;


import java.util.List;
import com.sprhib.model.Event;
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
