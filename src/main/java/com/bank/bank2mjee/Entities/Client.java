package com.bank.bank2mjee.Entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Client")
public final class Client extends Person{
    @Id
    @Column(name = "code")
    private String code;
    @Column(name = "address")
    private String address;
    @OneToMany
    private List<DemandeDeCredit> demandeDeCreditList;
    public Client(String firstName, String lastName, LocalDate birthDate, String mobile, String code, String address) {
        super(firstName, lastName, birthDate, mobile);
        this.code = code;
        this.address = address;
    }

    public Client(String client) {
        this.code = client;
    }
}
