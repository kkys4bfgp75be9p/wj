<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<title></title>
<script src="../Framework/Main.js"></script>
<link href="../Include/Default.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body class="dialogBody">
<form id="form_Add">
<table width="100%" height="123" cellpadding="3" cellspacing="0">
	<tr>
		<td width="12" colspan="3" height="10"></td>
	</tr>
	<tr>
		<td width="12"></td>
		<td align="right">关键词：</td>
		<td><input name="Keyword_Add" type="text" value="" class="input1"
			id="Keyword_Add" verify="关键词|NotNull" size=25 /> <input name="ID"
			type="hidden" id="ID" /></td>
	</tr>
	<tr>
		<td></td>
		<td align="right">等级：</td>
		<td><select id="level_Add" name="level_Add" >
						<option value="1">Level 1</option>
						<option value="2">Level 2</option>
						<option value="3">Level 3</option>
						<option value="4">Level 4</option>
						<option value="5" selected>Level 5</option>
						<option value="6">Level 6</option>
						<option value="7">Level 7</option>
						<option value="8">Level 8</option>
						<option value="9">Level 9</option>
					</select></td>
	</tr>
	<tr>
		<td height="5" align="right"></td>
		<td height="5"></td>
	</tr>
</table>
</form>
</body>
</html>