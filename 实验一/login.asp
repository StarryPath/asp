<%
cookie_shopid=Request.Cookies("shop_id")
if cookie_shopid<>"" then
response.Redirect("index.asp") 
Response.End
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
</head>
<body>
<center>
<p>用户登录</p>
<br>
<form name="form" method="post" action="log_check.asp">
用户名:<input name="username" type="text" id="username" size="15">
<br>
<br>
<br>
密 码:<input name="password" type="password" id="password" size="15">
<br>
<br>

<input type="submit" name="Submit" value="确定">
</form>
<a href="register.asp">注册账号</a>
</center>


</body>
</html> 