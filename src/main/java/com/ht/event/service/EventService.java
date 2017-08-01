package com.ht.event.service;

import com.ht.event.model.Event;
import com.ht.event.model.EventDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface EventService {
    void addEvent(Event event);

    void updateEvent(Event event);

    Event getEvent(Integer id);

    void deleteEvent(Integer id);

    List<Event> getEvents(EventDTO eventDTO);

    List<Event> searchForEvent(String searchText) throws Exception;
}
