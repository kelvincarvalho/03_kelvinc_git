function testeResposta(){
	var res = document.getElementById("res").value;
	var img = document.getElementById("img");
	
	if(res == 4){
		img.className ="acertou";
	}else{
		img.className = "errou";
	}
	
}

var bt = document.getElementById("bt");
bt.addEventListener("click", testeResposta)