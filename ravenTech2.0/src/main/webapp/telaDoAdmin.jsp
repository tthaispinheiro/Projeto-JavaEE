<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BEM VINDO ADM</title>

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

<a href="localizarPerfilAdm.jsp"><button><p>LOCALIZAR PERFIL</p></button></a>

 <!--    <button><p>EDITAR Perfil ALUNO</p></button> -->
<!--     <button href=""><p>Cadastrar novo usuário + </p></button>  --> 


</nav>


<main>

<div id="iDivCards">

<div class="cDivOptions" id="iDivBaseDados"><p class="classLegendCards">BASE DE DADOS</p></div>
<div class="cDivOptions" id="iDivConfig"><p class="classLegendCards">CONFIGURAÇÕES</p></div>
<div class="cDivOptions" id="iDivSalvarCss"><p class="classLegendCards">SALVAR CSS</p></div>
<div class="cDivOptions" id="iDivAcessos"><p class="classLegendCards">ACESSOS</p></div>
<div class="cDivOptions" id="iDivPerfilAdm"><p class="classLegendCards">PERFIL ADM</p></div>

</div>



</main>


</body>
</html>