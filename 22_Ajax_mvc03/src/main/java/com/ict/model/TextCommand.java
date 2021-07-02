package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class TextCommand {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String result = "";
		
		// 쉽게 처리하기 위해서 List로 받자 
		List<VO> list = DAO.getIdChk(id);
		if(list.size()>0) {
			result = "1";
		}else {
			result = "0";
		}
		return result;
	}
}
