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
		function fun1(){
			console.log("exam1과는 다른 fun1() 실행");
			div1 = document.getElementById("div1")
			div1.innerHTML = "<img src='${pageContext.request.contextPath}/resource/img/bg01.jpg'/>";
			//div1.innerHTML += "<img src='${pageContext.request.contextPath}/resource/img/bg01.jpg'/>";
		}
		function fun2(){
			console.log("fun2를 실행하다")
			document.write("<img src='${pageContext.request.contextPath}/resource/img/bg01.jpg'/>");
		}
		function fun3(){
			console.log("fun3를 실행하다")
			window.alert("버튼 클릭입니다.");
		}
	</script>
	
	</head>	
	<body>
		<h5 class="alert alert-info">/home/exam02_output.jsp</h5>
		<div>
			<a href ="javascript:fun1()" class="btn btn-success btn-sm">동적 내용 넣기</a>
			<button onclick="fun2()">동적 내용 넣기</button>
			<a href ="javascript:fun3()"><img src="${pageContext.request.contextPath}/resource/img/red_button.PNG"/></a>
			<hr/>
			<div id="div1"></div>
		</div>
	</body>
</html>