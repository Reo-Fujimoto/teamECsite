<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css" />
<link rel="stylesheet" href="./css/table.css">
<link rel="stylesheet" href="./css/form.css">
<title>ユーザー情報入力</title>

</head>
<body>
	<s:include value="header.jsp" />
	<div id="contents">
		<h1>ユーザー情報入力画面</h1>

		<s:if test="!isExistErrorMessage.equals('')">
		<div class="error">
				<div class="error-message">
			<s:property value="isExistErrorMessage" />
				</div>
		</div>
		</s:if>

		<s:if test="!familyNameErrorMessageList.isEmpty()">
			<div class="error">
				<div class="error-message">
					<s:iterator value="familyNameErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if test="!firstNameErrorMessageList.isEmpty()">
			<div class="error">
				<div class="error-message">
					<s:iterator value="firstNameErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if test="!familyNameKanaErrorMessageList.isEmpty()">
			<div class="error">
				<div class="error-message">
					<s:iterator value="familyNameKanaErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if test="!firstNameKanaErrorMessageList.isEmpty()">
			<div class="error">
				<div class="error-message">
					<s:iterator value="firstNameKanaErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if test="!emailErrorMessageList.isEmpty()">
			<div class="error">
				<div class="error-message">
					<s:iterator value="emailErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if test="!loginIdErrorMessageList.isEmpty()">
			<div class="error">
				<div class="error-message">
					<s:iterator value="loginIdErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if test="!passwordErrorMessageList.isEmpty()">
			<div class="error">
				<div class="error-message">
					<s:iterator value="passwordErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>

		<s:form action="CreateUserConfirmAction">

			<table class="vertical-list-table">
				<tr>
					<th scope="row">姓</th>
					<td><div class="txt-box"><s:textfield name="familyName" value="%{familyName}"
							label="姓" placeholder="姓" class="form-txt" /></div></td>
				</tr>

				<tr>
					<th scope="row">名</th>
					<td><div class="txt-box"><s:textfield name="firstName" class="form-txt" value="%{firstName}"
							label="名" placeholder="名" /></div></td>
				</tr>

				<tr>
					<th scope="row">姓ふりがな</th>
					<td><div class="txt-box"><s:textfield name="familyNameKana"
							value="%{familyNameKana}" label="姓ふりがな" placeholder="姓ふりがな"
							class="form-txt" /></div></td>
				</tr>

				<tr>
					<th scope="row">名ふりがな</th>
					<td><div class="txt-box"><s:textfield name="firstNameKana" value="%{firstNameKana}"
							label="名ふりがな" placeholder="名ふりがな" class="form-txt" /></div></td>
				</tr>

				<tr>
					<th scope="row">性別</th>
					<td><div class="txt-box"><s:radio name="sex" class="radio" list="%{#session.sexList}" value="%{sex}"
							label="性別"/></div></td>
				</tr>

				<tr>
					<th scope="row">メールアドレス</th>
					<td><div class="txt-box"><s:textfield name="email" value="%{email}" label="メールアドレス"
							placeholder="メールアドレス" class="form-txt" /></div></td>
				</tr>

				<tr>
					<th scope="row">ユーザーID</th>
					<td><div class="txt-box"><s:textfield name="loginId" value="%{loginId}"
							label="ユーザーID" placeholder="ユーザーID" class="form-txt" /></div></td>
				</tr>

				<tr>
					<th scope="row">パスワード</th>
					<td><div class="txt-box"><s:password name="password" label="パスワード"
							placeholder="パスワード" class="form-txt" /></div></td>
				</tr>

			</table>
			<div class="submit_btn_box">
					<s:submit value="確認" class="submit_btn" />
			</div>
		</s:form>
	</div>
	<div id="footer">
		<s:include value="footer.jsp" />
	</div>
</body>
</html>