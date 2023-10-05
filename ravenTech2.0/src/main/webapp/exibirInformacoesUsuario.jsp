<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exibir dados do usuario</title>


<link rel="stylesheet" type="text/css" href="css/estiloDadosDoUsuario.css">
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



<form action="LocalizarPerfilAdmServlet">


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
		<br>
		<label for="iCpff">Cpf</label>
		<br>
		<input id="iCpff" placeholder="000-000-000-00" name="cpf" type="text"/>
		<br>
		<br>
		
		<label for="iTelefone" id="iLabelTelefone">Telefone:</label>
		<br>
		<br>
		<input id="iTelefone" placeholder="(00)0 0000-0000" name="telefone" type="text"/>
	
		<br>
		<br>
		<br>
		
		
        <label for="iDataNascimento" id="iLabelDataNas">Data de nascimento:</label>
		<br>
		<input id="iDataNascimento" placeholder="00/00/1990" name="dataDeNascimento" type="date"/>
		


</form>

















</body>
</html>