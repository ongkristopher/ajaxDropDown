<?php
	require_once("DB.class.php");

	$db = new DB("localhost", "test", "root", "");

	if (isset($_POST['action'])) {
		$action = $_POST['action'];
		if ($action == "getProductInfo") {
			$product_category = $_POST['product_category'];

			echo json_encode($db->query(
                                            "SELECT * FROM `products` WHERE `product_category` =:product_category" , 
                                            array(
                                                'product_category'=>$product_category
                                            )
                                        )
                                );
		}
	}