package com.yj.shop.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yj.shop.vo.UserVo;

@Service
public class UserServiceImpl implements UserService{

	@Autowired 
	private UserDao userDao;

	@Override
	public int insertUser(UserVo userVo) throws Exception {
		return 0;
	}

	@Override
	public int deleteUser(UserVo userVo) throws Exception {
		return 0;
	}

	@Override
	public int updateUser(UserVo userVo) throws Exception {
		return 0;
	}

	@Override
	public UserVo selectOneUser(UserVo userVo) throws Exception {
		return userDao.selectOneUser(userVo);
	}

	@Override
	public List<UserVo> selectUserList(UserVo userVo) throws Exception {
		return null;
	}

	@Override
	public int LoginCheck(UserVo userVo) throws Exception {
		return userDao.LoginCheck(userVo);
	}
	
}
