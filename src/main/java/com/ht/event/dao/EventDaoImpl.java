package com.ht.event.dao;

/**
 * Created by tanvigupta on 28/06/17.
 */

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;
import org.hibernate.search.jpa.FullTextEntityManager;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ht.event.model.Event;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;

@Repository
@Transactional

public class EventDaoImpl implements EventDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession(){

        return sessionFactory.getCurrentSession();
    }

    @Transactional
    public void indexEvents() throws Exception
    {
        try
        {
            Session session = sessionFactory.getCurrentSession();

            FullTextSession fullTextSession = Search.getFullTextSession(session);
            fullTextSession.createIndexer().startAndWait();
        }
        catch(Exception e)
        {
            throw e;
        }
    }

    @Transactional
    public List<Event> searchForEvent(String searchText) throws Exception
    {
        try
        {
            Session session = sessionFactory.getCurrentSession();

            FullTextSession fullTextSession = Search.getFullTextSession(session);

            QueryBuilder qb = fullTextSession.getSearchFactory()
                    .buildQueryBuilder().forEntity(Event.class).get();
            org.apache.lucene.search.Query query = qb
                    .keyword().onFields("description", "title", "author")
                    .matching(searchText)
                    .createQuery();

            org.hibernate.Query hibQuery =
                    fullTextSession.createFullTextQuery(query, Event.class);

//            https://www.codeproject.com/Articles/830529/Integrating-Full-Text-Search-to-Spring-MVC-with-Hi
            List<Event> results = hibQuery.list();
            return results;
        }
        catch(Exception e)
        {
            throw e;
        }
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
        eventToUpdate.setDuration(event.getDuration());
        eventToUpdate.setCity(event.getCity());
        eventToUpdate.setAddress(event.getAddress());
        eventToUpdate.setCountry(event.getCountry());
        eventToUpdate.setPincode(event.getPincode());
        eventToUpdate.setLatitude(event.getLatitude());
        eventToUpdate.setLongitude(event.getLongitude());
//        eventToUpdate.setCategory(event.getCategory());
        eventToUpdate.setFees(event.getFees());

        getCurrentSession().update(eventToUpdate);
    }

    @Override
    public Event getEvent(Integer id) {
        Event event=(Event) getCurrentSession().get(Event.class, id);
        return event;
    }

    @Override
    public void deleteEvent(Integer id) {
        Event event=getEvent(id);
        if(event!=null)
            getCurrentSession().delete(event);
    }

    @Override
    public List<Event> getEvents() {
        Criteria criteria = getCurrentSession().createCriteria(Event.class);
        return criteria.list();
    }
}
