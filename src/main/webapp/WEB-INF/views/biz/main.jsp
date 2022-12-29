<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
<div id = "main">
	<div id="mainList">
		<h1 align="center">���� ������</h1>
		ȸ������ �ϱ� <button id = "memberJoin">ȸ������</button><br>
		ȸ������ ���� <button id = "memberList">ȸ�� ����Ʈ</button><br>
		ȸ������ ���� <button id = "memberEdit">ȸ������ ����</button><br>
		ȸ������ ���� <button id = "memberDelete">ȸ������ ����</button>
	</div>
</div>
</body>
</html>
<script src="/resource/js/cmm/com.js"></script>
<script type="text/javascript">
$("#memberJoin").on("click",function(){
/* 	$.ajax({
	type: "html",  
	url:  "/members/create.view", 
	method : 'POST',
	data: {}, 
	success:function(data) {
			$("#main").html(data);
			}
	}); */
	ajaxAction("POST","/members/create.view","",function(data){
		$("#main").html(data);
	});
});

$("#memberList").on("click", function(){
	console.log("###memberList Click");
	
/* 	$.ajax({
		type: "html",  
		url:  "/members/memberList.view", 
		method : 'POST', 
		success: function(data) {
				 $("#main").html(data);
		},
		error : function(error , status){
			console.log("error : "+error);
			console.log("status : "+status);
			
		}
	}); */
	ajaxAction("POST","/members/memberList.view","",function(data){
		$("#main").html(data);
	});
});

$("#memberEdit").on("click",function(){
/* 	$.ajax({
		type: "html",  
		url:  "/members/memberUpt.view", 
		method : 'POST', 
		success:function(data) {
			console.log("###"+data);
			$("#main").html(data);
			}
	}); */
	ajaxAction("POST","/members/memberUpt.view","",function(data){
		$("#main").html(data);
	});
});

$("#memberDelete").on("click",function(){
/* 	$.ajax({
		type: "html",  
		url:  "/members/memberDelete.view", 
		method : 'POST', 
		success:function(data) {
			console.log("###"+data);
			$("#main").html(data);
			}
	}); */
	ajaxAction("POST","/members/memberDelete.view","",function(data){
		$("#main").html(data);
	});
	
});

</script>
