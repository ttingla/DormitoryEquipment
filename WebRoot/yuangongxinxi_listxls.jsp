<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yuangongxinxi.xls");
%>
<html>
  <head>
    <title>员工信息</title>
  </head>

  <body >

<table width="100%" border="1" >  
  <tr>
    <td width="30" align="center" >序号</td>
    <td>工号</td>    <td>密码</td>    <td>姓名</td>    <td>性别</td>    <td>身份证</td>    <td>电话</td>    <td>部门</td>    <td>照片</td>    <td>基本月薪</td>    <td>备注</td>    
	
    
  </tr>
   <%
			String sql="select * from t_yuangongxinxi order by id desc";
int i=0;
							
						
			ResultSet RS_result=connDbBean.executeQuery(sql);
while(RS_result.next()){
				
						
						
					

		
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td><%=RS_result.getString("gonghao") %></td>    <td><%=RS_result.getString("mima") %></td>    <td><%=RS_result.getString("xingming") %></td>    <td><%=RS_result.getString("xingbie") %></td>    <td><%=RS_result.getString("shenfenzheng") %></td>    <td><%=RS_result.getString("dianhua") %></td>    <td><%=RS_result.getString("bumen") %></td>    <td><%=RS_result.getString("zhaopian") %></td>    <td><%=RS_result.getString("jibenyuexin") %></td>    <td><%=RS_result.getString("beizhu") %></td>    
	

   
  </tr>
  	<%
  }
   %>
   
</table>
<br>
  </body>
</html>

