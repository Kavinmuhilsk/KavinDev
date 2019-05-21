<html>
<!-- #include file = "dbconnect1.asp" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>NOC Internal Application</title>

<link rel="icon" type="image/gif/png" href="bg5.jpg">

<link type="text/css" rel="stylesheet" href="datepickercontrol_bluegray.css">
  	<link type="text/css" rel="stylesheet" href="content.css">
	<link type="text/css" rel="stylesheet" href="css/stylemenu.css">
	
<input type="hidden" id="DPC_TODAY_TEXT" value="Day">
		<input type="hidden" id="DPC_BUTTON_TITLE" value="Offen Calender...">
		<input type="hidden" id="DPC_MONTH_NAMES" value="['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']">
		<input type="hidden" id="DPC_DAY_NAMES" value="['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']">
		<input type="hidden" id="DPC_AUTO_SHOW" value="true">
<script type="text/javascript" src="datepickercontrol.js"></script>
<script src="jquery-3.2.1.min.js"></script>
<script>
function try1()
{
//$('#status2').hide();
var val=$('#status1').val();
//alert(val)
if (val=="pending")
{
$('#status2').show();
$('#status2').html("<option value=default>---Pending At----</option><option value='tcs'>tcs</option><option value='cub'>CUB</option><option value='softcell'>Softcell</option><option value='manageengine'>Manage-Engine</option>")
}

//alert(val);

else 
{
$('#status2').hide();
}
return false;
}


</script>

</head>


<body background="bg2.jpg" style="font-family:Courier New; color:white;background-repeat:no-repeat; background-size:cover; background-position:center; width:100%; height:100%"> 
<center>
<!-- #include file="common.asp"-->

<br>
<br>
<br>
<br>
<br>
<form action="tasksubmit.asp" name="lanvendor" method="post">

<table BGCOLOR="#3399cc" style="border-radius:8px;">
  <tr>
    <td bgColor="#3399cc"  colSpan="5" align="center">
	<b>Task for Manage Engine
  </td>
  </tr>
  <tr> <td> &nbsp;&nbsp;</td></tr>

  <tr>

    <td  borderColor="#3399cc" align="left">
    <font size="2" face="courier new" color="white"><b>Title Head</font></td>
</tr>
<tr>
    <td bgColor="#3399cc"  borderColor="#FEFFEA" colSpan="4">
    <font size="1" face="courier new">
	
  <input type="text" size="45" maxlength="45" name="titlehead" style="background-color:white ;BORDER-RADIUS:5PX; font-family:Courier New;  font-color:blue" >
	
</font>
	</TD>
</TR>
 <tr>

    <td  borderColor="#3399cc" align="left">
    <font size="2" face="courier new" color="white"><b>Task Related To</font></td>
</tr>
<tr>
    <td bgColor="#3399cc"  borderColor="#FEFFEA" colSpan="4">
    <font size="1" face="courier new">
   <select name="category" id="cat1" style="background-color:white ;BORDER-RADIUS:5PX; font-family:Courier New;  font-color:blue" onchange="javascript:try1();">
   <option value="default"> ----Select----</option>
   <option value="opmanager"> OPManager</option>
   <option value="sdp"> SDP</option>
<option value="desktopcentral"> DesktopCentral</option>
  
   </select>
  
</font>
	</TD>
</TR>

 <tr>

    <td  borderColor="#3399cc" align="left">
    <font size="2" face="courier new" color="white"><b>Description </font></td>
</tr>
<tr>
    <td bgColor="#3399cc"  borderColor="#FEFFEA" colSpan="4">
    <font size="1" face="courier new">
   <textarea rows="2" cols="20" name="task_description">
   </textarea>
</font>
	</TD>
</TR>



<TR>
<TD align="left">
    <font size="2" face="Courier New " color="WHITE"><b> Last mailed date</font>
</TD>
</tr>
<tr>
<TD>

<input type="text" maxlength="50" name="last_mailed_date" readonly id ="DPC_calendar1"   style="background-color:white ;BORDER-RADIUS:5PX; font-family:Courier New;  font-color:blue" id="invoice_Date" size="38" ></input>
  </TD>
</TR>

<TR>
<TD align="left">
    <font size="2" face="Courier New " color="WHITE"><b> Reply Mail date</font>
</TD>
</tr>
<tr>
<TD>

<input type="text" maxlength="50" name="reply_mail_date" readonly id ="DPC_calendar2"   style="background-color:white ;BORDER-RADIUS:5PX; font-family:Courier New;  font-color:blue" id="invoice_Date" size="38" ></input>
  </TD>
</TR>


<TR>
<TD align="left">
    <font size="2" face="Courier New " color="WHITE"><b> Status</font>
</TD>

</tr>
<tr>
<TD>
    
<select name="status1" id="status1" onchange="javascript:try1();">
<option value="default">--Select---</option>
<option value="pending">Pending</option>
<option value="ongoing">Ongoing</option>
<option value="discussion">Discussion</option>
<option value="completed">Completed</option>
</select>


    
<select name="status2" id="status2" style="display:none;"  >
<option value="default">--Pending at---</option>

</select>

  </TD>
</TR>




  
</table>
  <br>

<div style="background-color:#3399cc; align:right">

 <span class="high"><input id="highlight" type="submit" onclick= "javascript:ss();" value="SAVE DETAILS"   style="color:white;background-color:#3399cc; border-radius:5px; font-face:Courier new;font-weight:bold; font-size:11px; align:right;"></span>
 
 
</div>
</form>
</body>
<script>
function ss()
{
invoice_amt=Number(document.getElementById("invoice_amt").value);
//invoice_gst=document.getElementById("invoice_gst").value;
//TOTAL_AMT=document.getElementById("TOTAL_AMT").value;

gst=Number(invoice_amt*0.18);
//invoice_gst=gst;
document.getElementById("invoice_gst").value=gst;
total=Number(gst+invoice_amt);
document.getElementById("TOTAL_AMT").value=total;



}
</script>

</html>