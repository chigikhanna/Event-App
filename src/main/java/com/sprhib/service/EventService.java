package com.sprhib.service;

/**
 * Created by tanvigupta on 28/06/17.
 */

import java.util.List;
import com.sprhib.model.Event;

public interface EventService {
        public void addEvent(Event event);
        public void updateEvent(Event event);
        public Event getEvent(Integer id);
        public void deleteEvent(Integer id);
        public List<Event> getEvents();
}
