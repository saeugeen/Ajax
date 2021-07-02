<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XML - 태그</title>
</head>
<body>
	<script type="text/javascript">
		var request = new XMLHttpRequest();
		request.open("GET", "data_04.xml", false);
		request.onreadystatechange = function() {
			if (request.readyState == 4) {
				if (request.status == 200) {
					// xml 데이터 받기 
					var data = request.responseXML;
					// product 태그 정보 저장
					var product = data.getElementsByTagName("product");
					var names = data.getElementsByTagName("name");
					
					for (var i = 0; i < product.length; i++) {
						for (var j = 0; j< names.length; j++){
							var name = names[i].childNodes[0].nodeValue; 
						}
						//속성 출력; attributes[0].value
						var price = product[i].attributes[0].value;
						
						// 화면에 추출(태그 0)
						document.body.innerHTML += "<h2>"+name+", "+price+"</h2>" ;
						
					}
				}
			}
		}

		request.send();
	</script>
</body>
</html>