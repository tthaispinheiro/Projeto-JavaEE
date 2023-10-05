<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MATRICULE-SE</title>


<link rel="stylesheet" type="text/css" href="css/estiloMatricule.css">
</head>



<style>


label{

color: white;
font-size: 20px;
}

input{

width: 554px;
 height: 39px


}


</style>

<body>


<header>

<div id="divLogoRaven">

<a href="index.jsp" id="iLogoRaven">ravenTech</a>

</div>

</header>


<main>

<div id="divSuasInformacoes">


	<form action="MatriculeServlet" method="post" id="iFormMatricule">
	
	
		
		<label for="iNomeCompleto">Nome Completo</label>
		<br>
		<input id="iNomeCompleto" name="nomeCompleto"  type="text"/>
		<br>
		<br>
		
		<label for="iEmaill">Email</label>
		<br>
		<input id="iEmaill" placeholder="exemplo@.com" name="emaill" type="text"/>
		
		<br>
		<br>
		
		
		<label for="iCrieSenha">Crie sua senha:</label>
		<br>
		<input id="iCrieSenha" placeholder="*******" name="crieSenha" type="password"/>
		
		<br>
		<br>
		<br>
		<label for="iCpff">Cpf</label>
		<br>
		<input id="iCpff" placeholder="000-000-000-00" name="cpf" type="text"/>
		
		
		<label for="iTelefone" id="iLabelTelefone">Telefone:</label>
		<input id="iTelefone" placeholder="(00)0 0000-0000" name="telefone" type="text"/>
	
		<br>
		<br>
		<br>
		
		
        <label for="iDataNascimento" id="iLabelDataNas">Data de nascimento:</label>
		<br>
		<input id="iDataNascimento" placeholder="00/00/1990" name="dataDeNascimento" type="date"/>
		
	
		
		<br>
		<br>
		
		
		<label for="iEndereco">Endereço:</label>
		<br>
		<input id="iEndereco"  name="endereco" type="text"/>
		
		<br>
		<br>
		<br>

		<input type="submit" value="cadastrar" id="iCadastrar"/>
	
	
	

	</form>




</div>


<div id="iDivAvatars">

<img alt="" src="imagens/imatricule.png" id="iImg">


</div>


</main>



<footer id="iFooterLogin">






</footer>








</body>
</html>