<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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

	</head>	
	<body>
		<h5 class="alert alert-info">첫 화면입니다</h5>
		<ul>
			<li><a href="exam01_where_to.do">exam01_where_to_do</a></li>
			<li><a href="exam02_output.do">exam02_output_do</a></li>
			<li><a href="exam03_variable.do">exam03_variabe_do</a></li>
			<li><a href="exam04_operator.do">exam04_operator</a></li>
			<li><a href="exam05_undefine_null.do">exam05_undefine_null</a></li>
			<li><a href="exam06_function.do">exam06_function</a></li>
			<li><a href="exam07_object.do">exam07_object</a></li>
			<li><a href="exam08_event.do">exam08_event</a></li>
			<li><a href="exam09_string.do">exam09_string</a></li>
			<li><a href="exam10_builtin_object.do">exam10_builtin_object</a></li>
			

			
			<li><a href="exam11_try_catch.do">exam11_try_catch</a></li>
			<li><a href="exam12_class.do">exam12_class</a></li>
			<li><a href="exam13_bom.do">exam13_bom</a></li>
			<li><a href="exam14_dom.do">exam14_dom</a></li>
			<li><a href="exam15_jquery.do">exam15_jquery</a></li>
			<li><a href="exam16_ajax.do">exam16_ajax</a></li>
			<li><a href="exam17_css.do">exam17_css</a></li>
			<li><a href="exam18_layout.do">exam18_layout</a></li>
		</ul>
	</body>
</html>