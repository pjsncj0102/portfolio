<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<title>HomeAppliance</title>
</head>

<body bgcolor="#ffffcc">
<table>
	<tr>
	<td>item</td><td><input type="text" id="item"></td>
	<td>price</td><td><input type="text" id="price"></td>
	</tr>
</table>

<button id="saveHome">save</button>

<script type="text/javascript">

$(function(){
	var home = function(){
		
		$('#saveHome').on('click',function(){
			var datas = {
					item : $('#item').val(),
					price : $('#price').val()
			};

			$.ajax({
			dataType : "json",
			type : "POST",
			url : "home",
			data : datas
		}).done(function(data){
			if(data.homeKey){
				location.href="emart";
			}
		});
	});
	};
	home();
});
</script>
</body>
</html>