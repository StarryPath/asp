<!-- #include file="conn.asp" --> 
<%
cookie_shopid=Request.Cookies("shop_id")
if cookie_shopid="" then
response.Redirect("login.asp") 
Response.End
end if
%>
<%
id=Request.QueryString("id")
sql="delete from "&cookie_shopid&" where goods_id="&id
conn.execute(sql)
if conn.state=1 then
response.write("<script>alert('提交成功')</script>")
end if

response.Redirect("car.asp") 
%>