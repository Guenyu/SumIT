<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join us !!</title>
<script type="text/javascript">
	function chk() {
		if (!frm.emaill.value) {
			alert("E-Mail을 입력하세요.");
			frm.email.focus();
		}
		if (!frm.ID.value) {
			alert("아이디를 입력하세요.");
			frm.ID.focus();
		}
		if (frm.ID.length < 5) {
			alert("아이디는 5자리 이상 15자리 이하로 입력하세요.");
			frm.ID.focus();
			frm.ID.value = "";
		}
		if (!frm.name.value) {
			alert("이름을 입력하세요");
			frm.name.focus();
		}
		if (!frm.phone.value) {
			alert("전화 번호를 입력하세요.");
			frm.phone.focus();

		}
		if (isNaN(frm.phone.value)) {
			alert("전화 번호는 숫자로 입력하세요.");
			frm.phone.focus();
			frm.phone.value = "";
		}
		if (!frm.password.value) {
			alert("암호를 입력하세요.");
			frm.password.focus();

		}
		if (frm.password.value != frm.VarifyingPassword.value) {
			alert("암호를 맞춰주세요.");
			frm.VarifyingPassword.focus();
			frm.VarifyingPassword.value = "";
		}
		if (frm.password.length < 8) {
			alert("암호는 8자리 이상 20자리 이하로 입력하세요.");
			frm.password.focus();
			frm.password.value = "";
		}
		if (isNaN(frm.phone.value)) {
			alert("전화 번호는 숫자로 입력하세요.");
			frm.phone.focus();
			frm.phone.value = "";
		}
		if (!frm.phone.value) {
			alert("전화 번호를 입력하세요.");
			frm.phone.focus();
		} else
			action = "CreatePro.jsp"
	}
	function emailcheck() {
		window.open("emailcheck.jsp?email=" + frm.email.value, "",
				"width=300 height = 300");
	}
	function IDCheck() {
		window.open("IDCheck.jsp?ID=" + frm.ID.value, "",
				"width=300 height = 300");
	}
</script>
</head>
<body>
	<form action="CreatePro.jsp" name="frm">
		<table>
			<tr>
				<td>E-mail</td>
				<td><input type="email" name="email" required="required"
					maxlength="30" placeholder="E-Mail"></td>
				<td>&nbsp; <input type="button" value="Redundancy check"
					onclick="emailcheck()" required="required"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="ID" required="required"
					maxlength="15" placeholder="아이디"></td>
				<td>&nbsp; <input type="button" value="Redundancy check"
					onclick="IDCheck()" required="required"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" required="required"
					maxlength="20" placeholder="이름"></td>
			</tr>
			<tr>
				<td>암호</td>
				<td><input type="password" name="password" required="required"
					maxlength="30" placeholder="암호"></td>
			</tr>
			<tr>
				<td>암호 확인</td>
				<td><input type="password" name="VarifyingPassword"
					required="required" maxlength="30" placeholder="암호 확인"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="tel" name="phone" required="required"
					maxlength="20" placeholder="연락처"></td>
			</tr>
			<tr>
				<td colspan="2"><button onclick="chk()">확인</button></td>
				<td><button onclick="location.href='Cover.jsp'">돌아가기</button></td>
			</tr>
		</table>
	</form>
</body>
</html>