<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BEM VINDO PROFESSOR</title>


<link rel="stylesheet" type="text/css" href="css/estiloBemVindoProfessor.css">



</head>
<body>


<header>

<div id="divLogoRaven">

<a href="bemVindoProfessor.jsp" id="iLogoRaven">ravenTech</a>

</div>



</header>



<main>


<h1 id="iHelloDev">bem vindo <%= request.getAttribute("nome") %> </h1>
<p id="iAreaProfessor">área do professor</p>


<div id="iDivBackGImagem">

<img alt="" src="imagens/iconProfessor.jpg" id="iBackGProfessor">

</div>


<!-- BOTAO DE EDITAR PERFIL -->
<a href="editarProfessor.jsp"><button id="iEditarPerfil">editar perfil</button></a>

<h3>Seus acessos:</h3>


<!-- DIV CONTEUDOS -->

<div id="iDivConteudos" class="classDivs">


<img alt="" src="imagens/iconConteudo.jpg" id="iImgConteudos" class="classImgs">




</div>


<!-- DIV ALUNOS -->
<div id="iDivAlunos" class="classDivs">


<img alt="" src="imagens/iconeAlun.png" id="iImgAlunos" class="classImgs">



</div>

<div id="iDivCalendarioAc" class="classDivs">


<img alt="" src="imagens/iconCalendario.png" id="iImgCalendario" class="classImgs">


</div>



<div id="iDivLegenda">

<p>CONTEÚDOS</p>



<p>ALUNOS</p>


<p>CALENDÁRIO ACADÊMICO
</p>


</div>


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