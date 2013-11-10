<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Emart</title>
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
</head>
<body bgcolor="#ffffcc">
	<div class="container">
		<div class="row">
			<div class="col-md-7">
					<h2>Emart</h2>
					<div class="row">
						<div id="newsSection"></div>
					</div>
			</div>
			<!--/span-->

			<div class="col-md-4" id="sidebar">
				<a href="j_spring_security_logout" class="btn btn-danger" style="margin-top:5px;"><h4>로그아웃</h4></a>
				<div class="sidebar-nav" style="margin-top:10px;">
					<ul class="nav">
						<li><a href="fish"><font color=blue size=6><em><img src="data:image/jpeg;base64,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" width="50" height="50">fish</em></font></a></li>
						<li><a href="meat"><font color=red size=6><img src="data:image/jpeg;base64,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" width="50" height="50"><em>meat</em></font></a></li>
						<li><a href="fruit"><font color=green size=6><em><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkwwb6E0vhnXuPgFIkynbpQYA0bpUWLsy3p024UnlYgYHFkJAt" width="50" height="50">fruit</em></font></a></li>
						<li><a href="home"><font color=black size=6><em><img src="data:image/jpeg;base64,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" width="50" height="50">home appliance</em></font></a></li>
					</ul>
				</div>
				<!--/.well -->
			</div>
			<!--/span-->
		</div>
		<!--/row-->
<!-- 		<div class="row"> -->
<!-- 			<div class="panel-group" id="accordion"> -->
<!-- 				<div class="panel panel-default"> -->
<!-- 					<div class="panel-heading"> -->
<!-- 						<h4 class="panel-title"> -->
<!-- 							<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> Fish </a> -->
<!-- 						</h4> -->
<!-- 					</div> -->
<!-- 					<div id="collapseOne" class="panel-collapse collapse in"> -->
<!-- 						<div class="panel-body"> -->
<!-- 							<div  id="fishSection"></div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="panel-heading"> -->
<!-- 						<h4 class="panel-title"> -->
<!-- 							<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"> Meat </a> -->
<!-- 						</h4> -->
<!-- 					</div> -->
<!-- 					<div id="#collapseTwo" class="panel-collapse collapse in"> -->
<!-- 						<div class="panel-body"> -->
<!-- 							asdfasdfsadfsad -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<hr>
		<div class="row">
			<div class="col-md-6">
				<ul class="nav nav-tabs">
					<li><a href="#fishTab" data-toggle="tab">Fish</a></li>
					<li><a href="#meatTab" data-toggle="tab">Meat</a></li>
					<li><a href="#fruitTab" data-toggle="tab">Fruit</a></li>
					<li><a href="#haTab" data-toggle="tab">H/A</a></li>
				</ul>
	
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="fishTab">
						<div  id="fishSection"></div>
					</div>
					<div class="tab-pane" id="meatTab">
						<div  id="meatSection"></div>
					</div>
					<div class="tab-pane" id="fruitTab">
						<div  id="fruitSection"></div>
					</div>
					<div class="tab-pane" id="haTab">
						<div  id="homeSection"></div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<input type="text" id="search">
				<button id="searchBt" class="btn btn-primary">search</button>
				<div id="emartSection"></div>
			</div>
		</div>


						
