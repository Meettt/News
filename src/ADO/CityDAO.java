package ADO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CityVO;
import VO.StateVO;

public class CityDAO {

	public void insert(CityVO vo) {
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

	public List search(CityVO vo) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from CityVO");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	public void delete(CityVO v) {
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
	public List edit(CityVO v) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from CityVO where cityId='"+ v.getCityId() + "' ");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public void update(CityVO v) {
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
	
	@SuppressWarnings("unchecked")
	public List<CityVO> ajaxCity(CityVO v) {
		List<CityVO> l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from CityVO where stateId='"+ v.getStateVO().getStateId() + "' ");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
}
