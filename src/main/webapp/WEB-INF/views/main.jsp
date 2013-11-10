<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<title>Main page</title>
</head>

<body>
	<div>
      <!-- Static navbar -->
      <div class="navbar navbar-default" style="background:#F7FE2E">
        <div class="navbar-header" style="background:#F7FE2E">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><font color="black" size="5">Emart link</font></a>
        </div>
        <div class="navbar-collapse collapse" >
          <ul class="nav navbar-nav" style="background:#F7FE2E">
            <li><a href="http://www.emart.com/display/category.do?method=getLCategory&ctg_id=6150000&emid=MM_CTGN_01_6150000"><font color="blue" size="3">fishMarket</font></a></li>
            <li><a href="http://www.emart.com/display/category.do?method=getLCategory&ctg_id=6140000&emid=MM_CTGN_01_6140000"><font color="blue" size="3">meatMarket</font></a></li>
            <li><a href="http://www.emart.com/display/category.do?method=getLCategory&ctg_id=6110000&emid=MM_CTGN_01_6110000"><font color="blue" size="3">fruitMarket</font></a></li>
            <li><a href="http://www.emart.com/display/category.do?method=getLCategory&ctg_id=6580000&emid=MM_CTGN_01_6580000"><font color="blue" size="3">home appliance</font></a></li>
          </ul>
          
           <form name="f" action='<c:url value="j_spring_security_check"/>' method="POST">
		        <table>
		        	<tr>
		        	<td><h3>ID</h3></td><td><input type="text" id="id" name="j_username" ></td>
		        	<td><h3>PW</h3></td><td><input type="password" id="pw"  name="j_password"></td>
		        	<td><button id="login" type="submit" class="btn btn-default btn-lg ">로그인</button></td>
		        	<td><a href="user" class="btn btn-default btn-lg ">회원가입</a>
		        	</tr>
		        </table>
	        </form>
        </div><!--/.nav-collapse -->
      </div>

      <!-- Main component for a primary marketing message or call to action -->
      <div>
       <h3><img src="data:image/jpeg;base64,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"></a></h3>
        <p>
          <a class="btn btn-lg btn-primary" href="/test/emart">click</a>
        </p>
      </div>
    </div> <!-- /container -->
</body>	
</html>






