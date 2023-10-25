CREATE TABLE
    IF NOT EXISTS Person (
        firstName varchar(255),
        lastName varchar(255),
        birthDate date,
        mobile varchar(255)
    );

CREATE TABLE
    IF NOT EXISTS Client (
        code varchar(255) primary key,
        address varchar(255)
    ) INHERITS (person);

CREATE TABLE
    IF NOT EXISTS Employe (
        matricule varchar(255) primary key,
        recruitmentDate date not null,
        email varchar(255)
    ) INHERITS (person);

CREATE TABLE
    IF NOT EXISTS Agence (
        code VARCHAR(255) PRIMARY KEY,
        name VARCHAR(255),
        address VARCHAR(255),
        numero VARCHAR(255)
    );

CREATE TABLE
    IF NOT EXISTS Credit (
        number SERIAL PRIMARY KEY,
        client VARCHAR(255),
        agence VARCHAR(255),
        date VARCHAR(255),
        dateUpdate VARCHAR(255),
        montant double precision,
        duree double precision,
        remarques VARCHAR(255),
        creditEtat VARCHAR(255)
    );