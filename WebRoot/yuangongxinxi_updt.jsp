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
		<TITLE>添加员工信息</TITLE>
	    
      
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
			<form action="yuangongxinxiUpdt.action" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse">
						<tr bgcolor="#E7E7E7">
							<td height="30" colspan="2" >修改员工信息</td>
						</tr>
						<tr ><td width="200">工号：</td><td><input name='gonghao' type='text' id='gonghao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelgonghao' style='margin-top:16px;' /></td></tr>		<tr ><td width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelmima' style='margin-top:16px;' /></td></tr>		<tr ><td width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelxingming' style='margin-top:16px;' /></td></tr>		<tr ><td width="200">性别：</td><td><select name='xingbie' id='xingbie' class="form-control2"><option value="男">男</option><option value="女">女</option></select></td></tr>		<tr ><td width="200">身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()' class="form-control" style="width:600px; " />&nbsp;*<label id='clabelshenfenzheng' style='margin-top:16px;' /></td></tr>		<tr ><td width="200">电话：</td><td><input name='dianhua' type='text' id='dianhua' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabeldianhua' style='margin-top:16px;' /></td></tr>		<tr ><td width="200">部门：</td><td><select name='bumen' id='bumen' class="form-control2"></select></td></tr>		<tr ><td width="200">照片：</td><td><input name='zhaopian' type='text' id='zhaopian'  value='' onblur='' class="form-control" /><div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('zhaopian')" /></div></td></tr>		<tr ><td width="200">基本月薪：</td><td><input name='jibenyuexin' type='text' id='jibenyuexin' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabeljibenyuexin' style='margin-top:16px;' />必需数字型</td></tr>		<tr ><td width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' class="form-control" style="width:600px; height:80px;" ></textarea></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%" height="45"  align="right">&nbsp;						    </td>
						    <td width="75%" height="45"  align="left">
						     <input type="submit" name="Submit5" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
						       <input type="reset" value="重置" class="btn btn-info btn-small"/>&nbsp;<input type="hidden" name="id" value="${requestScope.yuangongxinxi.id}"/>
					      </td>
						</tr>
						<script language="javascript">document.form1.gonghao.value='${yuangongxinxi.gonghao}';</script>	<script language="javascript">document.form1.mima.value='${yuangongxinxi.mima}';</script>	<script language="javascript">document.form1.xingming.value='${yuangongxinxi.xingming}';</script>	<script language="javascript">document.form1.xingbie.value='${yuangongxinxi.xingbie}';</script>	<script language="javascript">document.form1.shenfenzheng.value='${yuangongxinxi.shenfenzheng}';</script>	<script language="javascript">document.form1.dianhua.value='${yuangongxinxi.dianhua}';</script>	<script language="javascript">document.form1.bumen.value='${yuangongxinxi.bumen}';</script>	<script language="javascript">document.form1.zhaopian.value='${yuangongxinxi.zhaopian}';</script>	<script language="javascript">document.form1.jibenyuexin.value='${yuangongxinxi.jibenyuexin}';</script>	<script language="javascript">document.form1.beizhu.value='${yuangongxinxi.beizhu}';</script>	
			  </table>
			</form>
   </body>
</html>



<script language=javascript src='js/ajax.js'></script>
<script language=javascript >  
 
 function checkform(){  
 
	var gonghaoobj = document.getElementById("gonghao"); if(gonghaoobj.value==""){document.getElementById("clabelgonghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入工号</font>";return false;}else{document.getElementById("clabelgonghao").innerHTML="  "; } 	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 	var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value==""){document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入身份证</font>";return false;}else{document.getElementById("clabelshenfenzheng").innerHTML="  "; } 	var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value)){document.getElementById("clabelshenfenzheng").innerHTML=""; }else{document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>必需身份证格式</font>"; return false;}}      var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value==""){document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>请输入电话</font>";return false;}else{document.getElementById("clabeldianhua").innerHTML="  "; } 	var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value!=""){ if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(dianhuaobj.value) || /^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(dianhuaobj.value)){document.getElementById("clabeldianhua").innerHTML=""; }else{document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>必需电话格式[7或8位电话，或11位手机]</font>"; return false;}}          


return true;   
}   
popheight=450;
</script>  
