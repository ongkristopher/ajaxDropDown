<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<!-- drop down -->
	<select name="product_category" id="product_category">
		<option value="">Select a Category</option>
		<option value="Basketball Shoes">Basketball Shoes</option>
		<option value="Running Shoes">Running Shoes</option>
		<option vlaue="Nike Sportswear">Nike Sportswear</option>
	</select>

	<div class="products">
		<div id="product_image"></div>
		<div id="product_name"></div>
		<div id="product_price"></div>
	</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script>
	var file_url="/ajaxDrop/function.php";
	$(document).ready(function() {
		$("#product_category").change(function(){

			$("#product_image").html("");
      		$("#product_name").html("");
      		$("#product_price").html("");

			var products_category = $(this).val();
			$.ajax({
    			url: file_url,
    			type: "post",
    			data: {"action" : "getProductInfo",
    					"product_category" : products_category},
    			success: function(data) {

    				data = $.parseJSON(data);
    				
    				$.each(data,function(i){

      					$("#product_image").append("<br>"+data[i].product_image);
      					$("#product_name").append("<br>"+data[i].product_name);
      					$("#product_price").append("<br>"+data[i].product_price);
      				});
    			},
    			error: function(req, err){ console.log('my message ' + err +" "+req); }
  			});  
		});
	});
</script>

</html>