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
<title>�����ύ</title>
</head>
<body>
<form name="form" method="post" action="check_info.asp">
�ջ���ַ��&nbsp;&nbsp;&nbsp;<input name="addr" type="text" id="addr" size="75">
<br>
<br>
�ջ���������<input name="u_name" type="text" id="u_name" size="15">
<br>
<br>
�ֻ��ţ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="tel" type="text" id="tel" size="15">
<br>
<br>
��Ʒ���ࣺ
<%
count=request.Form("count")
response.write(count&"<br><br>")
response.write("<input name='count' id='count' type='hidden' value='"&count&"'>")
Dim id()
ReDim id(count)
Dim gname()
ReDim gname(count)
Dim num()
ReDim num(count)
Dim price()
ReDim price(count)
%>
<%

set rsc=server.createobject("adodb.recordset")
sum=0
for a=0 to (count-1)
id(a)=request.Form("id"&a)
response.write("<input name='id"&a&"' id='id"&a&"' type='hidden' value='"&id(a)&"'>")
gname(a)=request.Form("gname"&a)

response.write("��Ʒ���ƣ�<input   style= 'background-color:transparent;border:none;outline:medium;' type='text' id='gname"&a&"' value='"&gname(a)&"'  />")
num(a)=request.Form(""&a)

response.write("��Ʒ������<input   style= 'background-color:transparent;border:none;outline:medium;' type='text' name='num"&a&"' id='num"&a&"' value='"&num(a)&"' size=""5"" />")
sql="select price from goods_info where id ="&id(a)&""
rsc.open sql,conn,1,1
price(a)=rsc("price")
sum=num(a)*price(a)+sum
response.write("��Ʒ�۸�<input   style= 'background-color:transparent;border:none;outline:medium;' type='text' id='price"&a&"' value='"&price(a)&"'  /><br><br>")
rsc.close
next
response.write("�ܼۣ�<input   style= 'background-color:transparent;border:none;outline:medium;' type='text' id='sum' value='"&sum&"'  /><br><br>")
%>

<input type="submit" name="Submit" value="�ύ����">
<br>
</form>
</body>
</html>