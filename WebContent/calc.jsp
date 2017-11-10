<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Calculadora sem pegadinha agora</title>
		<link rel="stylesheet" type="text/css" href="estilos.css">
	</head>
	
	<body>
		<h1>Calculadora sem pegadinha</h1>
		<label>Faça conforme o exemplo: numero operador numero (5-5)</label><br/><br/>
		<label>Operadores: + - / *</label><br/>
		<input type="text" id="n1"> <input type="text" id="op"> <input type="text" id="n2">
		<input type="button" id="calc" value="Calcular" onclick="calc()"><br/>
		
		<div id="resp"></div>
		
		<script type="text/javascript">
			function calc(){
				var n1 = document.getElementById("n1").value;
				var n2 = document.getElementById("n2").value;
				var op = document.getElementById("op").value;
				var resp = document.getElementById("resp").value;
				
				var msg = "";
				
				if(isNumber(n1)){
					if(isNumber(n2)){
						switch(op){
						case "+":
							msg = Number(n1) + Number(n2);
							break;
						case "-":
							msg = n1 - n2;
							break;
						case "*":
							msg = n1 * n2;
							break;
						case "/":
							if(n2 == 0){
								msg = "idiota, não se divide por zero";
							}else{
								msg = n1 / n2;
							}
							break;
						default:
							msg = op + " não é operador suportado, jumento"
							break;
						}
					}else{
						msg = n2 + " não é numero suportado, jumento"
					}
				}else{
					msg = n1 + " não é numero suportado, jumento"
				}
				alert(msg);
			}
			
			function isNumber(n) {
			    return !isNaN(parseFloat(n)) && isFinite(n);
			}

		</script>
	</body>
</html>