
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
<table id="searchform" width="50%" cellspacing="0" cellpadding="5" border="1" style="margin-left:30px !important;">


            <thead>
                <tr style="color:blue">
                    <td><center style="width:200px;"><b>Lco Name</b></center></td>
                    <td><center><b>Offer id</b></center></td>
                    <td><center><b>Clicks</b></center></td>
					<td><center><b>Leads</b></center></td>
					<!--<td><center><b>Date time</b></center></td>-->
                </tr>
            </thead>
            <tbody>
			<tr>
			
             <?php 
$connection=mysqli_connect("localhost", "root", "", "uol_crm");
$get = $_POST['search'];

if($get)
{
	$show = "Select Distinct offer_id,lco_name,clicks,leads from yesterday_lco where offer_id ='$get'";
	$result =mysqli_query($connection,$show);
	while($row=mysqli_fetch_array($result))
	{
		echo "<tr>";
		echo "<td>".$row['lco_name']."</td>";
		echo "<td>".$row['offer_id']."</td>";
		echo "<td>".$row['clicks']."</td>";
		echo "<td>".$row['leads']."</td>";
		//echo "<td>".$row['datetime']."</td>";
		
		//echo $row['date'];
		echo "<tr/>";
}
}
else
{
	echo "no data";
}
?>
</tr>
            </tbody>
        </table>
		</div>
