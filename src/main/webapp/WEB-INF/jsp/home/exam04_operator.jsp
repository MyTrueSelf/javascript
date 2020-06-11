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
		<script type="text/javascript">
			function fun1(){
				var var1= 3 ;
				console.log(typeof var1)
				console.log(typeof var2)
				var var2 = "3";
				//리터럴이 같으면 동등한 비교
				console.log(var1 == var2)
				//동등비교 and type 비교
				console.log(var1 === var2)	
			}
		</script>

	</head>	
	<body>
		<h5 class="alert alert-info">/home/exam04_operator.jsp</h5>
		
		<div>
			<a href="javascript:fun1()" class="btn btn-success btn-sm">fun1() 호출</a>
		</div>
	</body>
	
</html>