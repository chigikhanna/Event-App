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

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession(){

        return sessionFactory.getCurrentSession();
    }


    @Override
    public void addEvent(Event event) {
        getCurrentSession().save(event);
    }

    @Override
    public void updateEvent(Event event) {
        Event eventToUpdate=getEvent(event.getId());
        eventToUpdate.setId(event.getId());
        eventToUpdate.setName(event.getName());
        eventToUpdate.setDescription(event.getDescription());
        eventToUpdate.setDate(event.getDate());
        eventToUpdate.setDay(event.getDay());
        eventToUpdate.setLatitude(event.getLatitude());
        eventToUpdate.setLongitude(event.getLongitude());
        eventToUpdate.setCategory(event.getCategory());
        eventToUpdate.setFees(event.getFees());

        getCurrentSession().update(eventToUpdate);
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
