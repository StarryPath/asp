<!-- #include file="conn.asp" --> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>搜索结果</title>
</head>
<body>
<%
search=request.Form("search")

response.write("<center>关键词："&search&"</center>")
response.write("<br>")
set rsc=server.createobject("adodb.recordset")
sql="select * from goods_info where gname like '%"&search&"%'"
rsc.open sql,conn,1,1
if rsc.Eof or rsc.bof then
response.write("无匹配结果")
else
count=rsc.RecordCount
rsc.MoveFirst
response.write("<ul style='padding:1px 0 1px 1px; list-style:none; margin:0; margin:0 auto; width:749px;  overflow:hidden'>")
dim a
for a=1 to count

response.write("<li style='padding:2px 1px 1px 2px; float:left; list-style:none; margin:0; width:184px; height:270px'>")
response.write("<div style=' padding:1px; margin:0;background:#FFF; height:265px; width:180px; border:1px solid #7C2A2E; overflow:hidden'>")
response.write("<h3 style='padding:0; margin:0; height:24px; width:180px; overflow:hidden; font-weight:bold; line-height:24px; color:#333; font-family:'\5FAE\8F6F\96C5\9ED1'; text-align:center;font-size:14px;'><a href='details.asp?id="&rsc("id")&"' target='_blank' style='text-decoration:none;color:#333;'>"&rsc("gname")&"</a></h3>")
response.write("<div style=' width:170px; height:177px; padding:5px 5px 19px 5px; background:#FFF url(images/hua.jpg) repeat-x 0 192px; overflow:hidden; text-align:center;'><a href='details.asp?id="&rsc("id")&"' target='_blank'><img src="&rsc("img_url")&" width='170' height='177' /></a></div>")
response.write("<div style=' border:1px solid #0E502F; background:#026C32; width:178px; height:38px; overflow:hidden'>")
response.write("<div style='line-height:18px; text-align:left; float:left; padding:2px 0 0 2px; color:#FFF; width:64px; overflow:hidden'>")
response.write("<br />现价：</div>")
response.write("<div style='color:#FBD11F; font-size:24px; float:left; width:64px; height:38px; text-align:center; line-height:38px;font-family:'Arial Black', Gadget, sans-serif; font-weight:bold; overflow:hidden'>"&rsc("price")&"</div>")
response.write("<div style='float:right; line-height:16px; height:34px; padding-top:2px; text-align:center; width:40px; font-size:16px; font-weight:bold; color:#FFF; font-family:'\9ED1\4F53'; background:#B90D14; border:1px solid #603732'><a href='details.asp?id="&rsc("id")&"' target='_blank' style=' color:#FFF; text-decoration:none'>立即<br />抢购</a></div>")
response.write("</div>        </div>    </li>")
rsc.MoveNext
next
response.write("</ul>")
end if
%>
<br>

</body>
</html>



