package com.bank.bank2mjee.Services;

import com.bank.bank2mjee.Dao.EmployeDao;
import com.bank.bank2mjee.Entities.Employe;

import java.util.List;
import java.util.Optional;

public class EmployeService {
    private final EmployeDao employeDao;

    public EmployeService(EmployeDao employeDao) {
        this.employeDao = employeDao;
    }

    public Optional<Employe> addEmploye(Employe employe) {
        return employeDao.save(employe);
    }

    public Optional<Employe> updateEmploye(Employe employe, String matricule) {
        return employeDao.update(employe, matricule);
    }

    public Integer deleteEmploye(String matricule) {
        return employeDao.delete(matricule);
    }

    public Optional<Employe> getEmploye(String matricule) {
        return employeDao.findOne(matricule);
    }

    public List<Employe> getEmployees() {
        return employeDao.findAll();
    }
}
