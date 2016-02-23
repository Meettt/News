package ADO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.ComplainVO;
import VO.UserComplainVO;

public class UserComplainDAO {
	public void insert(UserComplainVO vo) {
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
	public List search(UserComplainVO v) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from UserComplainVO where userId="+v.getUserVO().getUserId()+"");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	public List searchForAdmin(UserComplainVO v) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from UserComplainVO");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	public void update(UserComplainVO v) {
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q =session.createQuery("update UserComplainVO set complainResponse=:complainResponse where complainId=:complainId");
			q.setString("complainResponse", v.getComplainResponse());
			q.setInteger("complainId", v.getComplainId());
			q.executeUpdate();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
	}
}
