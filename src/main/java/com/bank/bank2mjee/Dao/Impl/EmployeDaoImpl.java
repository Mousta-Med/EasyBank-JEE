package com.bank.bank2mjee.Dao.Impl;

import com.bank.bank2mjee.Dao.EmployeDao;
import com.bank.bank2mjee.Entities.Client;
import com.bank.bank2mjee.Entities.Employe;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.List;
import java.util.Optional;

public class EmployeDaoImpl implements EmployeDao {

    SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
    Session session = sessionFactory.openSession();

    @Override
    public Optional<Employe> save(Employe employe) {
        try {
            session.beginTransaction();
            session.persist(employe);
            session.getTransaction().commit();
            return Optional.of(employe);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }

    @Override
    public Optional<Employe> update(Employe employe, String matricule) {
        try {
            session.beginTransaction();
            Employe updateEmploye = new Employe();
            updateEmploye = session.get(Employe.class, matricule);
            if (updateEmploye != null) {
                updateEmploye.setEmail(employe.getEmail());
                updateEmploye.setMobile(employe.getMobile());
                updateEmploye.setFirstName(employe.getFirstName());
                updateEmploye.setLastName(employe.getLastName());
                updateEmploye.setBirthDate(employe.getBirthDate());
                updateEmploye.setRecruitmentDate(employe.getRecruitmentDate());
                session.persist(updateEmploye);
                session.getTransaction().commit();
                return Optional.of(updateEmploye);
            } else {
                session.getTransaction().commit();
                return Optional.empty();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }

    @Override
    public int delete(String matricule) {
        try {
            session.beginTransaction();
            Employe employe = new Employe();
            employe = session.get(Employe.class, matricule);
            session.remove(employe);
            session.getTransaction().commit();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public Optional<Employe> findOne(String s) {
        try {
            session.beginTransaction();
            Employe employe = new Employe();
            employe = session.get(Employe.class, s);
            session.getTransaction().commit();
            if (employe == null) {
                return Optional.empty();
            } else {
                return Optional.of(employe);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }

    @Override
    public List<Employe> findAll() {
        try {
            session.beginTransaction();
            List<Employe> employes = session.createQuery("from Employe").getResultList();
            session.getTransaction().commit();
            return employes;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
