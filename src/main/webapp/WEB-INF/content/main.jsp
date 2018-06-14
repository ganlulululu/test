<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page language="java" pageEncoding="gb2312" %> 
<%@ page contentType="text/html;charset=gb2312" %> 

<%@ page import="java.util.*,java.lang.*,java.sql.*,javax.naming.*,javax.sql.*" %> 
<%@ page errorPage="error.html" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%request.setCharacterEncoding("gb2312");%> 
<head><meta http-equiv=Content-Type content="text/html;charset=gb2312">

/head> 

<body> 
<%Connection con=null; 
  Statement stmt=null; 
  ResultSet rs=null; 
  int pageSize,rowCount,pageCount,curPage; 
  pageSize=5; 
  pageCount=1; 
  String strPage=request.getParameter("page"); 
  if(strPage==null) curPage=1; 
  else{ 
    curPage=Integer.parseInt(strPage);//通过参数来定当前页面 
    if(curPage<1) curPage=1; 
    } 
%> 
<%try{ 
  InitialContext ctx=new InitialContext(); 
  DataSource ds=(DataSource)ctx.lookup("java:comp/env/MySqlDS"); 
  con=ds.getConnection(); 
  stmt=con.createStatement(); 
  rs=stmt.executeQuery("select * from infos"); 
  rs.last(); 
  rowCount=rs.getRow(); 
  pageCount=(rowCount+pageSize-1)/pageSize; 
  if(curPage>pageCount) curPage=pageCount; 
  }catch(SQLException e){ 
    System.out.println(e.toString()); 
  } 
%> 
<table width="100%" ><tr><td> 
页次：<%=curPage %>/<%=pageCount %>页     <%=pageSize %>条/页</td></tr> 
</table> 
<table width="80%"><tr> 
<th>Number</th><th>Name</th><th>Activity</th><th>Score</th></tr> 
<%if(pageCount>0) rs.absolute((curPage-1)*pageSize+1); 
int i=0; 
while(i<pageSize&&!rs.isAfterLast()){%> 
<tr align="center"><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td> 
<td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td></tr> 
<% 
rs.next(); 
i++; 
} %> 
</table> 
<%if(curPage>1){ %> 
<a href="MyJsp.jsp?page=<%=curPage-1%>">上一页</a><%} %> 
<%if(curPage<pageCount){ %> 
<a href="MyJsp.jsp?page=<%=curPage+1%>">下一页</a><%} %> 
</body></html> 
<%rs.close(); 
  stmt.close(); 
  con.close(); 
%> 
</html>