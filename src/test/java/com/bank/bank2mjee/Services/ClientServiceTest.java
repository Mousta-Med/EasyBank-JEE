package com.bank.bank2mjee.Services;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import static org.mockito.Mockito.*;
import java.util.Optional;
import java.util.List;
import com.bank.bank2mjee.Dao.ClientDao;
import com.bank.bank2mjee.Entities.Client;

public class ClientServiceTest {
    private ClientService clientService;
    private ClientDao clientDao;

    @BeforeEach
    void setUp() {
        clientDao = Mockito.mock(ClientDao.class);
        clientService = new ClientService(clientDao);
    }

    @Test
    void testAddClient() {
        Client client = new Client();
        client.setFirstName("John");
        client.setLastName("Doe");
        Mockito.when(clientDao.save(client)).thenReturn(Optional.of(client));
        Optional<Client> result = clientService.addClient(client);
        assertTrue(result.isPresent());
        assertEquals(client, result.get());
        verify(clientDao).save(client);
    }

    @Test
    void testUpdateClient() {
        Client client = new Client();
        client.setFirstName("Alice");
        client.setLastName("Smith");
        String code = "12345";
        Mockito.when(clientDao.update(client, code)).thenReturn(Optional.of(client));
        Optional<Client> result = clientService.updateClient(client, code);
        assertTrue(result.isPresent());
        assertEquals(client, result.get());
        verify(clientDao).update(client, code);
    }
    @Test
    void testFindAll() {
        List<Client> clients = List.of(new Client("John", "Doe"), new Client("Alice", "Smith"));
        Mockito.when(clientDao.findAll()).thenReturn(clients);
        List<Client> result = clientService.getClients();
        assertNotNull(result);
        assertEquals(clients.size(), result.size());
        assertTrue(result.containsAll(clients));
        verify(clientDao).findAll();
    }
}
