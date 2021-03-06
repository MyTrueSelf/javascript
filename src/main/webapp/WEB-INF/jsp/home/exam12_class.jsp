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
			// 클래스 정의
			class Car {
				constructor(model, year) {
					console.log("constructor() 실행");
					//필드
					this.model = model;
					this.year = year;
					this.speed = 0;
					this._meters = 30; // private로 하자는 약속일 뿐, 기능은 없다.
					
				}
				
				static getModel() {
					return this.model;
				}
				
				// static method 
				setSpeed(speed){
					//필드 삽입시 반드시 this.를 붙여야한다. 다른 이름의 변수를 삽입해도 마찬가지다.
					this.speed = speed;
				}
				
				//getter, setter
				getSpeed(speed){
					//필드 삽입시 반드시 this.를 붙여야한다. 다른 이름의 변수를 삽입해도 마찬가지다.
					return this.speed
				}
				
				//getter, setter
				get meters(){
					console.log("meters() 실행");
					return this._meters;
				}
				
				set meters(value){
					console.log("meters(value) 실행");
					this._meters = value;
				}
				
			}
			//함수 정의
			function fun1() {
				//객체 생성
				var myCar = new Car();
				
				//인스턴스 필드 읽기
				console.log(myCar.model)
				console.log(myCar.year)
				//인스턴스 메소드 호출
				myCar.setSpeed(100);
				console.log(myCar.getSpeed())
				
				//정적 메소드 호출
				var model = Car.getModel()
				console.log(model)
				
				//private 필드 접근
				console.log(myCar._meters);
				
				//getter, setter의 사용
				myCar.meters = 60;
				console.log(myCar.meters);
				
			}
			
		</script>
	
	
	
	</head>	
	<body>
		<h5 class="alert alert-info">/home/exam12_class.jsp</h5>
		<button onclick="fun1()">클래스</button>
	</body>
</html>