<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDITAR ALUNO</title>

<link rel="stylesheet" type="text/css" href="css/estiloEditarAluno.css">
</head>

<body>

<header>

<div id="divLogoRaven">

<a href="bemVindoAluno.jsp" id="iLogoRaven">ravenTech</a>

</div>



</header>

<main>


<img alt="" src="imagens/iconEditar.jpg" id="iImgditar">





<form action="EditarAlunoServlet" method="post">

	
<input id="iIdd" placeholder="Text" type="text" readonly name="id" value=" <%=request.getAttribute("id") %>"/>
	
        
        <label for="iNomeCompleto">Nome Completo</label>
		<br>
		<input id="iNomeCompleto" name="nomeCompleto"  type="text" value=" <%=request.getAttribute("nome") %>"/>
		
		<br>
		<br>
		
		<label for="iEmaill">Email</label>
		<br>
		<input id="iEmaill" placeholder="exemplo@.com" name="emaill" type="text" value=" <%=request.getAttribute("emaill") %>"/>
		
		<br>
		<br>
		<label for="iCrieSenha">Crie sua senha:</label>
		<br>
		<input id="iCrieSenha" placeholder="*******" name="crieSenha" type="password" value=" <%=request.getAttribute("crieSenha") %>"/>
		
		<br>
		<br>
		<br>
		
		<label for="iCpff">Cpf</label>
		<br>
		<input id="iCpff" placeholder="000-000-000-00" name="cpf" type="text" value=" <%=request.getAttribute("cpf") %>"/>
		
		<br>
		<br>
		<br>
		
		<label for="iTelefone" id="iLabelTelefone">Telefone:</label>
		<input id="iTelefone" placeholder="(00)0 0000-0000" name="telefone" type="text" value=" <%=request.getAttribute("telefone") %>"/>
	
		<br>
		<br>
		<br>
		
		
        <label for="iDataNascimento" id="iLabelDataNas">Data de nascimento:</label>
		<br>
		<input id="iDataNascimento" placeholder="00/00/1990" name="dataDeNascimento" type="date" value=" <%=request.getAttribute("dataNascimento") %>"/>
		
	
		
		<br>
		<br>
		
		
		<label for="iEndereco">Endereço:</label>
		<br>
		<input id="iEndereco"  name="endereco" type="text" value=" <%=request.getAttribute("endereco") %>"/>
		
		<br>
		<br>
		<br>
		
		
	<!-- 	<label class="classEsconder" for="iid">id</label>
		<input class="classEsconder" placeholder="Text" type="text" name="id" /> -- -->
		
		
		
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