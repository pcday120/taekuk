<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page import="jdbc.DBConnection"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int gnum=Integer.parseInt(request.getParameter("gnum"));
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String imgtype=null;
	JSONObject json=new JSONObject();
	try{
		con=DBConnection.getConn();
		String sql="select * from bal b,image i where b.gnum=i.gnum and b.gnum=? and i.imgtype='main'";
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, gnum);
		rs=pstmt.executeQuery();
		if(rs.next()){
			imgtype = rs.getString("savename");
		}
	}catch(SQLException se){
		System.out.println(se.getMessage());
	}finally{
		DBConnection.close(con,pstmt,rs);
	}
	json.put("savename",imgtype);
	response.setContentType("text/xml;charset=utf-8");
	PrintWriter pw=response.getWriter();
	pw.print(json.toString());
	pw.close();
%>