<%  
set cnn1 = Server.CreateObject("ADODB.Connection")     
cnn1.Open "Provider=SQLOLEDB.1;Password=19980724;Persist Security Info=True;User ID=sa;Initial Catalog=shop;Data Source=PC-201709021812\SQLEXPRESS"   
Response.Write cnn1.State
str="insert into user_info (username,password) values ('Tom','123456')"
cnn1.Execute str
cnn1.close()  
%>