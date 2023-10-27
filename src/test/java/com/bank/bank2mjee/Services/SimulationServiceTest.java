package com.bank.bank2mjee.Services;

import com.bank.bank2mjee.Dao.DemandeDeCreditDao;
import com.bank.bank2mjee.Entities.DemandeDeCredit;
import com.bank.bank2mjee.Enums.CreditEtat;
import org.junit.jupiter.api.*;
import org.mockito.Mockito;
import java.util.List;
import java.util.Optional;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class SimulationServiceTest {
    SimulationService simulationService;
    DemandeDeCreditDao demandeDeCreditDao;

    @BeforeEach
    void setUp() {
        demandeDeCreditDao = Mockito.mock(DemandeDeCreditDao.class);
        simulationService = new SimulationService(demandeDeCreditDao);
    }

    @Test
    void testAddDemande() {
        DemandeDeCredit demandeDeCredit = new DemandeDeCredit();
        demandeDeCredit.setNumber(99L);
        demandeDeCredit.setCreditEtat(CreditEtat.REFUSE);
        Mockito.when(demandeDeCreditDao.save(demandeDeCredit)).thenReturn(Optional.of(demandeDeCredit));
        Optional<DemandeDeCredit> res = simulationService.addDemande(demandeDeCredit);
        assertEquals(Optional.of(demandeDeCredit), res);
        verify(demandeDeCreditDao).save(demandeDeCredit);
    }

    @Test
    void testFindAll() {
        List<DemandeDeCredit> demandeDeCreditList = List.of(new DemandeDeCredit(), new DemandeDeCredit());
        Mockito.when(demandeDeCreditDao.findAll()).thenReturn(demandeDeCreditList);
        List<DemandeDeCredit> res = simulationService.findAll();
        assertEquals(demandeDeCreditList.size(), res.size());
        verify(demandeDeCreditDao).findAll();
    }

    @Test
    void testUpdateEtat() {
        DemandeDeCredit demandeDeCredit = new DemandeDeCredit();
        demandeDeCredit.setNumber(99L);
        demandeDeCredit.setCreditEtat(CreditEtat.REFUSE);
        Mockito.when(demandeDeCreditDao.update(demandeDeCredit)).thenReturn(Optional.of(demandeDeCredit));
        Optional<DemandeDeCredit> res = simulationService.updateEtat("REFUSE", "99");
        assertEquals(demandeDeCredit, res.get());
        verify(demandeDeCreditDao).update(demandeDeCredit);
    }

}