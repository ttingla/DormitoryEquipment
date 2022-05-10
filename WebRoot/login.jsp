<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="code" scope="page" class="com.util.CheckCode" />
<html>
<head>
<title>大学宿舍设备资源管理系统</title>

<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/bg.gif);
	background-repeat: repeat-x;
	background-color: #B7DBFF;
}
.STYLE6 {color: #FFFFFF}
.STYLE3 {color: #CCFFCC;
	font-size: 12px;
}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<script type='text/javascript' src='dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='dwr/engine.js'></script>
        <script type='text/javascript' src='dwr/util.js'></script>
        
		<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.form1.username.value=="")
			 {
			 	alert("请输入用户名");
				document.form1.username.focus();
				return false;
			 }
			 if(document.form1.pwd.value=="")
			 {
			 	alert("请输入密码");
				document.form1.pwd.focus();
				return false;
			 }
			if (document.form1.pagerandom.value != document.form1.yzm.value)
			{
				alert("验证码错误！");
				document.form1.pagerandom.focus();
				return false;
			}
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.form1.username.value,document.form1.pwd.value,document.form1.cx.value,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="main.jsp";
		    }
		    
		}
		
		
		
	    </script>    
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1002" height="700" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td height="180" colspan="3" background="images/middleh40edbhf_01.png" align="center"><div style="font-family:宋体; color:#006633;  WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 30px; margin-top:5pt">
          大学宿舍设备资源管理系统
	    </div></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/middleh40edbhf_02.png" width="263" height="520" alt=""></td>
		<td width="471" height="319" background="images/middleh40edbhf_03.png">
		
		<form action="" method="post" name="form1" style="display: inline"><table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="44" height="30"><span class="STYLE3">用户:</span></td>
                <td height="30" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
              </tr>
              <tr>
                <td height="30"><span class="STYLE3">密码:</span></td>
                <td height="30" colspan="2"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
              </tr>
              <tr>
                <td height="30"><span class="STYLE3">权限:</span></td>
                <td height="30" colspan="2"><select name="cx" id="cx">
                  <option value="管理员">管理员</option><option value="员工">员工</option>
                  </select>
                </td>
              </tr>
              <tr>
                <td height="30"><span class="STYLE3">验证码:</span></td>
                <td width="59" height="30"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" />
                <td width="102"><%
								String yzm=code.getCheckCode();
								%>  <input type="hidden" name="yzm" value="<%=yzm %>" >
								   <span class="STYLE3"><%=yzm %></span></td>
              </tr>
              <tr>
                <td height="30" colspan="3"><input type="button" name="Submit" value="登陆" onClick="check1();" >
                    <input type="reset" name="Submit2" value="重置"><img id="indicator" src="images/loading.gif" style="display:none"/></td>
              </tr>
            </table>	</form>
			
			</td>
		<td rowspan="2">
			<img src="images/middleh40edbhf_04.png" width="268" height="520" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/middleh40edbhf_05.png" width="471" height="201" alt=""></td>
	</tr>
</table>
</body>
</html>