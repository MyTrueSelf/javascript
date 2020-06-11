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
			function fun1() {
				//배열 생성
				var arr1 = ["Benz", "Volvo", "BMW"];
				var arr2 = new Array("Benz", "Volvo", "BMW");
				
				for(var i = 0; i < arr1.length; i++){
					console.log(arr1[i])
				}
				
				arr1[0] = "벤츠";
				arr1[1] = "볼보";
				arr1[2] = "비엠더블유";
				console.log(arr1)
				// 객체 배열
				var arr3 = [
					{mid : "summer" , mname:"하여름"},
					{mid : "fall" , mname:"추낙엽"},
					{mid : "winter" , mname:"동장군"}
				];
				//객체 배열의 속성명은 따옴표를 넣지 않는다.
				console.log(arr3)
				
				//특정값
				console.log(arr3[1].mname)
				
				//요소를 추가해본 작업
				var arr4 = [];
				arr4[0] = "파이썬";
				arr4[1] = "자바스크립트"; //index 번호를 벗어나도 넣는건 가능하다!
				arr4.push("자바"); 
				console.log(arr4);
				
				
				//how1: 요소들 하나하나에 대해 함수 적용(현재는 추출을 적용) , 반복 처리
				var arr5 = ["Banana", "Orange", "Apple", "Mango"];
				var length_arr5 = arr5.length;
				for(var i =0 ; i < length_arr5; i++){
					console.log(arr5.pop())
				}
				//how 2 : 임시함수 적용.
				//위에서 pop하며 모두 비워져버렸다.
				var arr5 = ["Banana", "Orange", "Apple", "Mango"];
				arr5.forEach(function(value,index){
					console.log("value: " + value + ", index:" + index)
				});
				
				//요소를 교체하다.
				var fruits = ["Banana", "Orange", "Apple", "Mango"];
				//fruits.splice(2, 0, "Lemon", "Kiwi");
				//특수한 방식. 1번째 매개변수. : 원래 배열에서 바뀌기 시작할 요소의 index. 2번째 매개변수 : 바꿀 요소를 몇개를 넣을건지 결정하는 매개변수. 
				//0이면 뒤에 있는 요소는 삽입이 된다.
				//3번째 매개변수 ~ 2번째 매개변수에 따라 추가될 요소.
				fruits.splice(2, 2, "Lemon", "Kiwi");
				console.log(fruits)
			}
			function fun2(){
				var now = new Date();
				console.log(now.getFullYear() + "-" +(now.getMonth() + 1) + "-" + now.getDate());
			}
			
			function fun3(){
				var obj = { 
						mid : "summer",
						mname : "홍길동",
						mage : 30,
						hobby : ["movie", "gaming", "trip"],
						adult : true
				};
				// obj -> Json
				var strJson = JSON.stringify(obj);
				console.log(strJson)
				
				var obj2 = JSON.parse(strJson);
				console.log(obj2)
				console.log(obj2.mname)
				console.log(obj2.hobby)
			}
			
		console.	
		
		</script>
		

	</head>	
	<body>
		<h5 class="alert alert-info">/home/exam10_builtin_object.jsp</h5>
		
		<div>
			<button onclick = "fun1()"> 배열 나열하기 </button>
			<button onclick = "fun2()"> 날짜 </button>
			<button onclick = "fun3()"> JSON 문자열 처리 </button>
		</div>
		
		
	</body>
</html>