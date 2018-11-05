<!-- #include file="conn.asp" --> 
<%
cookie_shopid=Request.Cookies("shop_id")
if cookie_shopid="" then
response.Redirect("login.asp") 
Response.End
end if
addr=request.Form("addr")
u_name=request.Form("u_name")
tel=request.Form("tel")
count=request.Form("count")
Dim id()
ReDim id(count)
Dim gname()
ReDim gname(count)
Dim num()
ReDim num(count)
Dim price()
ReDim price(count)
for a=0 to (count-1)
id(a)=request.Form("id"&a)
gname(a)=request.Form("gname"&a)
num(a)=request.Form("num"&a)
response.write(num(a))
price(a)=request.Form("price"&a)
data=now()
sql="insert into order_list (username,addr,u_name,tel,goods_id,num,g_time) values ('"&cookie_shopid&"','"&addr&"','"&u_name&"','"&tel&"','"&id(a)&"','"&num(a)&"','"&data&"')"            
response.write(sql)
conn.Execute(sql)
next    

if conn.state=1 then
response.write("<script>alert('提交成功')</script>")
end if

response.Redirect("index.asp")             
%>
