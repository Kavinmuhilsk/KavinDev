# KavinDev
To learn is never ending, knowledge is sharing
// install and include sweetalert 
<script src="sweetalert.min.js"></script>
// write a server side validating script to get the user and check if he's authenticated user
//throw a sweet alert otherwise


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


//here is the simple play with  toggle jquery

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







