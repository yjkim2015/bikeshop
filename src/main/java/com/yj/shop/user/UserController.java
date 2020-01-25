package com.yj.shop.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yj.shop.vo.ResultVo;
import com.yj.shop.vo.UserVo;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/userCheck", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<ResultVo> userCheck(@RequestBody UserVo userVo){
		final ResultVo resultVo = new ResultVo(HttpStatus.OK);
		
		try {
			if ( userService.LoginCheck(userVo) <= 0) {
				resultVo.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultVo.build();
	}
}