<!-- 						<div class="row"> -->
<!-- 							<div class="col-xs-6 col-sm-3" id="emartSection"></div> -->
<!-- 							<div class="col-xs-6 col-sm-2" id="fishSection"></div> -->
<!-- 							<div class="col-xs-6 col-sm-2" id="meatSection"></div> -->
<!-- 							<div class="col-xs-6 col-sm-2" id="fruitSection"></div> -->
<!-- 							<div class="col-xs-6 col-sm-2" id="homeSection"></div> -->
<!-- 						</div> -->

						<hr>

					</div>
					<!--/.container-->


					<script type="text/javascript">
	$(function(){
		
		var showNews = function(){
			$.ajax({
				dataType : "json",
				type : "GET",
				url : "emarts/news"
			}).done(function(data){
				var news = data.news;
				console.log(news);
				var itemList = news.channel.item;
				
				var show = '<table class="table table-striped"">';
				for(var i=0; i < itemList.length; i++){
					show += '<tr>';
					show += '<td><a href="'+itemList[i].link+'">'+itemList[i].title+'</a></td>';
					show += '</tr>';
				}
				show += '</table>';
				$('#newsSection').html(show);
			});
		};
		
		showNews();
		
		//home
		var loadHome = function(){
			$.ajax({
				dataType : "json",
				type : "GET",
				url : "home/list"
			}).done(function(data){
				var home = data.homeKey;
				var show = '<table class="table table-striped"">';
				show += '<tr>';
				show += '<th colspan="3">HomeAppliance</th>';
				show += '</tr>';
				show += '<tr>';
				show += '<th>item</th>';
				show += '<th>price</th>';
				show += '<th>delete</th>';
				show += '</tr>';
				for(var i=0; i < home.length; i++){
					show += '<tr>';
					show += '<td>'+home[i].item+'</td>';
					show += '<td>'+home[i].price+'</td>';
					show += '<td><a href="#" class="remove" homeId="'+home[i].id+'">X</a></td>';
					show += '</tr>';
				}
				show += '</table>';
				$('#homeSection').html(show);
			});
		};
		
		$('#homeSection').on('click',function(event){
			var target = $(event.target);
			if(target.hasClass('remove')){
				var datas = {
					'_method' : "DELETE"
				};
				var id = target.attr('homeId');
				$.ajax({
				dataType : "json",
					type : "POST",
					url : "home/"+id,
					data : datas
				}).done(function(){
					loadHome();
				});
			};
		});
		
		loadHome();
		
		//fruit
		var loadFruit = function(){
			$.ajax({
				dataType : "json",
				type : "GET",
				url : "fruit/list"
			}).done(function(data){
			var fruit = data.fruitKey;
			var show = '<table class="table table-striped"">';
			show += '<tr>';
			show += '<th colspan="3">Fruit</th>';
			show += '</tr>';
			show += '<tr>';
			show += '<th>item</th>';
			show += '<th>price</th>';
			show += '<th>delete</th>';
			show += '</tr>';
			for(var i=0; i < fruit.length; i++){
				show += '<tr>';
				show += '<td>'+fruit[i].item+'</td>';
				show += '<td>'+fruit[i].price+'</td>';
				show += '<td><a href="#" class="remove" fruitId="'+fruit[i].id+'">X</a></td>';
				show += '</tr>';
			}
			show += '</table>';
			$('#fruitSection').html(show);
		});
	};
	
	$('#fruitSection').on('click',function(event){
		var target = $(event.target);
		if(target.hasClass('remove')){
			var datas = {
				'_method' : "DELETE"
			};
			var id = target.attr('fruitId');
			$.ajax({
			dataType : "json",
				type : "POST",
				url : "fruit/"+id,
				data : datas
			}).done(function(){
				loadFruit();
			});
		};
	});
	
	loadFruit();
	
	//meat
	var loadMeat = function(){
		$.ajax({
			dataType : "json",
			type : "GET",
			url : "meat/list"
		}).done(function(data){
			var meat = data.meatKey;
			var show = '<table class="table table-striped"">';
			show += '<tr>';
			show += '<th colspan="3">Meat</th>';
			show += '</tr>';
			show += '<tr>';
			show += '<th>item</<th>';
			show += '<th>price</th>';
			show += '<th>delete</th>';
			show += '</tr>';
			for(var i=0; i < meat.length; i++){
				show += '<tr>';
				show += '<td>'+meat[i].item+'</td>';
				show += '<td>'+meat[i].price+'</td>';
				show += '<td><a href="#" class="remove" meatId="'+meat[i].id+'">X</a></td>';
				show += '</tr>';
			}
			show += '</table>';
			$('#meatSection').html(show);
		});
	};
		
	$('#meatSection').on('click',function(event){
		var target = $(event.target);
		if(target.hasClass('remove')){
			var datas = {
				'_method' : "DELETE"
			};
			var id = target.attr('meatId');
			$.ajax({
			dataType : "json",
				type : "POST",
				url : "meat/"+id,
				data : datas
			}).done(function(){
				loadMeat();
			});
		};
	});
	
	loadMeat();				
		
	// fish
	
	var loadFish =function(){
		$.ajax({
			dataType : "json",
			type : "GET",
			url : "fish/list"
		}).done(function(data){
			var fish = data.fishKey;
			var show = '<table class="table table-striped"">';
			show += '<tr>';
			show += '<th colspan="3">Fish</th>';
			show += '</tr>';
			show += '<tr>';
			show += '<th>item</th>';
			show += '<th>price</th>';
			show += '<th>delete</th>';
			show += '</tr>';
			for(var i=0; i < fish.length; i++){
				show += '<tr>';
				show += '<td>'+fish[i].item+'</td>';
				show += '<td>'+fish[i].price+'</td>';
				show += '<td><a href="#" class="remove" fishId="'+fish[i].id+'">X</a></td>';
				show += '</tr>';
			}
			show += '</table>';
			$('#fishSection').html(show);
		});
	};
		
	$('#fishSection').on('click',function(event){
			var target = $(event.target);
			if(target.hasClass('remove')){
				var datas = {
					'_method' : "DELETE"
				};
				var id = target.attr('fishId');
				$.ajax({
				dataType : "json",
					type : "POST",
					url : "fish/"+id,
					data : datas
				}).done(function(){
				loadFish();
				});
		};
	});
	
	loadFish();
		
	var wholeEmartId = 0;
	
	$('#searchBt').on('click',function(){
		var searchItem = $('#search').val();
		$('#search').val('');
		
		$.getJSON("emarts/search?"+$.param({searchItem : searchItem}),function(data){
			
			var items = data.itemKey;
			var show = '<table class="table table-striped">';
			show += '<thead>';
			show += '<tr>';
			show += '<th colspan="2">Search Result</th>';
			show += '</tr>';
			show += '</thead>';
			for(var i=0; i<items.length; i++){
					show += '<tr>';
					show += '<td>'+items[i].item+'</td>';
					show += '<td>'+items[i].price+'</td>';
					show += '</tr>';
			}
			show += '</table>';
			$('#emartSection').html(show);
		});
	});
				
		$('#emartSection').on('click',function(event){
			var target = $(event.target);
			if(target.hasClass('remove')){
				var datas = {
						
				'_method' : 'DELETE'
				};
				var id = target.attr('emartId');
				$.ajax({
					dataType : "json",
					type : "POST",
					url : "emarts/"+id,
					data : datas
				}).done(function(){
					emart();
				});
			}else if(target.hasClass('update')){
				var id = target.attr('emartId');
				wholeEmartId = id;
				$.ajax({
					dataType : "json",
					type : "GET",
					url : "emarts/"+id
				}).done(function(data){
					var id = data.idKey;
					$('#item').val(id.item);
					$('#price').val(id.price);
				});
			}
		});
		
		$('#saveBt').on('click',function(){
			var datas = {
					item : $('#item').val(),
					price : $('#price').val()
			};
			
			if(wholeEmartId != 0){
				datas['_method'] = "PUT",
				datas['id'] = wholeEmartId;
				wholeEmartId = 0;
			}
			
			$.ajax({
				dataType : "json",
				type : "POST",
				url : "emarts",
				data : $.param(datas),
				headers : {'Content-Type' : 'application/x-www-form-urlencoded'}
			}).done(function(){
				emart();
				$('#item').val('');
				$('#price').val('');
			});
		});
		
	});
</script></body>
</html>
