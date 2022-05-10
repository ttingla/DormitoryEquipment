<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ page isELIgnored="false" %> 
<jsp:useBean id="daibanshiyihsgb" scope="page" class="com.action.daibanshiyiAction" />


<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>添加待办事宜</TITLE>
	    
      
       <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
	<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">   
       
	</head>

<script language="javascript">
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>
	<body>
	此功能还未开展，敬请期待！
   </body>
</html>



<script language=javascript src='js/ajax.js'></script>
<script language=javascript >  
 
 function checkform(){  
 
	var shixiangbianhaoobj = document.getElementById("shixiangbianhao"); if(shixiangbianhaoobj.value==""){document.getElementById("clabelshixiangbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入事项编号</font>";return false;}else{document.getElementById("clabelshixiangbianhao").innerHTML="  "; } 	var shixiangmingchengobj = document.getElementById("shixiangmingcheng"); if(shixiangmingchengobj.value==""){document.getElementById("clabelshixiangmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入事项名称</font>";return false;}else{document.getElementById("clabelshixiangmingcheng").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
