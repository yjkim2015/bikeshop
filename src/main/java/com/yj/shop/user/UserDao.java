package com.yj.shop.user;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.yj.shop.vo.UserVo;

@Repository
public interface UserDao {

	public int insertUser(UserVo userVo) throws Exception;
	public int deleteUser(UserVo userVo) throws Exception;
	public int updateUser(UserVo userVo) throws Exception;
	public UserVo selectOneUser(UserVo userVo) throws Exception;
	public List<UserVo> selectUserList(UserVo userVo) throws Exception;
	
	public int LoginCheck(UserVo userVo) throws Exception;
	
}
