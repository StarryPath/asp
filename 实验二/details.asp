<!-- #include file="conn.asp" --> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>商品详情</title>
<style> 
html{width:100%;height:100%;} 
body{background:#fff;font-size:18px;font-family:"Arial", "Tahoma", "微软雅黑", "雅黑";
line-height:18px;padding:0px;margin:0px;text-align:center} 
div{padding:18px} 
img{border:0px;vertical-align:middle;padding:0;margin:0} 
input, button{font-family:"Arial", "Tahoma", "微软雅黑", "雅黑";border:0;
vertical-align:middle;margin:8px;line-height:18px;font-size:18px} 
.btn{width:140px;height:36px;line-height:18px;font-size:18px;
background:url("bg26.jpg") no-repeat left top;color:#FFF;padding-bottom:4px} 
</style> 
</head>
<body>
<br><br>
<center>
<%
id=Request.QueryString("id")
set rsc=server.createobject("adodb.recordset")
sql="select * from goods_info where id="&id
rsc.open sql,conn,1,1
response.write("商品名：")
response.write(rsc("gname"))
%>
<br>
<br>
<%
response.write("<img src="&rsc("img_url")&" width='370' height='377' /></a>")
%>
<br><br>
<%
response.write("商品描述：")
%>
<br><br>
<%
response.write("<ul style='padding:1px 0 1px 1px; list-style:none; margin:0; margin:0 auto; width:749px;  overflow:hidden'>")
response.write(rsc("descript"))
response.write("</ul>")
%>
<br><br>
<%
response.write("价格：")
response.write(rsc("price"))
%>
</center>
<br>
 <a  href="add.asp"><img class="img_s" src="shopping.png"   >  </a>
</body>
</html>