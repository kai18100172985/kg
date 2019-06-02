<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
		 

<nav class="top ">
	<a href="forehome">
		<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon-home redColor"></span>
		凯购首页
	</a>
	
<!-- 	<a href="admin" id="admin">
		<span style="color:#C40000;margin:0px"></span>
		后台管理
	</a> -->

	<span>喵，欢迎来凯购</span>

	<c:if test="${!empty user}">
		<a href="loginPage">${user.name}</a>
			<a href="forelogout">退出</a>
		    <c:if test="${user.name=='hekai'}">
			<a href="admin" id="admin">
		          <span style="color:#C40000;margin:0px"></span>
		                        后台管理
	</a> 
		   </c:if>
	</c:if>

	<c:if test="${empty user}">
		<a href="loginPage">请登录</a>
		<a href="registerPage">免费注册</a>
	</c:if>


	<span class="pull-right">
			<a href="forebought">我的订单</a>
			<a href="forecart">
			<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon-shopping-cart redColor"></span>
			购物车<strong>${cartTotalItemNumber}</strong>件</a>
		</span>


</nav>

