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
<script type="text/javascript">
        /**
        * 购物车加减按钮
        * @param txt_id 数量的ID
        * @param type 加 + 减 -
        * @param num 添加或者减少的数量 默认为一
        */
        function cart_number(sum,one,txt_id, type, num)
        {
        num = num || 1;
		
		var sum=document.getElementById(sum);
		var one=document.getElementById(one);
        var txt = document.getElementById(txt_id);
        var source_num = parseInt(txt.value);
        if(source_num == 1 && type == '-')
        {
        alert('请最少购买一个商品');
        return;
        }
        var to_num = source_num;
        if(type == '+')
        {
        to_num += parseInt(num);
        }
        else if(type == '-')
        {
        to_num -= num;
        }
         
        txt.value = to_num;
		
		sum.value=to_num*one.value;
		check();
        }
		
</script>
<title>购物车</title>
    <style>
        body{
            background:#FAFAD2;
            margin:0px;
            padding:0px;
            font-size:12px;
            font-family:Verdana, Geneva, sans-serif;

        }
		

        
         <!--中间体-->
        #middle{
            margin:0px;
            padding:0px;
            height:750px;
            text-align:left;/*表示header中的文本内容左对齐*/
            background:#FFF;
        }
        #m1{
            margin:0px;
            padding:0px;
            background:#FFF;
            height:100px;
        }
        
        #m1 img{
            margin-top:10px;
            margin-left:100px;
        }
        #m1 #search{
            margin-top:-60px;
            margin-left:820px;            
            height:40px;
            
        }
        
        
        #m1 .txt{
            padding:10px 25px;
            text-align:left;
            font-size:14px;
        }
        #m1 .button{
            padding:9px 16px;
            margin-left:-5px;
            background:#F00;
            color:#FFF;
            font-size:14px;
            font-weight:800;
        }
        #m2{
            margin:0px;
            padding:0px;
            background:#FFF;
            height:50px;
        }
        #m2 ul{
            margin-left:40px;
            list-style-type:none;
            float:left;
            
        }
        #m2 ul li{
            margin-top:-2px;
            padding:10px 20px;
            float:left;
            font-size:18px;
            font-weight:580;
            
        }
        #m2 ul li a{
            text-decoration:none;
            color:#000;
        }
        #m2 ul li a:hover{
            color:#F00;
        }
        #m2 table{
            
            padding-left:650px;
            height:50px;
            background:#FFF;
        }
        
        #m3{
            margin:0px 90px;
            padding:0px;
            background:#F1F1F1;
            width:1020px;
            height:40px;
        }
        #m3 img{
            margin-left:10px;
            margin-top:-16px;
        }
        
        #m4{
            
            margin:0px 90px;
            padding:0px;
            width:1020px;
            
            background:#FCF;
            height:120px;
            float:left;
        }
		
        #m4 ul li{
            list-style-type:none;
        }
        
        #m4 .c1{
            
            padding:15px;
            width:100px;
            float:left;
        }
		#m4 .c1 img{
            width:75px;
            height:75px;
        }
        #m4 .c2{
            
            padding-top:10px;
            margin-left:-60px;
            float:left;
        }
        #m4 .c2 img{
            width:15px;
            height:11px;
        }
        #m4 .c2 a{
            color:#999;
            font-weight:500;
            text-decoration:none;
        }
        #m4 .c2 a:hover{
            color:#F00;
        }
        #m4 .c3{
            
            padding-top:10px;
            float:left;
        }
        #m4 .c4{
            
            padding:10px 10px 30px 40px;
            float:left;
        }
		#m4 .c4 input{border:none;
		outline:medium;}
        #m4 .c5{
            padding:20px 20px 100px 20px;
            
            float:left;
        }
        #m4 .c5 table{
            border-collapse:collapse;
        }
        
        #m4 .c5 table td{
            border:#666 solid thin;
        }
        
        #m4 .c6{
            padding-top:10px;
            padding-right:30px;
            float:left;
        }
		#m4 .c6 input{border:none;
		outline:medium;}
        #m4 .c7{
            padding-top:10px;
            float:left;
        }
        #m4 .c7 ul li a{
            color:#666;
            text-decoration:none;
        }
        #m4 .c7 ul li a:hover{
            color:#F00;
        }
        
        #m5{
            margin:0px 90px;
            padding:0px;
            border:#CCC thin solid;
            height:50px;
            width:1020px;
            float:left;
        }
        #m5 .c1 ul{
            padding-left:10px;
            list-style-type:none;
        }
        #m5 .c1 ul li{
            padding:3px;
            float:left;
            color:#666;
        }
        #m5 .c1 a{
            text-decoration:none;
            color:#666;
        }
        #m5 .c1 a:hover{
            color:#F00;
        }
        
        #m5 .c2{
            margin-top:-11px;
            height:50px;
            
        }
		#m5 .c2 input{border:none;
		outline:medium;}
        #m5 .c2 ul{
            height:20px;
            color:#666;
            margin-top:0px;
            float:left;
            margin-left:300px;
            list-style-type:none;
        }
        
        #m5 .c2 ul li{
            float:left;
            width:80px;
        }
        #m5 #L0{
            margin-left:75px;
            width:30px;
            height:20px;
            
            color:#666;
        }
        #m5 #L1{
            margin-top:-5px;
            width:100px;
            height:30px;
            
            font-size:18px;
            color:#F00;
            
        }
        #m5 #L2{
            margin-top:-11px;
            margin-left:10px;
            padding:10px;
            padding-left:20px;
            width:120px;
            background:#F00;
            font-size:20px;
            font-weight:800;
            color:#FFF;
            
        }
        #m6{
            margin:0px 90px;
            padding:0px;
            
            height:50px;
            width:1020px;
            float:left;
        }
        #m6 ul{
            list-style-type:none;
            margin-left:-25px;
            margin-top:30px;
        }
        
        #m6 ul li{
            float:left;
            width:80px;
        }
        #m6 ul li a{
            text-decoration:none;
            
        }
        #m6 ul li a:hover{
            color:#F00;
            
        }
        
        #m7{
            margin:0px 90px;
            padding:0px;
            border:#CCC thin dashed;
            height:300px;
            width:1020px;
            float:left;
        }
        #m7 ul{
            list-style-type:none;
        }
        #m7 ul li{
            margin-left:-10px;
            float:left;
            width:250px;
        }
        #m8{
            
            margin:0px 90px;
            padding:0px;
            
            height:30px;
            width:1020px;
            float:left;
        }
        #m8 ul{
            
            width:1000px;
            height:25px;
            
            margin-top:-40px;
            margin-left:20px;
            
            list-style-type:none;
        }
        #m8 ul li{
            
            margin-left:0px;
            float:left;
            width:250px;
        }
        

        
                
            
        
        
        
        
            
            
    </style>

