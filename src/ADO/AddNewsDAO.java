package ADO;

import java.util.*;

import org.eclipse.jdt.internal.compiler.flow.FinallyFlowContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AddNewsDescriptionVO;
import VO.AddNewsVO;
import VO.AreaVO;
import VO.CategoryVO;

public class AddNewsDAO {
	SessionFactory sessionFactory = new Configuration().configure()
			.buildSessionFactory();
	Session session = sessionFactory.openSession();
	
	
	public void insert(AddNewsVO vo) {
		try {
			Transaction tr = session.beginTransaction();
			session.save(vo);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void insertNewsDes(AddNewsDescriptionVO vo) {
		try {
			Transaction tr = session.beginTransaction();
			session.save(vo);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List search(AddNewsVO vo) {
		List l = null;
		try {
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from AddNewsVO where reporterId="
					+ vo.getReporterRegistrationVO().getReporterId());
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	public List searchSpecific(AddNewsVO vo) {
		List l = null;
		try {
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from AddNewsVO where addNewsId="
					+ vo.getAddNewsId());
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	@SuppressWarnings("rawtypes")
	public List searchSpecifCategoryNews(AddNewsVO vo) {
		List l = null;
		try {
		
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from CategoryVO where categoryName='"+vo.getCategoryVO().getCategoryName()+"'");
			List ls = w.list();
			Iterator iterator = ls.iterator();
			while (iterator.hasNext()) {
				
				CategoryVO categoryVO = (CategoryVO) iterator.next();
				Query wq = session.createQuery("from AddNewsVO where categoryId="+categoryVO.getCategoryId());	
				l=wq.list();
			}
			
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	public List searchAllNews(AddNewsVO vo) {
		List l = null;
		try {
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from AddNewsVO where topNews='No'");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public List searchtopandlatest(AddNewsVO vo) {
		List l = null;
		try {
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from AddNewsVO where reporterId="
					+ vo.getReporterRegistrationVO().getReporterId()
					+ "and topNews='yes' or latestNews='yes'");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public List searchtop(AddNewsVO vo) {
		List l = null;
		try {
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from AddNewsVO where topNews='yes'");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public void delete(AreaVO vo) {
		try {
			Transaction tr = session.beginTransaction();
			session.delete(vo);
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
	}

	public List edit(AddNewsVO vo) {
		List l = null;
		try {
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from AddNewsVO where addNewsId='"
					+ vo.getAddNewsId() + "' ");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	public List editNewsDes(AddNewsDescriptionVO vo) {
		List l = null;
		try {
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from AddNewsDescriptionVO where addNewsId='"
					+ vo.getAddNewsVO().getAddNewsId() + "' ");
			l = w.list();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public void update(AddNewsVO vo) {
		try {
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(vo);
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
	}
	public void updateNewsDes(AddNewsDescriptionVO vo) {
		try {
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(vo);
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
	}

	public void updateTopandLatest(AddNewsVO vo) {
		try {
			Transaction tr = session.beginTransaction();
			Query q = session
					.createQuery("update AddNewsVO set topNews=:topNews ,latestNews=:latestNews where addNewsId=:addNewsId");
			q.setString("topNews", vo.getTopNews());
			q.setString("latestNews", vo.getLatestNews());
			q.setInteger("addNewsId", vo.getAddNewsId());
			q.executeUpdate();
			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
	}

	public List maxId(AddNewsVO vo) {
		List l = null;
		try {	
			Transaction tr = session.beginTransaction();
			Query w = session
					.createQuery("select max(addNewsId)from AddNewsVO ");
			l = w.list();
			tr.commit();

		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
		
	}
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
		session.close();
		
	}

}
