package com.sprhib.service;

/**
 * Created by tanvigupta on 28/06/17.
 */
import com.sprhib.dao.EventDao;
import com.sprhib.model.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
@Service
@Transactional
public class EventServiceImpl implements EventService{
    @Autowired
    private EventDao eventDao;

    @Override
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
    @Transactional
    public List<Event> getEvents() {
        return eventDao.getEvents();
    }
}
