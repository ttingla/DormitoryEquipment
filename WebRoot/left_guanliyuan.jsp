<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<SCRIPT language=javascript>
var itemp;
var tobj="";
itemp="";
function leftBgOver(obj){//菜单
	obj.style.background="url(images/left_bg02.gif) center no-repeat";
}
function leftBgOut(obj,sty){
if (tobj!="")
{
sty="images/left_bg01.gif";
obj.style.background= (sty)?"url(" + sty + ")":"";
}
else 
{
obj.style.background= (sty)?"url(" + sty + ")":"";
}
}
</SCRIPT>

<SCRIPT language=javascript>
function collapse(objid)
{
	var obj = document.getElementById(objid);
	collapseAll();
	obj.style.display = '';
}
function collapseAll()
{
	for (var i=1; i<=28; i++)
	{
		var obj = document.getElementById('g_' + i.toString());
		if (obj) obj.style.display = 'none';
	}
}
function expandAll()
{
	for (var i=1; i<=28; i++)
	{
		var obj = document.getElementById('g_' + i.toString());
		if (obj) obj.style.display = '';
	}
}
</SCRIPT>
<LINK href="images/style.css" type=text/css rel=stylesheet>
<STYLE type=text/css rel="stylesheet">
BODY {
	MARGIN: 0px 5px
}
IMG {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none
}
.menuall {
	BACKGROUND: #ffffff; WIDTH: 149px; TEXT-ALIGN: center
}
.menuall DIV {
	MARGIN: 0px 0px 5px 10px; TEXT-ALIGN: left
}
.STYLE1 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 12px;
}
</STYLE>

<META content="MSHTML 6.00.2900.3268" name=GENERATOR></HEAD>
<BODY>
<TABLE width="149" border=0 cellPadding=0 cellSpacing=0 class=menuall>
  <TBODY>
  <TR>
    <TD width="149"><IMG alt="" src="images/left_top.gif"></TD>
  </TR>
		  
<TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_1')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">系统用户管理</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_1>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="allusersList.action" target="hsgmain">管理员用户</a></TD>
              </TR></TBODY></TABLE></TD></TR><TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="mod.jsp" target="hsgmain">修改密码</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR><TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_2')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">待办事宜管理</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_2>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="daibanshiyi_add.jsp" target="hsgmain">待办事宜添加</a></TD>
              </TR></TBODY></TABLE></TD></TR><TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="daibanshiyiList.action" target="hsgmain">待办事宜查询</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR><TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_3')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">设备管理</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_3>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="shebeixinxi_add.jsp" target="hsgmain">设备添加</a></TD>
              </TR></TBODY></TABLE></TD></TR><TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="shebeixinxiList.action" target="hsgmain">设备查询</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR><TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_4')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">检修周期管理</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_4>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="jianxiuzhouqi_add.jsp" target="hsgmain">检修周期添加</a></TD>
              </TR></TBODY></TABLE></TD></TR><TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="jianxiuzhouqiList.action" target="hsgmain">检修周期查询</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR><TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_5')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">技术图纸管理</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_5>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="jishutuzhi_add.jsp" target="hsgmain">技术图纸添加</a></TD>
              </TR></TBODY></TABLE></TD></TR><TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="jishutuzhiList.action" target="hsgmain">技术图纸查询</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR><TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_6')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">购置计划管理</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_6>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="gouzhijihuaList.action" target="hsgmain">购置计划查询</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR><TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_7')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">员工管理</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_7>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="yuangongxinxi_add.jsp" target="hsgmain">员工添加</a></TD>
              </TR></TBODY></TABLE></TD></TR><TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="yuangongxinxiList.action" target="hsgmain">员工查询</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR><TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_8')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">设备统计</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_8>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="shebeixinxi_tj_shebeileixing.jsp" target="hsgmain">按设备类型统计</a></TD>
              </TR></TBODY></TABLE></TD></TR><TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="shebeixinxi_tj_xinjiuchengdu.jsp" target="hsgmain">按新旧程度统计</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR><TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_9')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">员工统计</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_9>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="yuangongxinxi_tj_xingbie.jsp" target="hsgmain">按性别统计</a></TD>
              </TR></TBODY></TABLE></TD></TR><TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="yuangongxinxi_tj_bumen.jsp" target="hsgmain">按部门统计</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR><TR>
    <TD height="38" style="CURSOR: pointer" onClick="collapse('g_10')"><TABLE width="92%" height="96%" cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD align="center" background="images/menu_a.gif"><span class="STYLE1">系统管理</span></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
  </TR>
  <TR>
    <TD id=g_10>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center  bgColor=#ffffff>
        <TBODY>
        <TR>
          <TD style="CURSOR: pointer"   align=middle background=images/left_bg01.gif height=30>
            <TABLE cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=50>&nbsp;</TD>
                <TD><a href="databack.jsp" target="hsgmain">数据备份</a></TD>
              </TR></TBODY></TABLE></TD></TR>
        <TR><TD height=5></TD></TR></TBODY></TABLE></TD></TR>



		
  <TR>
<TD><IMG alt="" src="images/left_bottom.gif"></TD></TR></TBODY></TABLE>
<DIV style="FONT-SIZE: 11px; COLOR: #cee6fa; FONT-FAMILY: Tahoma" 
align=center>Powered by<A href="http://cny8.taobao.com" target=_blank> <B 
style="COLOR: #cee6fa">xxxxxx</B></A><BR>
www.xxxxx.cn</DIV>
<SCRIPT>
collapseAll();
collapse('g_1')
</SCRIPT>
</BODY></HTML>