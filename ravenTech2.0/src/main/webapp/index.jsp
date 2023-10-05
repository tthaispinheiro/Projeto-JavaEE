<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<link rel="stylesheet" type="text/css" href="css/indexCss.css">



<style>
  
  @import url('https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap');
  
  #divLogoRaven{
	
	height: 89px;
    width: 90px;
    border-radius: 93px;
    background-color: rgb(113, 6, 185);
    position: absolute;
    margin-left: 63px;
    margin-top: 29px;
	
	
}



#iLogoRaven {
	color: rgb(255, 255, 255);
    font-size: 30px;
    font-style: inherit;
    font-family: math;
    margin-left: 20px;
    margin-top: 28px;
    position: absolute;
    text-decoration: none;
}




#iIconData{
	
	height: 27px;
    width: 31px;
    position: absolute;
    margin-left: -45px;
    margin-top: -6px;
	
}


#iDatasc{
	
	
	color: #f9e400;
    position: absolute;
    font-family: 'Lato';
    margin-left: 62px;
    font-size: 14px;	
	
	
	
}



#iDivAvatarCentral{


	height: 505px;
    width: 456px;
    margin-top: -1046px;
    margin-left: 1014px;
    background: #0bf3d357;
    border-radius: 50px;
	
	
	
}


#iAvatarCentral{

   height: 452px;
    width: 459px;
    border-radius: 50px;
    margin-top: 31px;
    margin-left: -40px;
	
	
	
}
  
  
  
  #iRodapeLogin{
   height: 187px;
    width: 100%;
    margin-top: 336px;
}




#ihr{
	
   margin-top: -76px;
    position: absolute;
    width: 86%;
    margin-left: 117px;
	
	
}

#listaFooter{
	
	color: white;
    margin-left: 390px;
    margin-top: 8px;
    position: absolute;
	
	
	
}



#iRedesSociais{
	
	height: 120px;
    width: 236px;
    margin-left: 1056px;
    margin-top: -1px;

	
	
	
	
	
}
  

</style>


<title>Index</title>
</head>


<body>

	<!-- CABEÇALHO DO SITE -->
<header>

<div id="divLogoRaven">

<a href="index.jsp" id="iLogoRaven">ravenTech</a>

</div>



<nav>
		<!-- OPÇÕES DO MEU FLUTUANTE -->
	<!--  	   <div id="iDivOpcoesMenu"> -->

		<!--  	<a href="formacoesCursos.jsp"><button id="iBotaoFormacoes">

					<h4 id="iTechInformacao">TECH-FORMAÇÕES</h4>

				</button></a>


			<!-- BOTAO PARA EMPRESAS -->

		<!--  	<a href="paraEmpresas.jsp"><button id="iBotaoEmpresas">

					<h4 id="iParaEmpresas">PARA-EMPRESAS</h4>

				</button></a>


	<!--  	</div> -->

		<!-- BOTAO PARA ENTRAR/LOGIN -->
		<a href="login.jsp"><button id="iBotaoEntrar">

				<h4 id="iEntrar">ENTRAR</h4>

			</button></a>


		<!-- BOTAO PARA MATRICULAR -->
		<a href="matricule.jsp"><button id="iBotaoMatricule">



				<h4 id="iMatriculee">MATRICULE-SE</h4>



			</button></a>



</nav>
	</header>




<!-- CORPO DO SITE -->
	<main>



<h1 id="iTituloNavegeEmtech">Navegue 

<br>

em </h1> <h5 id="iTecnologia">Tecnologia!</h5>


<div id="iDivTecnologia">

<h1 id="iTecnologia"></h1>





</div>


<h5 id="iVocVaiEstudar">Você vai estudar, praticar, discutir e se aprofundar


<br> em uma plataforma que respira tecnologia.</h5> 




<!-- MASCOTE -->
		<div id="iDivMascote">  <!-- DIV MASCOTE -->


			<img id="iMascoteImg" alt="" src="imagens/avatar1.jpg" />  <!-- IMAGEM DA MASCOTE -->




		<!--	<div id="iLegendaDiv">  LEGENDA DIV 

				<h6 id="ilegendaMidJourn">ravenTech @midjourneytes</h6>

			</div>
-->

		</div>




<div id="iDivCards">


<div id="iCardProgramacao" class="cards">

<h5 id="iProgramacao">>_ PROGRAMAÇÃO</h5>



<ul id="iParagrafoCards">

<li>A partir do zero</li>
<li>APIs com node.js e Express</li>
<li>Aprenda a programar em C#</li>
<li>Aprenda a programar em Java</li>
<li>Aprenda a programar em JS</li>
<li>e muito mais...</li>


</ul>

</div>



<div id="iCardFront" class="cards">

<h5 id="iFront">/*_FRONT-END*/</h5>

<ul id="iParagrafoCards">

<li>A partir do zero</li>
<li>HTML, CSS E JAVASCRIPT</li>
<li>Angular: construindo...</li>
<li>Bootstrap5</li>
<li>Criando aplicação</li>
<li>e muito mais...</li>


</ul>


</div>



<div id="iCardDataScienc" class="cards">

<h5 id="iDatasc">

<img alt="" src="imagens/icondattasc.png" id="iIconData">DATA_SCIENCE

</h5>

<ul id="iParagrafoCards">

<li>A partir do zero</li>
<li>HTML, CSS E JAVASCRIPT</li>
<li>Angular: construindo...</li>
<li>Bootstrap5</li>
<li>Criando aplicação</li>
<li>e muito mais...</li>


</ul>








</div>



<div id="iCardIA" class="cards">


<h5 id="iIA">_INTELIGENCIA ARTIFICIAL</h5>

<ul id="iParagrafoCards">

<li>IA para programação</li>
<li>IA para dados</li>
<li>e muito mais...</li>


</ul>




</div>


<div id="iCardDevops" class="cards">


<h5 id="iDeVops">_DEVOPS</h5>

<ul id="iParagrafoCards">

<li>AWS</li>
<li>Azure</li>
<li>Segurança...</li>
<li>IaC...</li>
<li>Linux...</li>
<li>e muito mais...</li>




</ul>


</div>


<div id="iCardUx" class="cards">


<h5 id="iUxDesign">_UX & DESIGN</h5>

<ul id="iParagrafoCards">

<li>Usabilidade e UX</li>
<li>Vídeo e Motion</li>
<li>Segurança...</li>
<li> 3D e mais</li>

</ul>


 





</div>


<div id="iCardMobile" class="cards">

<h5 id="iMobile">_MOBILE</h5>

<ul id="iParagrafoCards">

<li>React Native</li>
<li>Flutter</li>
<li>iOS e Swift...</li>
<li>Android</li>
<li>Kotlin</li>
<li>Jogos e mais... </li>

</ul>


 
</div>



<div id="iCardInovacaoGest"  class="cards">

<h5 id="iInovGestao">_INOVAÇÃO E GESTÃO</h5>

<ul id="iParagrafoCards">

<li>Métodos Ágeis</li>
<li>Softskills</li>
<li>Liderança  e Gestão</li>
<li>Startups</li>
<li> Vendas e mais...</li>


</ul>


</div>


</div>




<div id="iDivAvatarCentral">

<img alt="" src="imagens/avatarCentral.png" id="iAvatarCentral">



</div>

	</main>



<!-- RODAPÉ -->
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