<%@page import="com.sinosoft.platform.Application"%>
<%@page import="com.sinosoft.framework.User"%>
<%@page import="com.sinosoft.framework.data.QueryBuilder"%>
<%@page import="com.sinosoft.framework.utility.StringUtil"%>
<%@page import="com.sinosoft.cms.pub.SiteUtil"%>
<%
//判断是否登录
if(!User.isManager()||!User.isLogin()){
	StringBuffer sb = new StringBuffer();
	sb.append("document.write(\"<form id='formLoginVerify' name='formLoginVerify'>\");\n");
	sb.append("document.write(\"用户名：<input type='text' name='name' id='name' size='10'/>\");\n");
	sb.append("document.write(\"密码：<input type='password' name='code' id='code' size='10'/>&nbsp;\");\n");
	sb.append("document.write(\"<input type='button' class='btn' value='登录' onClick='doSysLogin()'/>&nbsp;\");\n");
	//sb.append("document.write(\"<input type='button' value='注册' onClick='doTopRegister()' class='btn' />&nbsp;\");\n");
	//sb.append("document.write(\"[<a href='javascript:void(0);' onClick='goShopCart();'>购物车</a>]&nbsp;\");\n");
	sb.append("document.write(\"</form>\");\n");
	out.println(sb.toString());
} else {
	StringBuffer sb = new StringBuffer();
	sb.append("document.write(\"<div id='loginMenu2'>\");\n");
	sb.append("document.write(\"<b>欢迎 " + User.getRealName() + "</b>&nbsp;\");\n");
	sb.append("document.write(\"[<a href='javascript:void(0);' onClick='goSystem();'>系统后台</a>]&nbsp;\");\n");
	/*if(SiteUtil.isShopEnable(cSiteID)){
		sb.append("document.write(\"[<a href='javascript:void(0);' onClick='goShopCart();'>购物车</a>]&nbsp;\");\n");
		sb.append("document.write(\"[<a href='javascript:void(0);' onClick='goFavorite();'>收藏夹</a>]&nbsp;</form>\");\n");
	}*/
	sb.append("document.write(\"[<a href='javascript:void(0);' onClick='doSysLogout();'>退出</a>]\");\n");
	sb.append("document.write(\"</div>\");\n");
	out.println(sb.toString());
}
%>