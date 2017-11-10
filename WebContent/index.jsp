<!DOCTYPE>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Exercicio GIT HUB</title>
		
		<style type="text/css">
			.acertou{
				background: url(./Resposta%20Correta.jpg);
				background-size: cover;
				padding: 600px 200px;
				margin: 100px;
			}
		
			.errou{
				background: url(./Resposta%20Errada.jpg);
				background-size: cover;
				padding: 600px 200px;
				margin: 100px;
			}		
		</style>
		
	</head>
	
	<body>
		<h1> Bem Vindo!</h1>
		<h2>Formulário Kelvin Carvalho</h2>
		
		<form>
			<label for="res">Quanto é 2 + 2? </label>
			<input type="text" id="res" name="res">
			
			<input type="button" id="bt" name="bt" value="Verificar" onclick="testeResposta()">
			
			<div id="img"></div>
		</form>
		
		<script type="text/javascript">
			function testeResposta(){
				var res = document.getElementById("res").value;
				var img = document.getElementById("img");
				
				if(res == 4){
					img.className ="acertou";
				}else{
					img.className = "errou";
				}
				
			}
		</script>
	</body>
</html>