package ADO;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import VO.UserVO;

public class UserDAO {
	public void insert(UserVO vo) {
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(vo);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public List search(UserVO v) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from UserVO where email='"+ v.getEmail() + "'and pwd='"+v.getPwd() + "'");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	public List maxId(UserVO vo) {
		List l = null;
		try {	
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction tr = session.beginTransaction();
			Query w = session
					.createQuery("select max(userId)from UserVO ");
			l = w.list();
			tr.commit();

		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
		
	}



}
