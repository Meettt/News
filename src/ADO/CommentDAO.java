package ADO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CommentVO;
import VO.LikeVO;
import VO.StateVO;


public class CommentDAO {

	SessionFactory sessionFactory = new Configuration().configure()
			.buildSessionFactory();
	Session session = sessionFactory.openSession();

	public void insert(CommentVO vo) {
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
	public List search(CommentVO v) {
		List l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from CommentVO where addNewsId="+v.getAddNewsVO().getAddNewsId()+"");
			l = w.list();
			tr.commit();
			
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}
	@SuppressWarnings("unchecked")
	public List<CommentVO> ajaxComment(CommentVO v) {
		List<CommentVO> l = null;
		try {
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();

			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query w = session.createQuery("from CommentVO where addNewsId='"+ v.getAddNewsVO().getAddNewsId() + "' ");
			l = w.list();

			tr.commit();
		} catch (Exception z) {
			z.printStackTrace();
		}
		return l;
	}

	public int addComment(CommentVO vo) {
		List ls = null;
		List commentCounter = null;

		Transaction transaction = session.beginTransaction();
		System.out.println(vo.getCommentCounter());
		Query like = session.createQuery("select commentCounter from CommentVO where addNewsId="+vo.getAddNewsVO().getAddNewsId());
		commentCounter = like.list();
		if (commentCounter.isEmpty()) {
			vo.setCommentCounter(1);
			session.save(vo);
			transaction.commit();
			return vo.getCommentCounter();
		} else {
			System.out.println(commentCounter.get(0));
			Query q = session
					.createQuery("update CommentVO set commentCounter=:commentCounter where addNewsId=:addNewsId");
			q.setInteger("commentCounter", (int) commentCounter.get(0) + 1);
			q.setInteger("addNewsId", vo.getAddNewsVO().getAddNewsId());
			q.executeUpdate();
			transaction.commit();
			return (int) commentCounter.get(0) + 1;
		}
	}


}
