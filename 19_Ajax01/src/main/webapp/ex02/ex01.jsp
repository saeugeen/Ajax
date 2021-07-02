<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
	<%-- 
	  XMLHttpRequest 객체 이용한다.
	   - 자바스크립트에서 ajax(비동기)를 할 수 있도록 하는 객체	
		 버전이 낮은 웹 브라우저는 존재하지 않는다.
		 그러나, ActiveXObject라는 비슷한 역할을 하는 객체는 있다.
	--%>
	
	// 낮은 버전 처리 (XMLHttpRequest가 없는 경우)
	function createRequest() {
		var req ;
		try {
			req = new XMLHttpRequest();
			console.log("1");
		} catch (e) {
			try {
				req =new ActiveXObject("Microsoft.XMLHTTP");
				console.log("2");
			} catch (e) {
				req =new ActiveXObject("Msxml3.XMLHTTP");
				console.log("3");
			}
		}
		return req;
	}
	// 1. 객체 생성
	var request = new createRequest();
	//2. open("전송방식", "경로", "비동기여부");
	request.open("GET","data.html", false);
	
	// 3. send() : 실행 (경로에 가서 데이터 읽어오기)
	request.send();
	
	// 4. 브라우저 화면에 출력
	   document.body.innerHTML = request.responseText ; // 텍스트만 표시
	// document.body.append(request.responseText) ;     // 소스코드 표시
	</script>
</body>
</html>








