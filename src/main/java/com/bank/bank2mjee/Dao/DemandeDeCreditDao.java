package com.bank.bank2mjee.Dao;

import com.bank.bank2mjee.Entities.DemandeDeCredit;

import java.util.List;
import java.util.Optional;

public interface DemandeDeCreditDao extends CrudRepo<DemandeDeCredit, Integer> {
    Optional<DemandeDeCredit> update(DemandeDeCredit demandeDeCredit);
    List<DemandeDeCredit> findAll(String filter);
}
