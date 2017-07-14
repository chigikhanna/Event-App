package com.ht.event.service;

import com.ht.event.model.Event;
import java.util.List;

/**
 * Created by tanvigupta on 29/06/17.
 */

import com.ht.event.model.Event;
import com.ht.event.dao.EventDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Component
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
    public void indexEvents() throws Exception{
        eventDao.indexEvents();
    }

    @Override
    public List<Event> searchForEvent(String searchText){
        return eventDao.searchForEvent(searchText);
    }

    @Override
    public List<Event> getEvents() {
        return eventDao.getEvents();
    }
}
