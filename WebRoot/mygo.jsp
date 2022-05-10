<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>mygo</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
  <body>
  
   
   <s:if test="#session.cx=='超级管理员' || #session.cx=='普通管理员'  "><script type="text/javascript">window.location.href="left_guanliyuan.jsp";</script></s:if><s:if test="#session.cx=='员工'  "><script type="text/javascript">window.location.href="left_yuangong.jsp";</script></s:if>
</html>

