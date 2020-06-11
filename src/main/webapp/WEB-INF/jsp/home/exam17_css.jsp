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
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/exam17_css.css">
		
<!-- 		<style>
button {
			margin-bottom:10px
		}
				
#container {
			margin-bottom:20px;
			padding:10px;
			border-top:1px solid black
			}
#div1{
			width:100px;
			height:100px; 
			border:1px solid orange; 
			display:inline-block;
	}
	
.class1{
			width:100px;
			height:100px; 
			border:1px solid orange; 
			display:inline-block;
	}
		</style> -->
	</head>
	
	<body>
		<h5 class="alert alert-info">/home/exam1_layout.jsp</h5>
		
		<div id="container">
			<button>객체 찾기 by id</button>
			<button>객체 찾기 by class</button>
			<div>
				<div id="div1">id=idv1</div>
				<div class="class1">class:class1</div>
				<div class="class1">class:class1</div>
			</div>
		</div>
	</body>
</html>