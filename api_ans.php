<?php

// collect orders , orders amout and remaining cookies 
$unfulfilled_orders_id = array();
$unfulfilled_orders_amount = array();
$remaining_cookies = 0 ; 
$rem = array();



function calculate($final_ans)
{
	$max = max($final_ans);
	$max_id = array_search($max, $final_ans);
	
	

	if ($GLOBALS["remaining_cookies"] >= $max) {
		$GLOBALS["remaining_cookies"] = $GLOBALS["remaining_cookies"] - $max;
		
		unset($final_ans["$max_id"]);
	}
	else
	{
		if (in_array($max_id,$GLOBALS["rem"])) {
			unset($final_ans["$max_id"]);
		}
		else{
			array_push($GLOBALS["rem"],$max_id);
			unset($final_ans["$max_id"]);
		}
	}
	return $final_ans;
}

// get product info 
function get_products($json_obj, $i)
{
	
	$total_orders = count($json_obj["orders"][$i]["products"]);
	
	$fulfilled = false;
	$amount = 0 ;


	
	for ($j=0; $j < $total_orders; $j++) { 

  /*
    start by checking if the order is already fulfilled or not 
    
    if not then move ahead and get the order
    check if the order consist of cookies
      if there is cookie then check amount of remaining cookie 
        if less than the remaining cookie then order can be fulfilled
        
    */
	

		if ($json_obj["orders"][$i]["fulfilled"] == false) {
			# code...
			if($json_obj["orders"][$i]["products"][$j]["title"] == "Cookie")
			{
				$amount = $json_obj["orders"][$i]["products"][$j]["amount"];

					if ($amount < $GLOBALS["remaining_cookies"]) {
							 
							array_push($GLOBALS["unfulfilled_orders_id"],$json_obj["orders"][$i]["id"]);
							array_push($GLOBALS["unfulfilled_orders_amount"], $amount);
					}
					else if ($amount > $GLOBALS["remaining_cookies"]) {
						
						array_push($GLOBALS["rem"],$json_obj["orders"][$i]["id"]);
					}
			} 
			
		}

	}


		

}

// get JSON data
function get_data($page_no)
{
	
	$url = "https://backend-challenge-fall-2017.herokuapp.com/orders.json?page=".$page_no;
	$json = file_get_contents($url);
	$json_obj = json_decode($json , TRUE);
	
	return $json_obj;
}

// extract necessary info like : order_id , order_amount from JSON 
function get_stuff($json_obj)
{
	$total = count($json_obj["orders"]);
	$remaining_cookies = $json_obj["available_cookies"];
	$global_all = array();
	

	for( $i = 0 ; $i < $total; $i++)
	{
		
		 $global_all[$i]["id"] = $json_obj["orders"][$i]["id"];		

      // get product to get cookies if cookies were ordered
		 get_products($json_obj,$i);

		

	}
	
}

// main function to call all other functions to get the JSON data and perform necessary operation on it 
function main()
{
	$page_no = 1;
	$total_cost = 0;
	$check=TRUE;
	while ($check==TRUE) {

		$json_obj = get_data($page_no);
		$GLOBALS["remaining_cookies"] = $json_obj["available_cookies"];
		if(count($json_obj["orders"])==0)
		{
			break;
		}
		else
		{
			get_stuff($json_obj);			
			++$page_no;
		}
	}

$final_ans = array_combine($GLOBALS["unfulfilled_orders_id"], $GLOBALS["unfulfilled_orders_amount"]);


		
	foreach ($final_ans as $key => $value) {
		
		$final_ans = calculate($final_ans);
	}
	
	sort($GLOBALS["rem"]);
	
	

	$res = array();
$res['remaining_cookies'] = $GLOBALS["remaining_cookies"];
$res['unfulfilled_orders'] = $GLOBALS["rem"];


echo json_encode($res);
	
}


main();


