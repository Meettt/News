package ADO;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.LikeVO;

public class LikeDAO {
	SessionFactory sessionFactory = new Configuration().configure()
			.buildSessionFactory();
	Session session = sessionFactory.openSession();

	public int addLike(LikeVO vo) {
		List ls = null;
		List likeCounter = null;

		Transaction transaction = session.beginTransaction();
		System.out.println(vo.getLikeCounter());
		Query like = session.createQuery("select likeCounter from LikeVO where addNewsId="+vo.getAddNewsVO().getAddNewsId());
		likeCounter = like.list();
		if (likeCounter.isEmpty()) {
			vo.setLikeCounter(1);
			session.save(vo);
			transaction.commit();
			return vo.getLikeCounter();
		} else {
			
			Query like2 = session.createQuery("select likeCounter from LikeVO where addNewsId="+vo.getAddNewsVO().getAddNewsId()+"and userId="+vo.getUserVO().getUserId());
			List xyz=like2.list();
			vo.setLikeCounter((int) likeCounter.get(0) + 1);
			if(xyz.isEmpty()){
				session.save(vo);
			}
			Query q = session.createQuery("update LikeVO set likeCounter=:likeCounter where addNewsId=:addNewsId");
			q.setInteger("likeCounter", vo.getLikeCounter());
			q.setInteger("addNewsId", vo.getAddNewsVO().getAddNewsId());
			q.executeUpdate();
			transaction.commit();
			return (int) likeCounter.get(0) + 1;
		}
	}
	
	public int DisLike(LikeVO vo){
		Transaction transaction = session.beginTransaction();
		List likeCounter = null;
		Query like = session.createQuery("select likeCounter from LikeVO where addNewsId="+vo.getAddNewsVO().getAddNewsId());
		likeCounter = like.list();
		Query qa = session.createQuery("delete LikeVO where addNewsId=:addNewsId and userId=:userId");
		qa.setInteger("userId", vo.getUserVO().getUserId());
		qa.setInteger("addNewsId", vo.getAddNewsVO().getAddNewsId());
		Query q = session.createQuery("update LikeVO set likeCounter=:likeCounter where addNewsId=:addNewsId");
		q.setInteger("likeCounter", (int) likeCounter.get(0) - 1);
		q.setInteger("addNewsId", vo.getAddNewsVO().getAddNewsId());
		q.executeUpdate();
		qa.executeUpdate();
		transaction.commit();
		return (int) likeCounter.get(0) - 1;
		}
	public List AllLike(LikeVO vo) {
		List ls = null;
		Transaction transaction = session.beginTransaction();
		Query q=session.createQuery("from LikeVO where addNewsId=:addNewsId");
		q.setInteger("addNewsId", vo.getAddNewsVO().getAddNewsId());
		ls=q.list();
		transaction.commit();
		return ls;
	}
	
	public List searchUserforLike(LikeVO vo) {
		List ls = null;
		Transaction transaction = session.beginTransaction();
		Query q=session.createQuery("from LikeVO where addNewsId=:addNewsId");
		q.setInteger("addNewsId", vo.getAddNewsVO().getAddNewsId());
		ls=q.list();
		transaction.commit();
		return ls;
	}
}
