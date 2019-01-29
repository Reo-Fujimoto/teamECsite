<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/table.css">
<title>登録内容確認</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
	function submitAction(url) {
		$('form').attr('action', url);
		$('form').submit();
	}
</script>
</head>
<body>
	<s:include value="header.jsp" />
	<div id="contents">
		<h1>ユーザー情報入力確認画面</h1>


		<s:form>
			<table class="vertical-list-table"><!-- vertical-list-table form2 -->
				<tr>
					<th scope="row"><s:label value="姓" /></th>
					<td><div class="txt"><s:property value="%{#session.familyName}" /></div></td>
					<td><s:hidden name="familyName" value="%{familyName}"/></td>
				</tr>
				<tr>
					<th scope="row"><s:label value="名" /></th>
					<td><div class="txt"><s:property value="%{#session.firstName}" /></div></td>
					<td><s:hidden name="firstName" value="firstName"/></td>
				</tr>
				<tr>
					<th scope="row"><s:label value="姓ふりがな" /></th>
					<td><div class="txt"><s:property value="%{#session.familyNameKana}" /></div></td>
					<td><s:hidden name="familyNameKana" value="%{familyNameKana}"/></td>
				</tr>
				<tr>
					<th scope="row"><s:label value="名ふりがな" /></th>
					<td><div class="txt"><s:property value="%{#session.firstNameKana}" /></div></td>
					<td><s:hidden name="firstNameKana" value="%{firstNameKana}"/></td>
				</tr>
				<tr>
					<th scope="row"><s:label value="性別" /></th>
					<td><div class="txt"><s:property value="%{#session.sex}" /></div></td>
					<s:if test='sex.equals("男性")'>
						<td><s:hidden name="sex" value="男性"/></td>
					</s:if>
					<s:if test='sex.equals("女性")'>
						<td><s:hidden name="sex" value="女性"/></td>
					</s:if>
				</tr>
				<tr>
					<th scope="row"><s:label value="メールアドレス" /></th>
					<td><div class="txt"><s:property value="%{#session.email}" /></div></td>
					<td><s:hidden name="email" value="%{email}"/></td>
				</tr>
				<tr>
					<th scope="row"><s:label value="ユーザーID" /></th>
					<td><div class="txt"><s:property value="%{#session.loginId}" /></div></td>
					<td><s:hidden name="loginId" value="%{loginId}"/></td>
				</tr>
				<tr>
					<th scope="row"><s:label value="パスワード" /></th>
					<td><div class="txt"><s:property value="%{#session.password}" /></div></td>
				</tr>
			</table>

	<div class="submit_btn_box">
			<input type="button" class="submit_btn" value="登録" onclick="submitAction('CreateUserCompleteAction')" />
			</div>

			<input type="button" class="submit_btn" value="戻る" onclick="submitAction('CreateUserAction')" />

	</s:form>
	</div>


	<div id="footer">
		<s:include value="footer.jsp" />
	</div>
</body>
</html>