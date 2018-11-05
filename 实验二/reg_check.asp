<!-- #include file="conn.asp" --> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
</head>
<body>
<%
username=request.Form("username")
password=request.Form("password")

set rsc=server.createobject("adodb.recordset")
sql="select * from user_info where username='"&username&"'"
rsc.open sql,conn,1,1
'用户名不重复
if rsc.Eof or rsc.bof then
dsql="select * from user_info where id is null"
set rs=server.createobject("adodb.recordset")
rs.open dsql,conn,1,3
rs.addnew
rs("username")=username
rs("password")=password
rs.update
set rs=nothing
Response.Write("success")
Conn.Execute("create table "&username&"(goods_id int,count int)")

Response.Write( " <meta http-equiv= 'refresh'  content= '3;url=index.asp' > ")
'用户名重复
else
Response.Write("the username has been used!")
Response.Write( " <meta http-equiv= 'refresh'  content= '3;url=index.asp' > ")
end if


set rsc=nothing

conn.close() 
%>


</body>
</html> 