<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ page isELIgnored="false" %> 
<jsp:useBean id="yuangongxinxihsgb" scope="page" class="com.action.yuangongxinxiAction" />
<html>
  <head>
    <title>员工信息详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
	<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">   

  </head>

  <body >

  员工信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>工号：</td><td width='39%'>${yuangongxinxi.gonghao}</td><td  rowspan=8 align=center><a href=${yuangongxinxi.zhaopian} target=_blank><img src=${yuangongxinxi.zhaopian} width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>密码：</td><td width='39%'>${yuangongxinxi.mima}</td></tr><tr><td width='11%' height=44>姓名：</td><td width='39%'>${yuangongxinxi.xingming}</td></tr><tr><td width='11%' height=44>性别：</td><td width='39%'>${yuangongxinxi.xingbie}</td></tr><tr><td width='11%' height=44>身份证：</td><td width='39%'>${yuangongxinxi.shenfenzheng}</td></tr><tr><td width='11%' height=44>电话：</td><td width='39%'>${yuangongxinxi.dianhua}</td></tr><tr><td width='11%' height=44>部门：</td><td width='39%'>${yuangongxinxi.bumen}</td></tr><tr><td width='11%' height=44>基本月薪：</td><td width='39%'>${yuangongxinxi.jibenyuexin}</td></tr><tr><td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 >${yuangongxinxi.beizhu}</td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" class="btn btn-info btn-small" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" class="btn btn-info btn-small" /></td></tr>
    
  </table>

  </body>
</html>

