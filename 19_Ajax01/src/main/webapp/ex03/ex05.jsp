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
		request.open("GET", "data_05.js", false);
		request.onreadystatechange = function() {
			if (request.readyState == 4) {
				if (request.status == 200) {
					//가져온 데이터를 자바스크립트 형식을 읽어들이자(eval())
					var msg = "";
					var data = eval("("+request.responseText+")");
					for (var i = 0; i < data.length; i++) {
						for (var k in data[i]) {
							msg += data[i][k] + "&nbsp;&nbsp;"
						}
						msg +="<br>";
					}
					document.body.innerHTML =msg
				}
			}
		}

		request.send();
	</script>
</body>
</html>