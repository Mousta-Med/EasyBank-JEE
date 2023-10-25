package com.bank.bank2mjee.Tools;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessionFactoryProvider {
    public static SessionFactory provideSessionFactory()
    {
        Configuration config=new Configuration();
        config.configure();
        return config.buildSessionFactory();
    }
}

