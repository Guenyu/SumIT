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
			frm.action = "CreatePro.jsp";
		}
		return true;
	}
</script>
</head>
<body>

	<img alt="" src="images/CMlogohomebt.png" width="100" height="100"
		onclick="location.href='../Cover.html'" onmouseover="">
	<div id="createForm1">
		<img alt="" src="images/CMlogoom.png" width="200" height="200"
			onclick="location.href='Menu.html'">
	</div>
	<form name="frm" onsubmit="return chk(n)">
		<div id="createForm2">
			<table>
				<tr>
					<th>E-mail</th>
					<td colspan="2"><input type="email" required="required"
						placeholder="e-mail" name="email">&nbsp; <input type="button" value="Redundancy check" onclick="select_member_check();" /></td>
				</tr>
				<tr>
					<th>Password</th>
					<td colspan="2"><input type="password" name="password"
						required="required" placeholder="Password"></td>
				</tr>
				<tr>
					<th>Phone</th>
					<td colspan="2"><input type="tel" name="phone" maxlength="12"
						placeholder="phone" required="required"></td>
				</tr>

				<tr>
					<th>Name</th>
					<td colspan="2"><input type="text" name="name"
						required="required" placeholder="Name" maxlength="10"></td>
				</tr>

				<tr>
					<td colspan="3" align="center">
						<button onclick="chk(1)">확인</button> &nbsp
						<button onclick="location.href='Menu.html'">취소</button>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>

</html>