<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOCALIZAR PERFIL ADM</title>

<link rel="stylesheet" type="text/css" href="css/estiloTelaAdm.css">

</head>

<body>

<header>

<p id="iLogoRADm">ravenTech-ADM</p>

</header>


<nav>


<div id="iCircleAdm">

<img alt="" src="imagens/iconadm.jpg" id="iIconAdm">


</div>

<h4 id="iBemVindoAdm">Bem vindo ADM</h4>

<hr>



<a href="telaDoAdmin.jsp"><button><p>INÍCIO</p></button></a>

<a href=""><button><p>LOCALIZAR PERFIL</p></button></a>

 <!--    <button><p>EDITAR Perfil ALUNO</p></button> -->
<button><p>Cadastrar novo usuário + </p></button>


</nav>


<main>

<div id="iDivPesquisar">



<form action="LocalizarPerfilAdmServlet" method="post">


	<label for="pesquisar">Informe o cpf do Usuário a localizar: </label>
	<br>
	<br>
	<br>
	<input id="ipesquisar" placeholder="Text" type="text" name="pcf"/>
	
	<input type="submit" value="pesquisar" id="pesquisar"/>



</form>


</div>

</main>


</body>
</html>