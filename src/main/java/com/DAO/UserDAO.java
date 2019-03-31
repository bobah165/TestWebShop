package com.DAO;

import com.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.type.IntegerType;

public class UserDAO {

     /*
    получаем объект Session (сессия соединения с нашей БД) с помощью нашей Фабрики Сессий,
    создаем в рамках этой сессии одиночную транзакцию, выполняем необходимые преобразования данных,
    сохраняем результат транзакции в БД и закрываем сессию.
     */


    public void save (User user){
        Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(user);
        transaction.commit();
        session.close();
    }

    public void update(User user) {
        Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.update(user);
        transaction.commit();
        session.close();
    }

    public  void delete(User user) {
        Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(user);
        transaction.commit();
        session.close();
    }

    public User fondById (int id) {
        return HibernateSessionFactoryUtil.getSessionFactory().openSession().get(User.class,id);
    }

    public int getCount(){
        int count = 0;
        Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
        count =(int)session.createSQLQuery("select count (id) as c from users").addScalar("c", IntegerType.INSTANCE).uniqueResult();
        session.close();

        return count;
    }

}
