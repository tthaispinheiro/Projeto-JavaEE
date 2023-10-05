<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDITAR PROFESSOR</title>

<link rel="stylesheet" type="text/css" href="css/estiloEditarProfessor.css">
</head>

<body>

<header>

<div id="divLogoRaven">

<a href="bemVindoProfessor.jsp" id="iLogoRaven">ravenTech</a>

</div>



</header>

<main>



<img alt="" src="imagens/iconEditarProfessor.jpg" id="iImgditar">


<form action="EditarProfessorServlet" method="post">


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
		
		<br>
		<br>
		<br>
		
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
		
		
		<label class="classEsconder" for="iid">id</label>
		<input class="classEsconder" placeholder="Text" type="text" name="id"/>
		
		
		
		<br>
		<br>
		<br>

		<input type="submit" value="cadastrar" id="iCadastrar"/>
	



</form>

</main>






<footer id="iRodapeLogin">


<hr id="ihr">


<div id="divLogoRaven">

<a href="index.jsp" id="iLogoRaven">ravenTech</a>

</div>


<ul id="listaFooter">

<li>SOBRE A RAVENTECH </li>
<li>DÚVIDAS FREQUENTES </li>
<li>SUGIRA UM CURSO</li>
<li> SUGIRA UMA FUNCIONALIDADE</li>
<li> BLOG DA RAVENTECH</li>

</ul>


<img alt="" id="iRedesSociais" src="imagens/iconeSocialmedia.png">



</footer>


</body>
</html>