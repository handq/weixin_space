package com.csst.business.dao;


import com.csst.business.model.BUser;
import com.csst.business.model.TTrUser;
import com.csst.business.model.TWuser;

public interface IUserDao extends BaseDao {
	public TTrUser findUserById(String id);

	public BUser volidate(BUser user);

	 public void AddorUpdateUser(TWuser twuser); 
	
}
