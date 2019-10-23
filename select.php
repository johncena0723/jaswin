
<head>
    <link rel="stylesheet" href="../styles/general.css" type="text/css" media="screen" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/validation.js"></script>
    <script type="text/javascript" src="../js/jquery.validate.js"></script>
    <script type="text/javascript" src="../js/form.js"></script>
	<style>
	.off_page{
		margin:94px -36px -77px 14px;
		margin-top:2%;
		margin-left:50% !important;
	}
	.imt{
		width:60px !important;
    margin-left: 27px;
	border-radius:3px;
    height: 22px;}
	</style>
</head>
<div id="myForm">
    <form method="post" name="" id='login' action="">
        <table align="center" id="searchform" width="80%" cellspacing="0" cellpadding="5" border="0" height="30%">
            <tr>
                <td align="center" class="bodycontent"><!--PleaseLogin to get Banks List. -->
                    <table width="50%" cellspacing="0" cellpadding="5" border="0">
                        <tr>
                            <td class="feedback" colspan="3"><center><h3>Please Select Your Option</h3></center></td>
                        </tr>
                        <tr>
                            <td  class="bodycontent"><a href="admin.php">View Agents</a></td>
                            <td  class="bodycontent"><a href="clientSearch.php">View Leads</a></td>
                            <td class="bodycontent"><a href="leadSearch.php">Leads search</a></td>							
                        </tr>
						
                         <tr>
                            <td  class="bodycontent"><a href="changeLenderPasscode.php">Change Lenders Passcode</a></td>
<td  class="bodycontent"><a href="controlpanel.php">Customize your banner</a></td>
<td  class="bodycontent"><a href="add_lender.php">Customize your lenders</a></td>
<!--<td  class="bodycontent"><a href="search_offer_id.php">Offer_id</a></td>-->
                        </tr> 
						<div class="off_page">
						
							<input type="text" class="imt" name="offer_id" required>&nbsp;<button style="color: green;
    border-radius: 5px 5px 5px 5px;">Search</button>
							
							</div>
                    </table>
					
                </td>
            </tr>
			
        </table>
    </form>
</div>
<?php
$lead_DT=array();
error_reporting(0);
$get = $_POST['offer_id'];
$get_new = explode(",",$get);


require_once('nusoap/lib/nusoap.php');
$soap_server = 'http://www.maxbounty.com/api.cfc?wsdl';
$client = new nusoap_client($soap_server, 'wsdl');

$params = array('user' => 'ganesh@guires.com',
                'password' => 'GuiRes@321');
                
$return_string = $client->call('getKey', $params);

$return_string = $return_string['return'];

$params = array('keyStr' => $return_string);

$key_string = $params;

$return_string = $client->call('getYesterdayLeads', $params);

$return_string_1 = $client->call('getTodayLeads', $params);

               $return = $return_string['return'];
            
               $return_1 = $return_string_1['return']; 
               
               $key_string_1 = $key_string['keyStr'];
               
               
               $data = array();
               
               $data_1 = array();
               
               for($i=0;$i<count($return);$i++)
               {
                   $data = array_merge_recursive($data,$return[$i]);
               }
               
			   
               for($i=0;$i<count($return_1);$i++)
               {
                   $data_1 = array_merge_recursive($data_1,$return_1[$i]);
               }
               
             
                    $sound = $data['entries'];
               
				
				
                $sound_1 = $data_1['entries']; 
				
				for($j=0; $j<count($sound); $j++)
                {
                    if($sound[$j]['key'] == 'DATETIME')
                    {                
				 $lead_DT = $sound[$j]['value'];
                    
                    }
                  
                }
                
            for($j=0;$j<count($sound);$j++)
                {
					if($sound[$j]['key'] == 'DATETIME')
                    {                
				 $lead_DT = $sound[$j]['value'];
                 
                    }
                    if ($sound[$j]['key'] == 'OFFER_ID')
                    {
					
                       $offer_id = $sound[$j]['value'];
                     
                       $params_1  = array('keyStr' => $key_string_1,
                                            'offerId' => $offer_id);
                                            
                          $result = $client->call('getYesterdayStats',$params_1);
                       
                        $result_1 = $result['return'];
                     
                        $result_2 = $result_1['entries'];
						
					
                        for($k=0;$k<count($result_2);$k++)
                        {
							
                            if($result_2[$k]['key'] == 'CLICKS')
                            {
                                $clicks = $result_2[$k]['value'];
                               
                            }
                            
                            if($result_2[$k]['key'] == 'LEADS')
                            {
                                $leads = $result_2[$k]['value'];
                                
                                
                            }
                            
                             if($result_2[$k]['key'] == 'NAME')
                            {
                                $name = $result_2[$k]['value'];
                                
                                
                            }
							
							
							 
							
                        }
						
					
						
					
                        if(in_array($offer_id,$get_new))
							
                        {
							
						
							echo "<table align='center' id='searchform' width='60%' cellspacing='0' cellpadding='5' border='2%' height='10%'>
								
							<tr> 
							<th> Offer Id </th><th> Lead Name </th><th> Data Time </th><th> Clicks </th><th> Leads </th></tr>";
							echo "<tr>";
							echo "<td>$offer_id </td>";
							echo  "<td>$name </td>";						
							echo "<td>$lead_DT</td>";
							echo 	 "<td>$clicks </td>";	
							echo 	 "<td>$leads </td>";							
							echo "</tr></table>";
							//}
						
					}
							}
				}
               
?>
