package ADO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CategoryVO;

public class CategoryDAO {

	public void insert(CategoryVO vo) {
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

	public List search(CategoryVO vo) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from CategoryVO order by categoryName asc");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public void delete(CategoryVO v) {
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

	public List edit(CategoryVO v) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from CategoryVO where categoryId='"+ v.getCategoryId() + "' ");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public void update(CategoryVO v) {
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
