<?php

//header("Access-Control-Allow-Origin: *");
//header("Content-Type: application/json; charset=UTF-8");

/**
* MySQL Connector
*/

class Customers {
	public $result;
	public $connection;

	function get() {
		$output = '';
		$connection = new mysqli("localhost", "root", "", "angular");
		$result = $connection->query("SELECT name, country, email FROM customer");
		while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
		    if($output != "") {
		    	$output .= ",";
		    }

		    $output .= '{"name":"'  . $rs["name"] . '",';
		    $output .= '"country":"'   . $rs["country"] . '",';
		    $output .= '"email":"'. $rs["email"] . '"}'; 
		}

		$output ='{"records":['.$output.']}';
		$connection->close();
		return $output;
	}
}

$customers = new Customers;
echo $customers->get();

?>