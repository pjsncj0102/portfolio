<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>Join</title>
	<style type="text/css">
	body {
  padding-top: 40px;
  padding-bottom: 40px;
}
	</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 jumbotron">
				<table class="table table-bordered table-condensed csb-table">
					<colgroup>
						<col class="col-md-1">
						<col class="col-md-2">
					</colgroup>
					<thead>
						<tr>
							<th colspan="2" bgcolor="ffffff">회 원 가 입 </th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>Id</th><td><input class="form-control" type="text" placeholder="아이디를 입력하세요" id="id"></td>
						</tr>
						<tr>
							<th>Pw</th><td><input class="form-control" type="password"  placeholder="패스워드를 입력하세요" id="pw"></td>
						</tr>
						<tr>
							<th>Name</th><td><input class="form-control" type="text" placeholder="이름을 입력하세요" id="name"></td>
						</tr>
						<tr>
							<th>Number</th><td><input class="form-control" type="text" placeholder="전화번호를 입력하세" id="number"></td>
						</tr>
						<tr>
							<th>Address</th><td><input class="form-control" type="text" placeholder="주소를 입력하세요" id="address"></td>
					</tbody>
				</table>
				<button id="sendBt" class="btn btn-primary">send</button>
			</div>
		</div>
	</div>
	
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">가입 완료</h4>
      </div>
      <div class="modal-body">
        회원 가입 완료
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button id="goHome" type="button" class="btn btn-primary">Go Home</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	
<script type="text/javascript">
	$(function(){
		
		$('#sendBt').on('click',function(){
			var datas = {
					username : $('#id').val(),
					passwd : $('#pw').val(),
					name : $('#name').val(),
					number : $('#number').val(),
					address : $('#address').val()
			};
			$.ajax({
				datType : "json",
				type : "POST",
				url : "users",
				data : datas
			}).done(function(data){
				$('#myModal').modal('show');
			});
		});
		
		$('#goHome').on('click', function(){
			location.href="main";
		});
		
	});
			
</script>
</body>
</html>