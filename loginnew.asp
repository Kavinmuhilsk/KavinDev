<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>NOC Internal Application</title>

<link rel="icon" type="image/gif/png" href="bg5.jpg">

<link type="text/css" rel="stylesheet" href="datepickercontrol_bluegray.css">
  	<link type="text/css" rel="stylesheet" href="content.css">
<input type="hidden" id="DPC_TODAY_TEXT" value="Day">
		<input type="hidden" id="DPC_BUTTON_TITLE" value="Offen Calender...">
		<input type="hidden" id="DPC_MONTH_NAMES" value="['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']">
		<input type="hidden" id="DPC_DAY_NAMES" value="['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']">
		<input type="hidden" id="DPC_AUTO_SHOW" value="true">
<script type="text/javascript" src="datepickercontrol.js"></script>
<script src="sweetalert.min.js"></script>
<style>
.high:hover
{
color:blue !important;
}
.poptry
{
display:none;}

</style>
</head>


<body background="login.jpg" style="font-family:Courier New; color:white;;background-repeat:no-repeat;background-size:cover; background-position:center;width:100%; height:100%;">

<div class="header" style="background-color:#000030" "align="left">  <font color="white" face="courier new" SIZE="1" ><br> <B> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <span id="header" style="background-color:#000030;" ><FONT SIZE=3> CITY UNION BANK  NETWORK MONITORING</span>   </font>
<%useralr=request.form("userid")
pass=request.form("pass")
response.write "<font color=white>"
'response.write useralr
set conn=createobject("adodb.connection")
			conn.open "Driver={SQL SERVER};server=localhost;UID=sa;pwd=city;database=master"
	
		set rs=createobject("adodb.recordset")	
		str="select password from user_details where userid='"&useralr&"'"
			'response.write(str)
						'response.end
				rs.open str,conn

	
			if rs.eof or rs.bof then
			'response.write "<script>    swal('OOps!!','You are not an authenticated user','error').then(function(){window.location='loginnew.asp';}); </script>"
'response.end
%>
<form>
<input type="hidden" id="useralr" value="<%=useralr%>" >
</form>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="poptry" align="center" >

<form action="loginnew.asp" method="post">
<table BACKGROUND="bg.jpg" style="border-radius:8px; width:100; height:150; align:right;">



  <tr>
    <td   colSpan="5" align="center">
  </td>
  </tr>

  <tr>

<tr><td align="right"><div class="close"> <font color="red" size="3"><input type="button" value="X" style="background-color:lightblue; color:navy; font-size:9;border-radius:5px; font-weight:bold;"> </font></div></td></tr>
    <td  align="left">
    <font size="2" face="courier new" color="white"><b>USER-NAME </font></td>
</tr>
<tr>
    <td   borderColor="#FEFFEA" colSpan="4">
    <font size="1" face="courier new">
    <input TYPE="TEXT"style=" BACKGROUND-COLOR: WHITE;COLOR:BLUE; BORDER-RADIUS:5PX;" maxLength="50" size="30" value="" name="userid" id="userid" >
</font>
	</TD>
</TR>
	<TR>
<TD align="left">
    <font size="2" face="Courier New " color="white"><b> PASSWORD</font>
</TD>
</tr>
<tr ><td >
    <input type="password" maxlength="50" name="pass" id="pass" style="background-color:white ;BORDER-RADIUS:5PX; font-family:Courier New;  font-color:blue"  size="25" ></input>
  </TD></TR>



<tr><td align="center">

<input type="submit" value="lOGIN" onclick="javascript:fun1();" style="color:navy;background:bg5.jpg; border-radius:5px; font-face:Courier new;font-weight:bold; font-size:9px; align:right;">
</td>
</tr>
 
</table>
</form>

<font color="white" size="4"></font></div>
<div align="center">


<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
 <a href="#" class="pop" readonly id="sn9" value="34" style="background-color:black;color:#FFFFFF;font-size:11; font-face:calibri;text-decoration:none;">LOGIN</a>
</div>

<script src="jquery-3.2.1.min.js"></script>
<script>
$('.pop').click(function(){
//alert("pop");
$(".poptry").toggle();
$(".pop").hide();
});
</script>
<script>
$('.close').click(function(){
//alert("pop");
$(".poptry").hide();
$(".pop").show();
});
</script>
<%
else
passalr=rs("password")
'response.write passalr
'response.end

if passalr=pass then

'response.write "hi1"
'response.end
response.redirect("loginsubmit.asp?userid="&useralr&"&pass="&passalr&"")

'response.end
else
'response.write "hi2"
'response.end
response.write "<script>    swal('OOps!!','Invalid Login Credentials','error').then(function(){window.location='loginnew.asp';}); </script>"
response.end
end if

%>
<form><input type="hidden" id="passalr" value="<%=passalr%>"></form>



<%end if%>
</html>

