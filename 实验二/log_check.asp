<!-- #include file="conn.asp" --> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
</head>
<body>
<%
username=request.Form("username")
password=request.Form("password")

set rsc=server.createobject("adodb.recordset")
sql="select * from user_info where username='"&username&"'"
rsc.open sql,conn,1,1
'无账号
if rsc.Eof or rsc.bof then
Response.Write("username or password error!")
Response.Write( " <meta http-equiv= 'refresh'  content= '3;url=login.asp' > ")
else
'密码正确
if username=rsc("username") and password=rsc("password") then
Response.Write("Welcome!")
Response.Cookies("shop_id")=username
Response.Write( " <meta http-equiv= 'refresh'  content= '3;url=index.asp' > ")
else 
'密码错误
Response.Write("username or password error!")
Response.Write( " <meta http-equiv= 'refresh'  content= '3;url=login.asp' > ")
end if

end if

set rsc=nothing

conn.close() 
%>


</body>
</html> 