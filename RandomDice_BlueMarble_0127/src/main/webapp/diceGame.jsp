<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>주사위 돌리기~돌리기~</h1>

<button name ="btn">
	<img alt="주사위 이미지" src="img/dice.jpg" width="100px" id="img">
</button>

<script>
	
	let dice_img = document.querySelector("#img");
	let dice_btn = document.querySelector("button[name='btn']");
	dice_btn.addEventListener('click', rollingDice);

	function rollingDice(){
		
		let xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function(){

			if(xhr.readyState == 4 && xhr.status == 200){
				let num = xhr.responseText;
				dice_img.setAttribute("src", "img/" + num + ".jpg");
			}
		}
		
		xhr.open("get", "diceRolling.do", true);
		xhr.send();

	}
		
</script>
</body>
</html>