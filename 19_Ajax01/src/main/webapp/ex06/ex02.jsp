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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(function() {
	 	$("#btn").click(function() {
			$("#out").empty();
			$.ajax({
				url: "data_02.xml" ,
				method: "post",
				dataTyPe: "xml",
				success: function(data) {
					var table = "<table>";
					table += "<thead>";
					table += "<tr><td>종류</td><td>가격</td></tr>";
					table += "</thead>";
					table += "<tbody>";
					$(data).find("product").each(function() {
						var name = $(this).find("name").text();
						var price = $(this).find("price").text();
						table += "<tr>";
						table +="<td>"+name + "</td><td>"+price+"</td>";
						table += "</tr>";
					});
					table += "</tbody>";
					table += "</table>";
					$("#out").append(table);
				},
				error: function() {
					alert("읽기 실패");
				}
			});
		});
   });
</script>
<script type="text/javascript"></script>
</head>
<body>
	<button id="btn">xml 태그 정보 가져오기</button>
	<hr>
	<div id="out"></div>
	<h3>Hello World</h3>
</body>
</html>