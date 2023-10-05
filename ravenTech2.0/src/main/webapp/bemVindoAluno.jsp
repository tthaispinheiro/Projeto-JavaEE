<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>BEM VINDO ALUNO</title>

<link rel="stylesheet" type="text/css" href="css/estiloBemVindoAluno.css">
<style>


#cpf{


display:none;



}





</style>
</head>

<body>

<header>

<div id="divLogoRaven">

<a href="bemVindoAluno.jsp" id="iLogoRaven">ravenTech</a>

</div>



</header>


<main>


<h1 id="iHelloDev">bem vindo <%= request.getAttribute("nome") %> </h1>
<p id="iAreaAluno">área do aluno</p>


<div id="iDivBackGImagem">

<img alt="" src="imagens/backgroundAluno.png" id="iBackGAluno">

</div>

<!-- BOTAO DE EDITAR PERFIL -->
<form action="" method="post">
	
	<input id="cpf" placeholder="Text" type="text" readonly name="cpf"
	value="<%=request.getAttribute("cpf") %>"/>
	
<a href="editarAluno.jsp"><input type="submit" value="editarPerfil" id="iEditarPerfil" formaction="EditandoServlet" formmethod="post"/></a>


</form>


<!-- BOTAO EXCLUIR PERFIL -->
<a href="desejaMesmoDeletar.jsp" id="iExcluir"><button>excluir conta</button></a>


<h3>Formações recomendadas para você</h3>




<div id="iDivIniciante" class="classDivs">


<img alt="" src="imagens/iconinicianteProgramin.jpg" id="iImgIniciante" class="classImgs">




</div>

<div id="iDivJava" class="classDivs">


<img alt="" src="imagens/programacao-java.jpg" id="iImgJava" class="classImgs">



</div>

<div id="iDivC" class="classDivs">


<img alt="" src="imagens/iconncc.png" id="iImgC" class="classImgs">


</div>



<div id="iDivLegenda">

<p>INICIANTE EM
<br>
PROGRAMAÇÃO</p>



<p>JAVA E ORIENTAÇÃO A

<br>

OBJETOS

</p>


<p>C# E ORIENTAÇÃO A 

<br>


OBJETOS


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