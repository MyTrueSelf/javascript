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
				console.log("fun1() 실행")
			}
			
			function fun2(a,b){
				var result = a + b;
				return result;
			}
			function fun3(a,b){
				var result = fun2(a,b);
				console.log(result);
			}
			
			function fun4(result){
				if(result == null){
					return false;
				} else{
					return true;
				}
				//유효성 검사를 했다고 '치고'
			}
			
			function fun5(){
				var mid = document.loginForm.mid.value;
				//console.log(mid);
				if(mid == ""){
					return false
				} else{
					return true;
				}
			}
			
			var fun6 = function(){
				console.log("fun6() 함수 실행");
			};
			
		</script>
	
	
	</head>	
	<body>
		<h5 class="alert alert-info">/home/exam06_function.jsp</h5>
		
		<div>
			<button onclick="fun1()" class="btn btn-success btn-sm">fun1() 호출</button>
			<button onclick="fun3(3,5)" class="btn btn-success btn-sm">fun3() 에서 fun2() 호출</button>
			
			<a onclick="return fun4(null)" href="main.do" class="btn btn-success btn-sm">메인 화면</a>
			
			<form name="loginForm" method="post" action="main.do" onsubmit="return fun5()"
				style="margin-top:10px">
				<input type="text" name="mid" style="margin-top:10px" />
				<%--submit의 효과를 내는 것은 3가지.1. submit 2.button 3. image--%>
				<input type="submit" value="전송" class="btn btn-success btn-sm" />
				<button class="btn btn-success btn-sm">전송</button>
				<input type="image" src="${pageContext.request.contextPath}/resource/img/red_button.PNG"/>
			</form>
			
			<button onclick="fun6()" class="btn btn-success btn-sm">fun6() 호출</button>
		</div>
		
	</body>
</html>