package ADO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CountryVO;
import VO.StateVO;

public class StateDAO {
	public void insert(StateVO vo){
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
	public List<StateVO> search(StateVO vo) {
		List<StateVO> l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			CountryVO countryVO= new CountryVO();
			System.out.println(countryVO.getCountryId());
			Query w = session.createQuery("from StateVO");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	public void delete(StateVO v) {
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
	public List<StateVO> edit(StateVO v) {
		List<StateVO> l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from StateVO where stateId='"+ v.getStateId() + "' ");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public void update(StateVO v) {
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
	public List<StateVO> ajaxState(StateVO v) {
		List<StateVO> l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from StateVO where countryId='"+ v.getCountryVO().getCountryId() + "' ");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
}
