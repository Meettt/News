package ADO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AreaVO;

public class AreaDAO {
	public void insert(AreaVO vo){
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(vo);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public List search(AreaVO vo){
		List l= null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from AreaVO");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
public void delete(AreaVO vo){
	try {
		SessionFactory sessionFactory = new Configuration().configure()
				.buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(vo);

		tr.commit();
	} catch (Exception z) {
		z.printStackTrace();
	}
}
public List edit(AreaVO vo){
	List l=null;
	try {
		SessionFactory sessionFactory = new Configuration().configure()
				.buildSessionFactory();

		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query w = session.createQuery("from AreaVO where areaId='"+ vo.getAreaId() + "' ");
		l = w.list();

		tr.commit();
	} catch (Exception z) {
		z.printStackTrace();
	}
	return l;
}
public void update(AreaVO vo){
	try {
		SessionFactory sessionFactory = new Configuration().configure()
				.buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(vo);
		tr.commit();
	} catch (Exception z) {
		z.printStackTrace();
	}
}
}
