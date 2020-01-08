package cn.zj.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.zj.ssm.mapper.UserMapper;
import cn.zj.ssm.pojo.User;
import cn.zj.ssm.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User selectByPrimaryKey(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<User> selectList() {
		return userMapper.selectList();
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return userMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(User user) {
		return userMapper.insert(user);
	}

	@Override
	public int updateByPrimaryKey(User user) {
		return userMapper.updateByPrimaryKey(user);
	}

}
