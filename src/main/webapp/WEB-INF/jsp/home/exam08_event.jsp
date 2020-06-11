<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		<!-- script : 외부에서 java로 작성된 script를 갖고오겠다. -->
		
		<script>
			function click_handler(){
				console.log("클릭됨");
			}
			
			function mouseover_handler(){
				console.log("마우스 올라가 있음");
				div1 = document.getElementById("div1")
				div1.style.backgroudColor = "yellow";
			}
			function mouseout_handler(){
				console.log("마우스 벗어남");
				div1 = document.getElementById("div1"); //사실 객체를 찾아온거다.
				div1.style.backgroudColor = "red";
			}
		</script>
	
	
	
	</head>	
	<body>
		<h5 class="alert alert-info">/home/exam08_event.jsp</h5>
		
		<div>
			<button onclick="click_handler()"
					onmouseover="mouseover_handler()"
					onmouseout="mouseout_handler()"
			>버튼</button>
				<div id="div1" onclick="click_handler()"
					onmouseover="mouseover_handler()"
					onmouseout="mouseout_handler()"
				style="width:200px;
				height:200px;
				background-color:red;
				margin-top: 20px"
				>div</div>
		</div>
		
	</body>
</html>