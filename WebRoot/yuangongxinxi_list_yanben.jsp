<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="yuangongxinxihsgb" scope="page" class="com.action.yuangongxinxiAction" /> 



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<TITLE>Ա����Ϣ��ѯ</TITLE>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
	<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">   
	
		
		<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
        <script language="javascript">
		   function catelogAll()
           {
                   document.getElementById("indicator").style.display="block";
                   loginService.catelogAll(callback);
               
           }
           function callback(data)
           {
               document.getElementById("indicator").style.display="none";
               DWRUtil.addOptions("catelog_id",data,"id","name");
           }
           function yuangongxinxiDel(id)
           {
               if(confirm('��ȷ��ɾ����'))
               {
                   window.location.href="yuangongxinxiDel.action?id="+id;
               }
           }
           
		   function yuangongxinxiDetail(id)
           {
                   window.location.href="yuangongxinxiDetail.action?id="+id;
				  // window.open("ygxxDetail.action?id="+id,"_blank");
           }
           function yuangongxinxiPre(id)
           {
                   window.location.href="yuangongxinxiPre.action?id="+id;
           }
		   function yuangongxinxiPrelb(id)
           {
                   window.location.href="yuangongxinxiPrelb.action?id="+id;
           }
           function yuangongxinxiIssh(id)
           {
                   window.location.href="yuangongxinxiIssh.action?id="+id;
           }
           function yuangongxinxiAdd()
           {
                 var url="yuangongxinxiAdd.jsp";
				 window.location.href=url;
           }
           
           
           function go(index)
           {
               document.form123.index.value=index;
               document.form123.action="yuangongxinxiList.action"
               document.form123.submit();
           }  
		    function check()
           {
               document.formAdd.submit();
           }
       </script>
	   
	</head>

	<body leftmargin="2" topmargin="9"  onload="catelogAll()">
	
	<form action="yuangongxinxiList.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="1" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#E7E7E7">
							<td height="10" colspan="8" background="img/tbg.gif">����Ա����Ϣ�б�</td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    
					      <td  bgcolor="#FFFFFF" align="left">
						  ����:  ���ţ�<input name="gonghao" type="text" id="gonghao" class="form-control2" />  ������<input name="xingming" type="text" id="xingming" class="form-control2" /> �Ա�<select name='xingbie' id='xingbie' class="form-control2"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  ���֤��<input name="shenfenzheng" type="text" id="shenfenzheng" class="form-control2" />  �绰��<input name="dianhua" type="text" id="dianhua" class="form-control2" />  ���ţ�<select name='bumen' id='bumen' class="form-control2"><option value="">����</option></select>
					        <input name="button" type="button" onclick="check()" value="��ѯ" class="btn btn-info btn-small" /> <input type="button" value="����excel" onclick="javascript:location.href='yuangongxinxi_listxls.jsp';" class="btn btn-info btn-small" />
					      
                          </td>
						</tr>
					 </table>
	</form>
			
			<table width="98%" border="1" align="center" cellpadding="4" cellspacing="1" bordercolor="#F3F3F3" bgcolor="#CBD8AC" style="margin-bottom:8px">
				
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="50" height="50">���</td>
					<td >����</td>    <td >����</td>    <td >����</td>    <td  width='40' align='center'>�Ա�</td>    <td >���֤</td>    <td >�绰</td>    <td >����</td>    <td  width='90' align='center'>��Ƭ</td>    <td >������н</td>        
					
					<td width="140" height="50">���ʱ��</td>
					<td width="140" height="50">����</td>
		        </tr>
				<%
					int i=0;
				%>
				<c:forEach items="${requestScope.page.data}" var="yuangongxinxi" varStatus="sta">
				<%
					i++;
				%>
				<tr align="center" <%
  	if((i % 2)==0)
	{
		out.print("bgcolor='#F0F0F0'");
	}
	else
	{
		out.print("bgcolor='#FFFFFF'");
	}
	
	if((i % 2)==0)
	{
		%> onmouseover="this.style.backgroundColor='#F9DFEB'" onmouseout="this.style.backgroundColor='#F0F0F0'" <%
	}
	else
	{
		%> onmouseover="this.style.backgroundColor='#F9DFEB'" onmouseout="this.style.backgroundColor='#FFFFFF'" <%
	}
	
  %>>
					<td height="50"><%=i%></td>
					<td>${yuangongxinxi.gonghao}</td>    <td>${yuangongxinxi.mima}</td>    <td>${yuangongxinxi.xingming}</td>    <td align='center'>${yuangongxinxi.xingbie}</td>    <td>${yuangongxinxi.shenfenzheng}</td>    <td>${yuangongxinxi.dianhua}</td>    <td>${yuangongxinxi.bumen}</td>    <td width='90' align='center'><a href='${yuangongxinxi.zhaopian}' target='_blank'><img src='${yuangongxinxi.zhaopian}' width=88 height=99 border=0 /></a></td>    <td>${yuangongxinxi.jibenyuexin}</td>        
					
					<td height="50">${yuangongxinxi.addtime}</td>
					<td width="200px" height="50"  align="center">
						     <!--lianjie1--> <input type="button" value="��ϸ" onclick="yuangongxinxiDetail(${yuangongxinxi.id})" class="btn btn-info btn-small" />					</td>
				</tr>
				</c:forEach>
	</table>
			
			
			
			<%@ include file="hsgfenye.jsp"%> 
			
			
	</body>
</html>

