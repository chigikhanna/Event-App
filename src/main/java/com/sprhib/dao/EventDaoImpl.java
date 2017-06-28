package com.sprhib.dao;

/**
 * Created by tanvigupta on 28/06/17.
 */

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sprhib.model.Event;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional

public class EventDaoImpl implements EventDao {
    @Override
    public void addEvent(Event event) {
        
    }

    @Override
    public void updateEvent(Event event) {

    }

    @Override
    public Event getEvent(Integer id) {
        return null;
    }

    @Override
    public void deleteEvent(Integer id) {

    }

    @Override
    public List<Event> getEvents() {
        return null;
    }
}
