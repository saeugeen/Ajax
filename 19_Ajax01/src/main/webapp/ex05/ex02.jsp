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
			var table = "<table>";
			table += "<thead>";
			table += "<tr><td>종류</td><td>가격</td></tr>";
			table += "</thead>";
			table += "<tbody>";
			// jQuery에서 xml 문서 가져오기 (.get, .post)
			$.get("data_02.xml", function(data) {
				// 자바스크립트에서 태그 정보:  getElementsByTagName("name")
				// 자바스크립트에서 글자 추출 : childNodes[0].nodeValue
				// jQuery에서 태그 정보 : find()
				// jQuery에서 글자 추출 : text()
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