<!-- #include file="conn.asp" --> 
<%
cookie_shopid=Request.Cookies("shop_id")
if cookie_shopid="" then
response.Redirect("login.asp") 
Response.End
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>������ѯ</title>
</head>
<body>
<%
set rsc=server.createobject("adodb.recordset")

sql="select * from order_list where username = '"&cookie_shopid&"'"
rsc.open sql,conn,1,1
count=rsc.RecordCount
rsc.MoveFirst
%>
<center>
<table border="1">
<tr>
<th>�ջ���</th>
<th>�ֻ���</th>
<th>��Ʒ��</th>
<th>��Ʒ����</th>
<th>����ʱ��</th>
</tr>

<%
for a=0 to (count-1)
response.write("<tr>")
response.write("<td>"&rsc("u_name")&"</td>")
response.write("<td>"&rsc("tel")&"</td>")
set rs=server.createobject("adodb.recordset")
sql="select gname from goods_info where id="&rsc("goods_id")
rs.open sql,conn,1,1
response.write("<td>"&rs("gname")&"</td>")
response.write("<td>"&rsc("num")&"</td>")
response.write("<td>"&rsc("g_time")&"</td>")

response.write("</tr>")
rs.close
rsc.MoveNext
next
%>
</table>
</center>
</body>
</html>

