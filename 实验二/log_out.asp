<!-- #include file="conn.asp" --> 
<%
cookie_shopid=Request.Cookies("shop_id")
if cookie_shopid="" then
response.Redirect("login.asp") 
Response.End
end if
response.Cookies("shop_id")=""
response.Redirect("index.asp") 
%>