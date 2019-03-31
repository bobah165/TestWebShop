package com.DAO;

import com.model.User;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateSessionFactoryUtil {
     /*
      Утилитный класса HibernateSessionFactoryUtil.
      У него всего одна задача — создавать для нашего приложения фабрику сессий для работы с БД
     */

    private static SessionFactory sessionFactory;
    private HibernateSessionFactoryUtil() {}

    public static SessionFactory getSessionFactory() {
        if (sessionFactory==null){

            try{
                org.hibernate.cfg.Configuration configuration = new Configuration();
                configuration.configure();
                configuration.addAnnotatedClass(User.class);
                StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
                sessionFactory = configuration.buildSessionFactory(builder.build());

            } catch (Exception e){
                System.out.println("Exeption "+e);
            }
        }

        return sessionFactory;
    }
}
