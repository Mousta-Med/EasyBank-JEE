package com.bank.bank2mjee.Dao;

import com.bank.bank2mjee.Entities.Agence;
import com.bank.bank2mjee.Entities.Client;

import java.util.List;
import java.util.Optional;

public interface AgenceDao extends CrudRepo<Agence,String> {
    Optional<Agence> update(Agence agence);
    List<Agence> findByAtr(String text);
}
