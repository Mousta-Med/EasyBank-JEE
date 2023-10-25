package com.bank.bank2mjee.Services;

import com.bank.bank2mjee.Dao.AgenceDao;
import com.bank.bank2mjee.Dao.ClientDao;
import com.bank.bank2mjee.Dao.DemandeDeCreditDao;
import com.bank.bank2mjee.Entities.Agence;
import com.bank.bank2mjee.Entities.Client;
import com.bank.bank2mjee.Entities.DemandeDeCredit;
import com.bank.bank2mjee.Enums.CreditEtat;

import java.text.DecimalFormat;
import java.util.List;
import java.util.Optional;

public class SimulationService {

    ClientDao clientDao;
    AgenceDao agenceDao;
    DemandeDeCreditDao demandeDeCreditDao;

    public double createSimulation(Double capitale, int nombremensualite) {
        double tauxMensuel = DemandeDeCredit.TAUX / 12;
        double result = (capitale * tauxMensuel * Math.pow(1 + tauxMensuel, nombremensualite))
                / (Math.pow(1 + tauxMensuel, nombremensualite) - 1);

        DecimalFormat decimalFormat = new DecimalFormat("#.#");

        String formattedResult = decimalFormat.format(result);

        double roundedResult = Double.parseDouble(formattedResult);

        return roundedResult;
    }


    public SimulationService(ClientDao clientDao, AgenceDao agenceDao,DemandeDeCreditDao demandeDeCreditDao) {
        this.clientDao = clientDao;
        this.agenceDao = agenceDao;
        this.demandeDeCreditDao = demandeDeCreditDao;
    }
    public SimulationService() {
    }
    public Optional<DemandeDeCredit> addDemande(DemandeDeCredit demandeDeCredit){
        return demandeDeCreditDao.save(demandeDeCredit);
    }

    public Agence findOneAgence(String code) throws Exception {
        Optional<Agence> agenceOptional = agenceDao.findOne(code);
        if (agenceOptional.isPresent()) {
            return agenceOptional.get();
        }
        throw new Exception("Agence not found");
    }

    public List<Agence> findAllAgence() {
        return agenceDao.findAll();
    }

    public List<Agence> findAllAgenceByText(String text) {
        return agenceDao.findByAtr(text);
    }



    public List<Client> findAllClientByText(String text) {
        return clientDao.findByAtr(text);
    }

    public List<Client> findAllClient() {
        return clientDao.findAll();
    }

    public Client findOne(String client) throws Exception {
        Optional<Client> optionalClient = clientDao.findOne(client);
        if (optionalClient.isPresent()) {
            return clientDao.findOne(client).get();
        }else {
            throw new Exception("Client not found");
        }
    }

    public List<DemandeDeCredit> findAll(String filter) {
        if (filter == null) {
        return demandeDeCreditDao.findAll();
        } else {
            return demandeDeCreditDao.findAll(filter);
        }
    }

    public Optional<DemandeDeCredit> updateEtat(String creditEtat, String creditNumber) {
        DemandeDeCredit demandeDeCredit = new DemandeDeCredit();
        demandeDeCredit.setNumber(Long.valueOf(creditNumber));
        demandeDeCredit.setCreditEtat(CreditEtat.valueOf(creditEtat));
        return demandeDeCreditDao.update(demandeDeCredit);
    }
}
