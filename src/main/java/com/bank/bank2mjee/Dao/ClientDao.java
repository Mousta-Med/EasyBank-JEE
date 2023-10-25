package com.bank.bank2mjee.Dao;

import com.bank.bank2mjee.Entities.Client;

import java.util.List;
import java.util.Optional;

public interface ClientDao extends CrudRepo<Client, String>{
    List<Client> findByAtr(String text);
}
