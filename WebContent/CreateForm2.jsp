<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="comm.css">
<script type="text/javascript">
	function chk(n) {
		if (n == 1) {
			frm.action ="CreatePro.jsp";
		}
		return true;
	}
	function emailcheck() {
		window.open("emailcheck.jsp?email=" + frm.email.value, "",
				"width=300 height = 300");
	
	}
	function IDCheck() {
		window.open("IDCheck.jsp?ID=" + frm.ID.value, "",
				"width=300 height = 300");
	}
	function chk() {
		if (!frm.name.value) {
			alert("이름을 입력하세요.");
			frm.name.focus();
			return false;
		}
		if(frm.ID.length<5) {
			alert("ID는 5자리 이상 15자리 이하로 입력하세요.");
			frm.ID.focus();
			return false;
		}
		if (isNaN(frm.phone.value)) {
			alert("전화 번호는 숫자로 입력하세요.");
			frm.phone.focus();
			frm.phone.value = "";
			return false;
		} 
		if (!frm.phone.value) {
			alert("전화 번호를 입력하세요.");
			frm.phone.focus();
			return false;
		}
		if (!frm.password.value) {
			alert("암호를 입력하세요.");
			frm.password.focus();
			return false;
		}
		if (frm.password.value != frm.VarifyingPassword.value) {
			alert("암호를 맞춰주세요.");
			frm.VarifyingPassword.focus();
			frm.VarifyingPassword.value="";
			return false;
		}
		if (frm.password.length < 8) {
			alert("암호는 8자리 이상 20자리 이하로 입력하세요.");
			frm.password.focus();
			frm.password.value = "";
			return false;
		}
	return true;
	}
</script>
</head>
<body>

	<img alt="" src="images/CMlogohomebt.png" width="100" height="100"
		onclick="location.href='Cover.jsp'" onmouseover="">
	<div id="createForm1">
		<img alt="" src="images/CMlogoom.png" width="200" height="200"
			onclick="location.href='Cover.jsp'">
	</div>
	<form name="frm" action="CreatePro.jsp" onsubmit="return chk()">
		<div id="createForm2">
			<table>
				<tr>
					<th>Name</th>
					<td colspan="2"><input type="text" name="name"
						required="required" placeholder="Name" maxlength="10"></td>
				</tr>
				<tr>
					<th>E-mail</th>
					<td colspan="2"><input type="email"  name="email" required="required"
						placeholder="e-mail"></td>
					<td>&nbsp; <input type="button" value="Redundancy check"
						onclick="emailcheck()">
					</td>
				</tr>
				<tr>
					<th>ID</th>
					<td colspan="2"><input type="text"  name="ID" required="required" maxlength = "15"
						placeholder="ID"></td>
					<td>&nbsp; <input type="button" value="Redundancy check"
						onclick="IDCheck()">
					</td>
				</tr>
				<tr>
					<th>Password</th>
					<td colspan="2"><input type="password" name="password" maxlength = "30"
						required="required" placeholder="Password"></td>
				</tr>
				<tr>
					<th>Varifying Password</th>
					<td colspan="2"><input type="password"
						name="VarifyingPassword" maxlength = "30" required="required"
						placeholder="Varifying Password"></td>
				</tr>
				<tr>
					<th>Phone</th>
					<td colspan="2"><input type="tel" name="phone" maxlength="20"
						placeholder="phone ( - 없이 입력 )" required="required"></td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<button onclick="CreatePro.jsp">확인</button> &nbsp
						<button onclick="location.href='Cover.jsp'">취소</button>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>

</html>