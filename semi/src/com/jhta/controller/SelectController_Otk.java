package com.jhta.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jhta.image.dao.ImageDao;
import com.jhta.image.vo.ImageVo;
import com.jhta.imagebal.vo.ImageBalVo;

@WebServlet("/board")
public class SelectController_Otk extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String cmd=request.getParameter("cmd");
		if(cmd.equals("search31")){
			search31(request,response);
		}if(cmd.equals("detail")){
			detail(request,response);
		}
	}

	private void detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int gnum=Integer.parseInt(request.getParameter("gnum"));
		ImageDao dao= new ImageDao();
		ImageBalVo vo=dao.getInfo(gnum);
		if(vo!=null){
			request.setAttribute("vo", vo);
			ImageBalVo vo1=dao.getInfo2(gnum);
			if(vo1!=null){
				request.setAttribute("vo1", vo1);
				request.getRequestDispatcher("/detail.jsp").forward(request, response);
			}
		}else{
			response.sendRedirect("/Select.jsp");
		}
	}

	private void search31(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("keyword");
		
		if(keyword==null||keyword.equals("")){
			keyword = "";
		}
		
		String spageNum= request.getParameter("pageNum");
		
		int pageNum = 1;
		
		if(spageNum!=null){
			pageNum=Integer.parseInt(spageNum);
		}
		int startRow = (pageNum*5)-4;
		int endRow = (pageNum*5);
		
		ImageDao dao=new ImageDao();
		ArrayList<ImageBalVo> list= dao.getList(startRow, endRow,keyword);
		
		if(list!=null){
			int pageCount =(int)(Math.ceil(dao.getCount(keyword)/5.0));
			int startPageNum=((pageNum-1)/4*4)+1;
			int endPageNum=startPageNum+3;
			if(endPageNum>pageCount){
				endPageNum=pageCount;
			}
			request.setAttribute("pageCount", pageCount);
			request.setAttribute("startPageNum", startPageNum);
			request.setAttribute("endPageNum", endPageNum);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("keyword", keyword);
			
			request.setAttribute("list", list);
			request.getRequestDispatcher("/Select.jsp").forward(request, response);
			
		}else{
			response.sendRedirect("/fail.jsp");
		}
	}
	
}
