package com.bank.bank2mjee.Entities;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Employe")
public final class Employe extends Person{
    @Id
    @Column(name = "matricule")
    private String matricule;

    @Column(name = "recruitmentDate")
    private LocalDate recruitmentDate;

    @Column(name = "email")
    private String email;

    public Employe(String firstName, String lastName, LocalDate birthDate, String mobile, String matricule, LocalDate recruitmentDate, String email) {
        super(firstName, lastName, birthDate, mobile);
        this.matricule = matricule;
        this.recruitmentDate = recruitmentDate;
        this.email = email;
    }
}
