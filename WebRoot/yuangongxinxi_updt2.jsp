﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ page isELIgnored="false" %> 
<jsp:useBean id="yuangongxinxihsgb" scope="page" class="com.action.yuangongxinxiAction" />


<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>修改员工信息</TITLE>
	    
      
       <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
	<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">  
       
	</head>

	<body>
			<form action="yuangongxinxiUpdt2.action" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse">
						<tr bgcolor="#E7E7E7">
							<td height="30" colspan="2" >修改员工信息</td>
						</tr>
						<tr ><td width="200">工号：</td><td><input name='gonghao' type='text' id='gonghao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelgonghao' style='margin-top:16px;' /></td></tr>
		
						<tr align='center'   height="22">
						    <td width="25%" height="45"  align="right">&nbsp;						    </td>
						    <td width="75%" height="45"  align="left">
						     <input type="submit" name="Submit5" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
						       <input type="reset" value="重置" class="btn btn-info btn-small"/>&nbsp;<input type="hidden" name="id" value="${requestScope.yuangongxinxi.id}"/>
					      </td>
						</tr>
						<script language="javascript">document.form1.gonghao.value='${yuangongxinxi.gonghao}';</script>
			  </table>
			</form>
   </body>
</html>



<script language=javascript src='js/ajax.js'></script>
<script language=javascript >  
 
 function checkform(){  
 
	var gonghaoobj = document.getElementById("gonghao"); if(gonghaoobj.value==""){document.getElementById("clabelgonghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入工号</font>";return false;}else{document.getElementById("clabelgonghao").innerHTML="  "; } 


return true;   
}   
popheight=450;
</script>  