package ADO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.Sub_categoryVO;

public class Sub_categoryDAO {
	public void insert(Sub_categoryVO vo){
		try{
		SessionFactory sessionFactory= new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(vo);
		tr.commit();
	}catch (Exception e){
		e.printStackTrace();
}
	}
	public List search(Sub_categoryVO vo) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			//CountryVO countryVO= new CountryVO();
			//System.out.println(countryVO.getCountryId());
			Query w = session.createQuery("from Sub_categoryVO");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	public void delete(Sub_categoryVO v) {
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.delete(v);

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
	}
	public List edit(Sub_categoryVO v) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from Sub_categoryVO where sub_categoryId='"+ v.getSub_categoryId() + "' ");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public void update(Sub_categoryVO v) {
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(v);
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
	}


}
