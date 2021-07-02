package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class JsonCommand {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		List<VO> list = DAO.getList();
		sb.append("[");
		// idx, name, subject, content, email, pwd, regdate
		for (VO k : list) {
			sb.append("{\"idx\" : \""+k.getIdx() +"\", \"name\" : \"" +k.getName()+"\", "+
		    "\"subject\" : \""+ k.getSubject() +"\", \"email\" : \"" +k.getEmail()+"\","+
		    "\"regdate\" : \"" + k.getRegdate().substring(0, 10) +"\" },") ;			
		}
		String msg = sb.toString().substring(0, sb.toString().length()-2);
		String msg2 = msg+"}]";
		return msg2;
	}
}
