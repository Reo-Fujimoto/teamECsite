<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/complete.css">
<title>登録完了</title>
<script type="text/javascript">
      window.onload = function(){
             var form = document.getElementById('form1');
             setTimeout(function(){form.submit()},3000);
      }
</script>
</head>
<body>
	<s:include value="header.jsp"/>
	<div id="contents">
	<h1>ユーザー情報入力完了画面</h1>
	<div class="success">
	ユーザー登録が完了しました。
	</div>
	</div>
	<s:form id="form1" action="LoginAction">
	        <s:hidden name="loginId" value="%{#session.loginId}"/>
	        <s:hidden name="password" value="%{#session.password}"/>
	</s:form>
	<div id="footer">
	        <s:include value="footer.jsp"/>
	</div>
</body>
</html>