</head>

<%
set rsc=server.createobject("adodb.recordset")
sql="select * from "&cookie_shopid

rsc.open sql,conn,1,1
count=rsc.RecordCount
if rsc.Eof or rsc.bof then
response.write("购物车是空的")
Response.End
else
rsc.MoveFirst

Dim myArray()
ReDim myArray(count)


dim a
for a=0 to (count-1)


myArray(a)=rsc("goods_id")
rsc.MoveNext

next
set rs=server.createobject("adodb.recordset")
Dim gname()
ReDim gname(count)
Dim price()
ReDim price(count)
Dim img_url()
ReDim img_url(count)

for a=0 to (count-1)
sql="select * from goods_info where id="&myArray(a)
rs.open sql,conn,1,1
gname(a)=rs("gname")
price(a)=rs("price")
img_url(a)=rs("img_url")
rs.close
next
%>

<body onload="check()">
    

     <!--中间部分-->   
     <div id='middle'>
         
        
        <div id='m2'>
            <ul>
                <li><a href='#' style="color:#F00">全部商品</a></li>
                
            </ul>
            <table>
            
            </table>
        </div>
        
        <div id='m3'>
		</div>
        
        
        <form name="form" method="post" action="check.asp">
<%
response.write("<input name='count' id='count' type='hidden' value='"&count&"'>")
for a=0 to (count-1)
response.write("<input name='id"&a&"' id='id' type='hidden' value='"&myArray(a)&"'>")
response.write("<input name='gname"&a&"' id='gname' type='hidden' value='"&gname(a)&"'>")
response.write("<div id='m4'><div class='c1'><img src='"&img_url(a)&"'></div>")
response.write("<div class='c2'><ul><li>"&gname(a)&"</li></ul></div><div class='c3'><ul></ul></div>")

response.write("<div class='c4'><ul>单价："&"<input   style= 'background-color:transparent 'type='text' id='one"&a&"' value='"&price(a)&"' size=""5"" />"&"</ul></div>")
response.write("<div class='c5'><label><input name='down' type='button' id='down' value='-'  onclick=""cart_number('sum"&a&"','one"&a&"','"&a&"','-','1');""/></label>")
response.write("<label><input name='"&a&"' type='text' id='"&a&"' value='1' size='5' /></label>")
response.write("<label><input name='up' type='button' id='up' value='+'  onclick=""cart_number('sum"&a&"','one"&a&"','"&a&"','+','1');""/></label></div>")

response.write("<div class='c6'><ul>合计："&"<input  style= 'background-color:transparent ' type='text' id='sum"&a&"' value='"&price(a)&"' size=""5"" />"&"</ul></div>")
response.write("<div class='c7'><ul><li><a href='delete.asp?id="&myArray(a)&"'>删除</a></li></ul></div></div>")
next
end if
%>		
        
       
		
        <div id='m5'>
            <div class="c1">
                <ul>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                </ul>
            </div>
            
            <div class='c2'>
                <ul>
                    <li></li>
                    <li id='L0'>总价:</li>
					
                    <li id="L1"><input  style= 'background-color:transparent ' type='text' id='last_sum' value=''></li>
					<input id='L2' type="submit" name="Submit" value="去结算">
                    
                </ul>
            </div>
        
        </div>
        </form>
        
         
    </div>
    
    
    
    


</body>
<script type="text/javascript">
	function check()
		{
		var count=document.getElementById("count");
		
		var count=count.value;
		var sum=0.0;
		for (var i=0;i<count;i++)
		{ 
			sum=Number(sum)+Number(document.getElementById("sum"+i).value);
		}
		var last_sum=document.getElementById("last_sum");
		last_sum.value=sum;
		
		
		}
</script>
</html>