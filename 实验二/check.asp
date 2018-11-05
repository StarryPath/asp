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
<title>订单提交</title>
</head>
<body>
<form name="form" method="post" action="check_info.asp">
收货地址：&nbsp;&nbsp;&nbsp;<input name="addr" type="text" id="addr" size="75">
<br>
<br>
收货人姓名：<input name="u_name" type="text" id="u_name" size="15">
<br>
<br>
手机号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="tel" type="text" id="tel" size="15">
<br>
<br>
商品种类：
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

response.write("商品名称：<input   style= 'background-color:transparent;border:none;outline:medium;' type='text' id='gname"&a&"' value='"&gname(a)&"'  />")
num(a)=request.Form(""&a)

response.write("商品数量：<input   style= 'background-color:transparent;border:none;outline:medium;' type='text' name='num"&a&"' id='num"&a&"' value='"&num(a)&"' size=""5"" />")
sql="select price from goods_info where id ="&id(a)&""
rsc.open sql,conn,1,1
price(a)=rsc("price")
sum=num(a)*price(a)+sum
response.write("商品价格：<input   style= 'background-color:transparent;border:none;outline:medium;' type='text' id='price"&a&"' value='"&price(a)&"'  /><br><br>")
rsc.close
next
response.write("总价：<input   style= 'background-color:transparent;border:none;outline:medium;' type='text' id='sum' value='"&sum&"'  /><br><br>")
%>

<input type="submit" name="Submit" value="提交订单">
<br>
</form>
</body>
</html>