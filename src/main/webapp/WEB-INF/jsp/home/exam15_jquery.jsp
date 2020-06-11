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
			$(function() { 
				fun1()
			});	
			
			$(document).ready(function(){
				fun2();
			})
			
			function fun1() {
				//var div = document.getElementById("div1");
				var div1 = $("#div1")
				div1.css("background-color","red")
			}
			
			
			
			function fun2() {
				//var class1 = document.getElementsByClassName("class1");
				class1 = $(".class1")
				class1.css("background-color","green")
				
			}
			
			/*function fun3() {
				var div = document.getElementsByTagName("div");
				for(var i=0;i < div.length; i++){
					div[i].style.backgroundColor = "blue";
				}
			}*/
			
			function fun3() {
				var img1 = $("#img1");
				//img1.src = "${pageContext.request.contextPath}/resource/img/bg1.jpg"
				img1.attr("src", "${pageContext.request.contextPath}/resource/img/bg1.jpg" )
			}
			
			function fun4() {
				var div2 = $("#div2");
				//div2.innerHTML = "${pageContext.request.contextPath}/resource/img/bg01.jpg"
				//내부에 이걸 삽입하는데 태그가 아니다. 그럼...
				div2.append("<img src='${pageContext.request.contextPath}/resource/img/bg01.jpg'/>");
			}
			
			function fun5(){
				// var mid = document.loginForm.mid.value // 고전 방법. 여긴 name이 loginForm이여서 찾는 것.
				var mid = $("#loginForm #mid").val(); //id를 두번 찾아 들어감. loginForm이란 id를 찾고, 거기서 다시 mid를 id로 찾음.
				var mpassword = $("#loginForm #mpassword").val();
				
				if( mid == "" || mpassword == ""){
					
					window.alert("필수 입력값이 없습니다. 아시겠어요? 아시겠냐구요.");
					return false;
				}else{
					return true;
				}
				
			}
		</script>
		
		
	</head>	
	<body>
		<h5 class="alert alert-info">/exam15_jquery.jsp</h5>
		
		<div style="margin-bottom:20px; padding:10px; border-top:1px solid black">
			<button onclick="fun1()" style="margin-bottom:10px">객체 찾기 by id</button>
			<button onclick="fun2()" style="margin-bottom:10px">객체 찾기 by class</button>
			<!-- button onclick="fun3()" style="margin-bottom:10px">객체 찾기 by tag</button> -->
			<div>
				<div id="div1" style="width:100px;height:100px; border:1px solid orange; display:inline-block;">id=idv1</div>
				<div class="class1" style="width:100px;height:100px; border:1px solid orange; display:inline-block;">class:class1</div>
				<div class="class1" style="width:100px;height:100px; border:1px solid orange; display:inline-block;">class:class1</div>
			</div>
		</div>
		
		<div style="margin-bottom:20px;padding:10px;border-top:1; border:1px solid black">
			<button onclick="fun3()">속성 변경</button>
			<div>
				<img id="img1" src="${pageContext.request.contextPath}/resource/img/bg01.jpg"/>
			</div>
		</div>
		
		<div style="margin-bottom:20px;padding:10px;border-top:1; border:1px solid black">
			<button onclick="fun4()">내용 채우기</button>
			<div id="div2"></div>
		</div>
		
		<div style="margin-bottom:20px;padding:10px;border-top:1; border:1px solid black">
			
			<div>
				<form id= "loginForm" name ="loginForm" action="main.do" onsubmit="return fun5()">
					ID: <input id="mid" name="mid" type="text"/> <br/>
					PW: <input id="mpassword" name="mpassword" type="text"/> <br/>
					<button onclick="fun5()" style="margin-bottom:10px" >사용자가 입력한 값 검사</button>		
				</form>
			</div>
		</div>
		
		
		
		
		
	</body>
</html>


