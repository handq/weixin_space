package com.csst.business.dao.mysql.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.csst.business.dao.IUserDao;
import com.csst.business.dao.TestDao;
import com.csst.business.model.BUser;
import com.csst.business.model.TTrUser;
import com.csst.business.model.TUserMenu;
import com.csst.business.model.TWgroup;
import com.csst.business.model.TWuser;

public class UserDaoImpl extends BaseDaoImpl implements IUserDao {

	@Override
	public TTrUser findUserById(String id) {
		Session session=getSessionFactory().getCurrentSession();
		TTrUser user=(TTrUser)session.get(TTrUser.class, id);
		return user;
	}

	@Override
	public BUser volidate(BUser user) {
		BUser buser = new BUser();
		boolean flag = false;
		Session session=getSessionFactory().getCurrentSession();
		String hql = "from BUser b where b.userName='"+user.getUserName()+"' and b.userPass='"+user.getUserPass()+"'";
		List<BUser> list = session.createQuery(hql).list();
		if(list.size()>0){
			buser = list.get(0);
		}
		return buser;
	}

	@Override
	public void AddorUpdateUser(TWuser twuser) {
		Session session=getSessionFactory().getCurrentSession();
		TWgroup twgrop = twuser.getTWgroup();
		session.saveOrUpdate(twgrop);
		session.saveOrUpdate(twuser);
		session.flush();
		session.close();
	}

}
