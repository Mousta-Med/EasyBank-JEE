package com.bank.bank2mjee.Services;

import com.bank.bank2mjee.Dao.ClientDao;
import com.bank.bank2mjee.Entities.Client;

import java.util.List;
import java.util.Optional;

public class ClientService {
    private final ClientDao clientDao;

    public ClientService(ClientDao clientDao) {
        this.clientDao = clientDao;
    }

    public Optional<Client> addClient(Client client) {
        return clientDao.save(client);
    }

    public Optional<Client> updateClient(Client client, String code) {
        return clientDao.update(client, code);
    }

    public Integer deleteClient(String code) {
        return clientDao.delete(code);
    }

    public Optional<Client> getClient(String code) {
        return clientDao.findOne(code);
    }
    public List<Client> getClientByName(String name) {
        return clientDao.findByAtr(name);
    }

    public List<Client> getClients() {
        return clientDao.findAll();
    }
}
