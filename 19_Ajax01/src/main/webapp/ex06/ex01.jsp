<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{width:600px;}
	table, th, td{border: 1px solid red; text-align: center;}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		//  $.ajax({
		//	  url,            // 서버주소(정보를 가져올 장소의 주소)
		//    method,         // 전달방식(get,post)
		//    data,           // 서버주소갈때 보내는 정보(파라미터)
		//    dataType,       // 서버에서 가져온 정보 타입(받는 정보 타입(html, xml, json, txt))
		//    success,        // 성공 했을 때 
		//    error           // 실패 했을 때 
		//  });
		$("#btn").click(function() {
			$("#out").empty(); // 초기화
			$.ajax({
				url : "data_01.html",
				method : "get",
				dataType : "html",
				success : function(data) {
					
					$("#out").append(data);
				},
				error : function() {
					alert("읽기실패");
				}
			});
		});
	});
</script>
<script type="text/javascript"></script>
</head>
<body>
	<button id="btn">html 파일 가져오기</button>
	<hr>
	<div id="out"></div>
	<h3>Hello World</h3>
</body>
</html>