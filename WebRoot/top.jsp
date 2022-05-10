<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css>
A:link {
	FONT-SIZE: 12px; COLOR: #666666; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A:active {
	FONT-SIZE: 12px; COLOR: #666666; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A:visited {
	FONT-SIZE: 12px; COLOR: #666666; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A:hover {
	FONT-SIZE: 12px; COLOR: #f29422; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.blue:link {
	FONT-SIZE: 12px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.blue:active {
	FONT-SIZE: 12px; COLOR: #73a2d6; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.blue:visited {
	FONT-SIZE: 12px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-DECORATION: none
}
A.blue:hover {
	FONT-SIZE: 12px; COLOR: #73a2d6; LINE-HEIGHT: 20px; TEXT-DECORATION: underline
}
.STYLE1 {
	color: #000099;
	font-weight: bold;
}
</STYLE>

<SCRIPT language=JavaScript>
				nereidFadeObjects = new Object();
				nereidFadeTimers = new Object();
				function nereidFade(object, destOp, rate, delta){
				if (!document.all)
				return
					if (object != "[object]"){ 
						setTimeout("nereidFade("+object+","+destOp+","+rate+","+delta+")",0);
						return;
					}
					clearTimeout(nereidFadeTimers[object.sourceIndex]);
					diff = destOp-object.filters.alpha.opacity;
					direction = 1;
					if (object.filters.alpha.opacity > destOp){
						direction = -1;
					}
					delta=Math.min(direction*diff,delta);
					object.filters.alpha.opacity+=direction*delta;
					if (object.filters.alpha.opacity != destOp){
						nereidFadeObjects[object.sourceIndex]=object;
						nereidFadeTimers[object.sourceIndex]=setTimeout("nereidFade(nereidFadeObjects["+object.sourceIndex+"],"+destOp+","+rate+","+delta+")",rate);
					}
				}
				</SCRIPT>

<META content="MSHTML 6.00.2900.3268" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=0 scroll=no marginwidth="0" marginheight="0">
<TABLE style="FONT-SIZE: 12px; COLOR: #ffffff" cellSpacing=0 cellPadding=0 
width="100%" bgColor=#3a6592 border=0>
  <TBODY>
  <TR>
    <TD width=175 height=28 align="left"  style="background-image:url(images/Title.gif); background-repeat:no-repeat; padding-left:30px;" ><div style="font-family:宋体; color:#006633;  WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 20px; margin-top:5pt">
          管理平台
      </div></TD>
    <TD width=27><IMG src="images/Announce.gif"></TD>
    <TD width=1152>
     <marquee behavior=alternate width=100% scrollAmount=3 class="STYLE6">
                    欢迎登陆我站，希望能给你带来好心情，谢谢合作！此处文字您可以在top.jsp源码中修改
                    </MARQUEE></TD>
    <TD width=38></TD>
    <TD noWrap align=right width=178>[<A class=blue onClick="showModalDialog('about.htm',window,'dialogHeight:250px;dialogWidth:360px;dialogleft:200px;help:no;status:no;scroll:no');"  href="#">关于系统</A>] [<A  href="logout.jsp" target="_parent" class=blue  onclick="return confirm('确定要退出吗？');">安全退出</A>]&nbsp;&nbsp;    </TD>
  </TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" 
background=images/topnav_bg.jpg border=0>
  <TBODY>
  <TR>
    <TD width=160 height=35>&nbsp;</TD>
    <TD vAlign=bottom width=95><A  href="allusersList.action"  target=right><IMG src="images/button1.jpg" border=0></A> </TD>
    <TD vAlign=bottom width=95><A  href="mod.jsp" target=right><IMG  src="images/button4.jpg" border=0></A> </TD>
   <TD vAlign=bottom width=*><A href="sy.jsp"  target=right><IMG src="images/button8.jpg" border=0></A></TD></TR></TBODY></TABLE>
</BODY></HTML>
