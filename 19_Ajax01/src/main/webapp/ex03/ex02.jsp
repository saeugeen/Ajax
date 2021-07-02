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
		request.open("GET", "data_02.xml", false);
		request.onreadystatechange = function() {
			if (request.readyState == 4) {
				if (request.status == 200) {
					// xml 데이터 받기 
					var data = request.responseXML;
					// name 태그 정보 저장
					var names = data.getElementsByTagName("name");
					var prices = data.getElementsByTagName("price");
					
					for (var i = 0; i < names.length; i++) {
						// 글자만 추출(childNodes[0].nodeValue)
						var name = names[i].childNodes[0].nodeValue; 
						var price = prices[i].childNodes[0].nodeValue;
						
						// 화면에 추출(태그 0)
						//document.body.innerHTML += "<h2>"+name+", "+price+"</h2>" ;
						
						// 화면에 추출(태그 X)
						document.body.append(name+ ":" + price);
						document.body.append(document.createElement("br"));
					}
				}
			}
		}

		request.send();
	</script>
</body>
</html>