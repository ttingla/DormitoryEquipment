<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE>TD {
	FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
}
</STYLE>

<SCRIPT language=JavaScript>
<!--
function tick() {
var hours, minutes, seconds;
var intHours, intMinutes, intSeconds;
var today;
today = new Date();
intHours = today.getHours();
intMinutes = today.getMinutes();
intSeconds = today.getSeconds();

if (intHours == 0) {
hours = "00:";
} else if (intHours < 10) { 
hours = "0" + intHours+":";
} else {
hours = intHours + ":";
}

if (intMinutes < 10) {
minutes = "0"+intMinutes+":";
} else {
minutes = intMinutes+":";
}
if (intSeconds < 10) {
seconds = "0"+intSeconds+" ";
} else {
seconds = intSeconds+" ";
} 
timeString = hours+minutes+seconds;
Clock.innerHTML = timeString;
window.setTimeout("tick();", 1000);
}

window.onload = tick;
//-->
</SCRIPT>

<META content="MSHTML 6.00.2900.3268" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#73a3d4 height=4></TD></TR></TBODY></TABLE>
<TABLE height=28 cellSpacing=0 cellPadding=0 width="100%" bgColor=#3a6592 
border=0>
  <TBODY>
  <TR>
    <TD>
      <TABLE height="100%" cellSpacing=2 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD noWrap align=right width=109><SPAN id=Clock></SPAN></TD>
          <TD align=right width=60>&nbsp;</TD>
          <TD noWrap align=middle 
          width=584>当前用户：${sessionScope.username} &nbsp;&nbsp;权限：${sessionScope.cx} &nbsp;&nbsp;</TD>
          <TD 
          style="FONT-WEIGHT: bolder; FILTER: shadow(Color=#000000,direction=180)" 
          noWrap align=right width=303>程序开发：xxxxx QQ：xxxxxxx      </TD>
        </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
