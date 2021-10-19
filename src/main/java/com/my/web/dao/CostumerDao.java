package com.my.web.dao;

import com.my.web.model.Costumer;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class CostumerDao implements Dao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Costumer> getCostumer() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<Costumer> cq = cb.createQuery(Costumer.class);
        Root<Costumer> root = cq.from(Costumer.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }


    @Override
    public void deleteCostumer(int id) {
        Session session = sessionFactory.getCurrentSession();
        Costumer book = session.byId(Costumer.class).load(id);
        session.delete(book);
    }

    @Override
    public void saveCostumer(Costumer costumer) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(costumer);
    }

    @Override
    public Costumer getCostumer(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Costumer costumer = currentSession.get(Costumer.class, id);
        return costumer;
    }

    @Override
    public void update(Costumer costumer) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            costumer.setFirstName(costumer.getFirstName());
            costumer.setLastName(costumer.getLastName());
            costumer.setNumber(costumer.getNumber());
            costumer.setEmail(costumer.getEmail());
            costumer.setLogin(costumer.getLogin());
            costumer.setPassword(costumer.getPassword());
            session.update(costumer);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }
}
