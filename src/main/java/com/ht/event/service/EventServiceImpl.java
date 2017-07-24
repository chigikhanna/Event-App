package com.ht.event.service;

import com.ht.event.dao.EventDao;
import com.ht.event.model.Event;
import com.ht.event.model.EventDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by tanvigupta on 29/06/17.
 */

@Service
@Transactional
public class EventServiceImpl implements EventService {

    @Autowired
    private EventDao eventDao;

    @Override
    @Transactional
    public void addEvent(Event event) {
        eventDao.addEvent(event);
    }

    @Override
    public void updateEvent(Event event) {
        eventDao.updateEvent(event);
    }

    @Override
    public Event getEvent(Integer id) {
        return eventDao.getEvent(id);
    }

    @Override
    public void deleteEvent(Integer id) {

        eventDao.deleteEvent(id);
    }

    @Override
    public List<Event> getEvents(EventDTO eventDTO) {
        return eventDao.getEvents(eventDTO);
    }
}
