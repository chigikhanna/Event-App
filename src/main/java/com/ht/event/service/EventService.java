package com.ht.event.service;

import java.util.List;
import com.ht.event.model.Event;

public interface EventService {
    public void addEvent(Event event);
    public void updateEvent(Event event);
    public Event getEvent(Integer id);
    public void deleteEvent(Integer id);
    public void indexEvents() throws Exception;
    public List<Event> searchForEvent(String searchText);
    public List<Event> getEvents();
}
