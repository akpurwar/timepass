<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Calculator</title>
		<link rel="stylesheet" href="calc.css">
	</head>
	<body>
		<center>
			<h2>Calculator</h2>
			<div class="Wrapper">	
				<div class="screen">
					<input id="screen">
				</div>
				<div class="keypad">
					<button value="7" onclick="calculate(this)">7</button>
					<button value="8">8</button>
					<button value="9">9</button>
					<button value="/">/</button><br>	
					<button value="4">4</button>
					<button value="5">5</button>
					<button value="6">6</button>
					<button value="*">*</button><br>
					<button value="1">1</button>
					<button value="2">2</button>
					<button value="3">3</button>
					<button value="-">-</button><br>
					<button value="0">0</button>
					<button value=".">.</button>
					<button value="=">=</button>
					<button value="+">+</button><br>
					<button value="reset" type="reset">Reset</button>
					<button value="sci" onmousemove="scientific()">Scientific</button>
					<div id = "show">
						

					</div>	

				</div>
			</div>
		</center>

		<script>
           var count = 0
           function scientific(){
			   
			   var v = document.createElement("button")
			 v.textContent = "sqrt";
			 
			   var x =  document.getElementById("show");
			   count++;
			    if(count<=3){

			
			x.append(v);
			
			
				}

		
		   }
			var buttons = document.getElementsByTagName('button');
			for (var i = 0, len = buttons.length; i < len; i++) {
				buttons[i].onclick = function (){
					
					
					console.log(this.value);
					if((this.value)=="reset"){
						document.getElementById("screen").value=" ";
					}
					else if((this.value)=="="){

					
						var result = eval(document.getElementById("screen").value);
						document.getElementById("screen").value = result;


						show.addEventListener('click',()=>{
				 var sq = Math.sqrt(document.getElementById("screen").value);
				 console.log(sq);
				 document.getElementById("screen").value = sq;
			})





					}
					else if((this.value)=="sci"){
						
						scientific();
					}
					else {
						document.getElementById("screen").value += this.value;
					}
				}
			}
		</script>		
	</body>
</html>


.Wrapper{
	height:300px;
	width:300px;
	background-color:#eee;
	padding:20px;
}

.screen{
	background-color:white;
	margin-bottom:20px; 
	box-shadow: 5px 5px 5px #888888;
}

#screen{
	margin:15px;
	height:25px;
	width:270px;
	border:2px solid #eee;
}

.keypad{
	height:auto;
}

.keypad button{
	width:65px;
	height:40px;
	margin:3px;
	color:#666;
	box-shadow: 5px 5px 5px #888888;
}
