package cn.zj.ssm.service;

import java.util.List;

import cn.zj.ssm.pojo.User;

public interface UserService {
	User selectByPrimaryKey(Integer id);
	
	List<User> selectList();
	int deleteByPrimaryKey(Integer id);
	
	int insert(User user);
	
	int updateByPrimaryKey(User user);
}
