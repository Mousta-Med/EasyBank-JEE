package com.bank.bank2mjee.Entities;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
@MappedSuperclass
@Table(name = "Person")
public abstract class Person {
    @Column(name = "firstName")
    protected String firstName;
    @Column(name = "lastName")
    protected String lastName;
    @Column(name = "birthDate")
    protected LocalDate birthDate;
    @Column(name = "mobile")
    protected String mobile;
}
