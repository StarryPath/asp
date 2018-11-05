<!-- #include file="conn.asp" -->
<%
cookie_shopid=Request.Cookies("shop_id")
if cookie_shopid="" then
response.Redirect("login.asp") 
Response.End
end if
url=Request.ServerVariables("HTTP_REFERER")
str=split(url,"=")
id=str(1)
sql="insert into "&cookie_shopid&" values("&id&",1)" 
conn.Execute(sql)
if conn.state=1 then
response.write("<script>alert('Ìí¼Ó³É¹¦')</script>")
end if

Response.Write( " <meta http-equiv= 'refresh'  content= '0;url="&url&"' > ")
%>