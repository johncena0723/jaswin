	
      <link href="https://cdn.datatables.net/r/dt/dt-1.10.8/datatables.min.css" rel="stylesheet" />

	 	<link rel="stylesheet" href="../styles/general.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../styles/pagination.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../styles/jquery-ui-1.7.2.custom.css" type="text/css" media="screen" />
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="../js/DOMhelp.js"></script>
	<script type="text/javascript" src="../js/pagination.js"></script>
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/jquery.validation.js"></script>
	<script type="text/javascript" src="../js/jquery-form.js"></script>
	<script type="text/javascript" src="../js/jquery.simplemodal.js"></script>
	<script type="text/javascript" src="../js/addClient.js"></script>
	<script type="text/javascript" src="../js/form.js"></script>
	<script type="text/javascript" src="../js/validation.js"></script>
	
	<style>
.center {
  margin-left:300px;
  width: 40%;
   border: 1px solid grey;
  padding: 10px;
}
.searchform{
	margin:200px 100px;
	
}
</style>

	<div class="center">
<a type='button' class='form-control' href="select.php">Back to Selection page</a> 
<br/><br/>
<table id="searchform" width="50%" cellspacing="0" cellpadding="5" border="1" style="margin-left:70px !important;">


            <thead>
                <tr style="color:blue">
                    <td><center style="width:200px;"><b>Lco Name</b></center></td>
                    <td><center><b>Offer id</b></center></td>
                   <!-- <td><center><b>Clicks</b></center></td>
					<td><center><b>Leads</b></center></td>
					<td><center><b>Date time</b></center></td>-->
                </tr>
            </thead>
            <tbody>
			<tr>
			
             <?php /*
$connection=mysqli_connect("localhost", "root", "", "uol_crm");
$get = $_POST['offer_id'];

 $get_new = explode(",",$get);
 
 if($get_new)
 
if($get_new)
{
	 $show = "Select Distinct offer_id, lco_name from yesterday_lco where offer_id  IN ($get_new[0],$get_new[1])"; 		
	$result =mysqli_query($connection,$show);
	while($row=mysqli_fetch_array($result))
	{
		echo "<tr>";
		echo "<td>".$row['lco_name']."</td>";
		echo "<td>".$row['offer_id']."</td>";
		echo "<tr/>";
	}
}
*/
?>
<?php 
/*$connection=mysqli_connect("localhost", "root", "", "uol_crm");
$get = $_POST['offer_id'];

// $get_new = explode(",",$get);
 
 //if($get_new)
 
if($get)
{
	// $show = "Select Distinct offer_id, lco_name from yesterday_lco where offer_id  IN ($get_new[0],$get_new[1])"; 	
	 $show = "Select Distinct offer_id, lco_name from yesterday_lco where offer_id  IN ($get)";
	 $result =mysqli_query($connection,$show);
	 while($row=mysqli_fetch_array($result))
	{
		echo "<tr>";
		echo "<td>".$row['lco_name']."</td>";
		echo "<td>".$row['offer_id']."</td>";
		echo "<tr/>";
	}
}
*/
?>
<script>
function showResult(str) {
  if (str.length==0) { 
    document.getElementById("offer_id").innerHTML="";
    document.getElementById("offer_id").style.border="0px";
    return;
  }
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else {  // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
      document.getElementById("offer_id").innerHTML=this.responseText;
      document.getElementById("offer_id").style.border="1px solid #A5ACB2";
    }
  }
  xmlhttp.open("GET","offer_id.php?q="+str,true);
  xmlhttp.send();
}
</script>
<?php 
error_reporting(0);
$connection=mysqli_connect("localhost", "root", "", "uol_crm");
$get = $_POST['offer_id'];

 $get_new = explode(",",$get);
 

 
if($get_new)
{
	 $show = "Select Distinct offer_id, lco_name from yesterday_lco where offer_id  IN ($get_new[0],$get_new[1])"; 		
	$result =mysqli_query($connection,$show);
	while($row=mysqli_fetch_array($result))
	{
		echo "<tr>";
		echo "<td>".$row['lco_name']."</td>";
		echo "<td>".$row['offer_id']."</td>";
		echo "<tr/>";
	}
}
if($get)
{
	
	// $show = "Select Distinct offer_id, lco_name from yesterday_lco where offer_id  IN ($get_new[0],$get_new[1])"; 	
	 $show1 = "Select Distinct offer_id, lco_name from yesterday_lco where offer_id IN (($get))";
	 
	 $result1 =mysqli_query($connection,$show1);
	 while($row1=mysqli_fetch_array($result1))
	{
		echo "<tr>";
		echo "<td>".$row1['lco_name']."</td>";
		echo "<td>".$row1['offer_id']."</td>";
		echo "<tr/>";
	}
}
//<!--- third-->

 /*$get_new2 = explode(",",$get);
 
$get_new3 = $get_new2;
 
if($get_new3)
{
//echo	 $show3 = "Select Distinct offer_id, lco_name from yesterday_lco where offer_id  IN ($get_new3[0],$get_new3[1],$get_new3[2])"; 		
		// $show3 = "Select Distinct offer_id, lco_name from yesterday_lco where offer_id  is NOT NULL Limit 3"; 	

			$show3 = "select Distinct from yesterday_lco where
Offer_id in (Select max(offer_id) FROM yesterday_lco group by lco_name)";
	$result3 =mysqli_query($connection,$show3);
	while($row3=mysqli_fetch_array($result3))
	{
		echo "<tr>";
		echo "<td>".$row3['lco_name']."</td>";
		echo "<td>".$row3['offer_id']."</td>";
		echo "<tr/>";
	}
}*/
?>

</tr>

            </tbody>
        </table>
		</div>
