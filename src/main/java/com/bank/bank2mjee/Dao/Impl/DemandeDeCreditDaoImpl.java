package com.bank.bank2mjee.Dao.Impl;

import com.bank.bank2mjee.Dao.DemandeDeCreditDao;
import com.bank.bank2mjee.Entities.DemandeDeCredit;
import com.bank.bank2mjee.Tools.SessionFactoryProvider;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

public class DemandeDeCreditDaoImpl implements DemandeDeCreditDao {
    SessionFactory sessionFactory = SessionFactoryProvider.provideSessionFactory();
    Session session = sessionFactory.openSession();
    @Override
    public Optional<DemandeDeCredit> save(DemandeDeCredit demandeDeCredit) {
        try {
            session.beginTransaction();
            session.persist(demandeDeCredit);
            session.getTransaction().commit();
            return Optional.ofNullable(demandeDeCredit);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Optional<DemandeDeCredit> update(DemandeDeCredit demandeDeCredit) {
        try {
            session.beginTransaction();
            DemandeDeCredit credit = session.find(DemandeDeCredit.class, demandeDeCredit.getNumber());
            credit.setCreditEtat(demandeDeCredit.getCreditEtat());
            credit.setDateUpdate(LocalDate.now());
            session.merge(credit);
            session.getTransaction().commit();
            return Optional.ofNullable(demandeDeCredit);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public Optional<DemandeDeCredit> update(DemandeDeCredit demandeDeCredit, Integer integer) {
        return null;
    }

    @Override
    public int delete(Integer integer) {
        return 0;
    }

    @Override
    public Optional<DemandeDeCredit> findOne(Integer integer) {
        return Optional.empty();
    }

    @Override
    public List<DemandeDeCredit> findAll(String filter) {
        try {
            Query<DemandeDeCredit> query;
            session.beginTransaction();
            if ("date".equals(filter)) {
                query = session.createQuery("from DemandeDeCredit order by creationDate", DemandeDeCredit.class);
            } else {
                query = session.createQuery("from DemandeDeCredit order by creditEtat", DemandeDeCredit.class);
            }
            List<DemandeDeCredit> demandeDeCredits = query.list();
            session.getTransaction().commit();
            return demandeDeCredits;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<DemandeDeCredit> findAll() {
        try {
            session.beginTransaction();
            List<DemandeDeCredit> demandedecredit = session.createQuery("from DemandeDeCredit ").getResultList();
            session.getTransaction().commit();
            return demandedecredit;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
