<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Login</title>



<link rel="stylesheet" type="text/css" href="css/estiloImg.css">


<style>

#iRodapeLogin{

height: 187px;
width: 100%;
position: absolute;
margin-top: 1267px;
}

</style>

</head>


<body>

<header>


<div id="divLogoRaven">

<a href="index.jsp" id="iLogoRaven">ravenTech</a>

</div>

<h3 id="iAindaNaoTemAcesso">AINDA NÃO TEM ACESSO?</h3>

<br>

<a href="matricule.jsp"><button id="iBotaoMatricule">

<h4 id="imatr">MATRICULE-SE</h4>

</button></a>



</header>

<main>

<div id="iDivLoginJaEstudaComAgente">

	<form action="LoginServlet" method="post" id="iFormLogin">
	
	<h2 id="iTituloEstudaComAgente">Já Estuda com a gente?</h2>
	
	<h5 id="iFacaLogin">Faça seu login e boa aula!</h5>
	
	<br>
	
	
	
		<label for="email">e-mail</label>
		<br>
		<input id="iEmailInput" name="email" placeholder="exemple@.com" type="text" value="<%= request.getParameter("email")==null? "" :request.getParameter("email")==null %>"/>
	
	<br>
	<br>
	
		<label for="senhaLogin">senha</label>
		<br>
		<input id="iLoginSenha" name="senha" placeholder="******" type="password" value="<%= request.getParameter("senha")==null? "" :request.getParameter("senha") %>"/>
	
	
	<br>
	<br>
		<input type="submit" value="ENTRAR" id="iEntrar"/>
		
		
	
	</form>

<br>
<br>


	<button>ENTRAR COM FACEBOOK</button>
	<button>ENTRAR COM GOOGLE</button>


<br>

<h3 id="iEsqueciSenha">Esqueci minha senha</h3>


</div>


<div id="iDivAindaNaoEstudaComAgente">

<h2 id="iTituloAindaNaoEstuda">Ainda não estuda com a gente?</h2>
<h4 id="subSaoMaisDeMil">São mais de mil cursos nas seguintes áreas:</h4>

<br>
<br>

<!-- CARDS  -->


<div id="iCardProgramacao" class="cards"> <!-- CARD PROGRAMAÇÃO  -->

	<img id="iicone123" alt="" src="imagens/icone3t.png"/>
	
	
	<p id="iParagrafoEscola">Escola</p>

       <p id="iParagrafoProgramacao">PROGRAMAÇÃO</p>
       
       <p id="iparagrafoLogicaDeProgramacao">Lógica de programação, 
       
       <br>
       .NET, Quality Assurance</p>


</div>


<!-- CARD FRONT END -->

<div id="iCardFront" class="cards">  <!-- CARD FRONT  -->


	<img id="iiconeFront" alt="" src="imagens/iconefrontend.png"/>


<p id="iParagrafoEscolaFront">Escola</p>

       <p id="iParagrafoFront">FRONT_END</p>
       
       <p id="iparagrafoHtml">HTML e CSS, 
       
       <br>
       
       Svelte, VueJS</p>



</div>


<!-- CARD DATA SCIENCE -->
<div id="iCardDataScienc" class="cards">


<img id="iiconeDataScience" alt="" src="imagens/iconedatascience.png">


<p id="iParagrafoEscolaDataScience">Escola</p>

       <p id="iParagrafoDataSc">DATA_SCIENCE</p>
       
       <p id="iparagrafoSql">SQL e Banco de Dados,
       
       <br>
       
        Engenharia de Dados,
        
        <br>
        Data Science</p>

</div>

<!-- CARD IA -->

<div id="iCardIA" class="cards">


	<img id="iconeIa" alt="" src="imagens/iconeIA.png"/>


     <p id="iParagrafoEscolaIa">Escola</p>

       <p id="iParagrafoIa">INTELIGÊNCIA_
       
       <br>
       ARTIFICIAL</p>
       
       <p id="iparagrafoIAparaC">IA para Criativos,
       
       <br>
       IA para Programação,
       
       <br>
       IA para Dados</p>

</div>

<!-- CARD DEVOPS -->
<div id="iCardDevops" class="cards">



	<img id="iconeDevops" alt="" src="imagens/icondevopss.png"/>


      <p id="iParagrafoEscolaDevops">Escola</p>

       <p id="iParagrafoDevops">DEVOPS_</p>
       
       <p id="iparagrafoLinux">Linux, Confiabilidade,
       
       <br>
       Arquitetura</p>

</div>


<!-- CARD UX -->
<div id="iCardUx" class="cards">


	<img id="iconeUx" alt="" src="imagens/iconuxdes.png"/>


       <p id="iParagrafoEscolaUx">Escola</p>

       <p id="iParagrafoUx">_UX & DESIGN</p>
       
       <p id="iparagrafoUIDesign">UI Design,Design System,
       <br>
       UX Writing </p>

</div>


<div id="iCardMobile" class="cards">  <!-- CARD MOBILE -->

	<img id="iconeMobile" alt="" src="imagens/iconmobile.png"/>

      <p id="iParagrafoEscolaMobile">Escola</p>

       <p id="iParagrafoMobile">_MOBILE</p>
       
       <p id="iparagrafoReact">React Native, Flutter,
       
       <br>
       
       Android </p>


</div>  



<div id="iCardInovacaoGest"  class="cards">  <!-- CARD MOBILE -->

	<img id="iconeInovacao" alt="" src="imagens/iconInov.png"/>


      <p id="iParagrafoEscolaIn">Escola</p>

       <p id="iParagrafoInov">_INOVAÇÃO E GESTÃO</p>
       
       <p id="iparagrafoMetodos">Métodos Ágeis, Liderança,
       
       <br>
       Ensino e Aprendizado </p>


</div>



</div>

<div id="iBannerDecoracao">


<div id="iBannerMatricula">

	
<h1 id="iBannerTitulo">Ainda não estuda com a gente?</h1>
<h3 id="iMatriculeSeBanner">Matrícule-se agora!</h3>


<a href="matricule.jsp"><button id="iBotaoFazerMatricula">

<h3 id="ifazerMatriculla">Fazer matrícula</h3>

</button></a>

</div>

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