<%@page import="com.jhta.image.dao.ImageDao"%>
<%@page import="com.jhta.image.vo.ImageVo"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String uploadPath=application.getRealPath("/upload");
	MultipartRequest mr=new MultipartRequest(
			request,
			uploadPath,
			1024*1024*5,
			"utf-8",
			new DefaultFileRenamePolicy()
			);
	int imgnum=Integer.parseInt(mr.getParameter("imgnum"));
	String imgtype=mr.getParameter("imgtype");
	int gnum=Integer.parseInt(mr.getParameter("gnum"));
	String orgname=mr.getOriginalFileName("file1");
	String savename=mr.getFilesystemName("file1");
	
	ImageVo vo=new ImageVo(imgnum,imgtype,orgname,savename,gnum);
	ImageDao dao=new ImageDao();
	int n=dao.insert(vo);
	if(n>0){
		out.print("성공");
	}else{
		out.print("실패");
	}
%>
<h2><%=uploadPath %> 경로에 업로드</h2>
<h1>전송된 정보</h1>
이미지번호: <%=imgnum %><br>
이미지타입: <%=imgtype %><br>
등록번호: <%=gnum %><br>
전송된파일명: <%=orgname %><br>
저장된파일명: <%=savename %><br>

</body>
</html>