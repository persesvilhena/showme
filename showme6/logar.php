<?php include("engine/conexao.php"); ?>
<link rel="shortcut icon" href="engine/imgs/icone.ico">
<link rel="stylesheet" href="engine/css/style.css" type="text/css">
<script src="engine/js/utils.js" type="text/javascript"></script>
<script src="engine/js/validation.js" type="text/javascript"></script>
<title>Show Me - Logar</title>
<body>
<div id="center">
<!--<div id="conteudodf" style="position: relative; left: 0px; top: 0px; width: 1000px; height: 60px; text-align: justify;" align="left">-->
<div style="margin-top: 75px;">
<?php include "include/pag/cabecaus.php"; ?>
</div>
<!--</div>-->
<?php
session_start();
$mensagem_erro = "";

if(!empty($_COOKIE["login"]) && !empty($_COOKIE["senha"]) && !empty($_COOKIE["id"])) { // Verifico se j� existem os cookies de login. Caso existam, redirecionam o user para a p�gina restrita

	header("Location: index.php?index");
	exit();
	
	
}
if(isset($_POST["logar"])) { // Verifico se o bot�o de login foi acionado
	
	if(!empty($_POST["login"]) && !empty($_POST["senha"])) { // Verifico se os campos foram preenchidos
		
		$login = $class->antisql($_POST["login"]); // Filtro os dados de login name originados do formul�rio
		$senha = $class->antisql($_POST["senha"]); // Filtro a senha originada do formul�rio
		
		$senha_sha1 = sha1($senha); // Codifico a senha inserida para consulta ao SQL
		
		$valida_user = mysql_query("SELECT * FROM $tabela WHERE login='$login' AND senha='$senha'") or die(mysql_error()); // Fa�o a consulta ao SQL para buscar o usu�rio com os dados informados pelo form
		
		if(mysql_num_rows($valida_user) > 0) { // Verifico se a consulta retorna alguma linha
			
			$lembrar = $_POST["lembrar"]; // Pego o valor do checkbox 'Lembrar' do formul�rio
			$info = mysql_fetch_array($valida_user); // Defino a var respons�vel por trazer as informa��es do BD
			
			$login = $info["login"]; // Recupero o campo nome do BD
			$pass = $info["senha"]; // Recupero o campo senha do BD
			$id_generico = $info["id"]; // Recupero o campo id do BD
			
			$id = base64_encode($id_generico); // Codifico o id para obter mais seguran�a
			
			if($lembrar == "1") { // Se o checkbox foi marcado, gravo cookies de 1 ano
				
				// Gravo os cookies respons�veis pelo login
				setcookie("login", $login, time()+31536000); // setcookie(nome_cookie, valor_cookie, tempo_expiracao)
				setcookie("senha", $pass, time()+31536000); // Nesses casos, usei o tempo como anual
				setcookie("id", $id, time()+31536000); // Assim: time()[agora]+[mais]3153600[60*60*24*365]{segs.*min.= 1 hora em segs => 1 hr em segs * 24 hrs = 1 dia => 1 dia * 365 dias = 1 ano}
				
			}
			else { // Caso contr�rio, gravo cookies que expirar�o assim q o browser fechar
				
				// Gravo os cookies respons�veis pelo login
				setcookie("login", $login, 0); // Aqui os cookies expiram assim q o browser fechar
				setcookie("senha", $pass, 0);
				setcookie("id", $id, 0);
			}
			
			// Redireciono para a p�gina restrita
			header("Location: index.php?index");
			exit();
		}
		else { // Se n�o retornar, define mensagem de erro
			
			$mensagem_erro = "<b>Dados Incorretos!</b>";
		}
	}
	else { // Caso tenha algum campo em branco, define mensagem de erro
		
		$mensagem_erro = "<b>Por favor, preencha os campos corretamente!</b>";
	}
}
?>
<div id="conteudo3" style="margin-top: 10px;">
<div align="center">
<form method="post" action="<?php $PHP_SELF; ?>">
<table>
<tr><td><span class="texto">Login: </span></td><td><input type="text" name="login" id="lglogin"></td></tr>
<tr><td><span class="texto">Senha: </span></td><td><input type="password" name="senha" id="lgsenha"></td></tr>
</table>
<input type="checkbox" name="lembrar" id="lembrar"><span class="texto">Manter-me conectado</span><br>
<button type="submit" name="logar" value="Logar" id="logar">Logar</button>
</form>
<span class="texto">esqueceu a senha?</span><br>
<span class="texto"><?php echo $mensagem_erro; ?></span>
</div>
</div>



<div id="conteudo3" style="margin-top: 6px;">
<br>
<div align="center"><span class="titulo">Cadastre-se Gratuitamente</span></div>
<?php
$mensagem_erro1 = "";

if(isset($_POST["cadastrar"])) { // Verifico se o bot�o cadastrar foi acionado
	
	if(!empty($_POST["login"]) && !empty($_POST["senha"]) && !empty($_POST["email"])) { // Verifico se os campos foram preenchidos
		
		$login = $class->antisql($_POST["login"]); // Filtro os dados de login name originados do formul�rio
		$nome = $class->antisql($_POST["nome"]); // Filtro a senha originada do formul�rio
		$sobrenome = $class->antisql($_POST["sobrenome"]); // Filtro o e-mail originado do formul�rio
		$senha = $class->antisql($_POST["senha"]); // Filtro o e-mail originado do formul�rio
		$email = $class->antisql($_POST["email"]); // Filtro o e-mail originado do formul�rio

		
		$senha_sha1 = sha1($senha); // Codifico a senha inserida para consulta SQL
		
		$repeat_user = mysql_query("SELECT * FROM $tabela WHERE login='$login'") or die($mensagem_erro = "Houve um erro:<br />".mysql_error()); // Fa�o a consulta ao SQL para verificar se n�o h� usu�rios com o mesmo login name
		
		if(mysql_num_rows($repeat_user) > 0) { // Verifico se a consulta retorna algum resultado. Nesse caso, se retornar, define uma mensagem de erro.
			
			$mensagem_erro1 = "J� existe um usu�rio com este login!";
		}
		else {
			
			$insert = mysql_query("INSERT INTO $tabela(login, senha, email, nome, sobrenome, foto, epp, rev) VALUES('$login', '$senha', '$email', '$nome', '$sobrenome', 'new/new.png', '30', '0')") or die(mysql_error()); // Insiro os dados no BD
			
			if($insert) { // Verifico se a query foi executada com sucesso. Se sim, define mensagem de sucesso.
				
				$mensagem_erro1 = "<b>Usu�rio cadastrado com sucesso!</b>";
			}
		}
		
	}
	else { // Se houver algum campo em branco, define mensagem de erro
	
		$mensagem_erro1 = "<b>Por favor, preencha os campos corretamente!</b>";
		
	}

$testesql = mysql_query("SELECT * FROM $tabela WHERE nome='$login';");
$testesql2 = mysql_fetch_array($testesql);
$apagando = mysql_query("INSERT INTO foto VALUES (null, '$testesql2[id]', 'semfoto.jpeg')");

$testesql1 = mysql_query("SELECT * FROM $tabela WHERE nome='$login';");
$sqldata = mysql_fetch_array($testesql1);
$apagando1 = mysql_query("INSERT INTO amigos VALUES (null, '$sqldata[id]', '$sqldata[id]', '$sqldata[nome]', '$sqldata[nome]')");

echo "<script>alert('" . $mensagem_erro1 . "')</script>";

}
?>
<div align="center">
	<form method="post" action="<?php $PHP_SELF; ?>">
		<table border="0" cellspacing="0" cellpadding="5">
		<tr>
			<td><span class="texto">Login:</span></td>
			<td><input id="login" type="text" name="login" /></td>
			<td><img id="imgloginstatus" src="engine/imgs/blank.png"></td>
		</tr>
		<tr>
			<td><span class="texto">Senha:</span></td>
			<td><input id="senha" type="password" name="senha" /></td>
			<td><img id="imgsenhastatus" src="engine/imgs/blank.png"></td>
		</tr>
		<tr>
			<td><span class="texto">Repita a senha:</span></td>
			<td><input id="senha1" type="password" name="senha1" /></td>
			<td><img id="imgsenha1status" src="engine/imgs/blank.png"></td>
		</tr>
		<tr>
			<td><span class="texto">E-mail:</span></td>
			<td><input id="email" type="text" name="email" /></td>
			<td><img id="imgemailstatus" src="engine/imgs/blank.png"></td>
		</tr>
		<tr>
			<td><span class="texto">Nome:</span></td>
			<td><input id="nome" type="text" name="nome" /></td>
			<td><img id="imgnomestatus" src="engine/imgs/blank.png"></td>
		</tr>
		<tr>
			<td><span class="texto">Sobrenome:</span></td>
			<td><input id="sobrenome" type="text" name="sobrenome" /></td>
			<td><img id="imgsobrenomestatus" src="engine/imgs/blank.png"></td>
		</tr>
		<tr>
			<td></td>
			<td><button id="cadastrar" type="submit" name="cadastrar" value="Cadastrar">Cadastrar</button></td>
		</tr>
		</table>
	</form>
</div>

</div>
<div id="barrasuperior" align="center">
<div id="center">
<img src="engine/imgs/LOGOB1.png" align="left" height="60" style="margin-top: 3px;">

<div style="margin-left: 420px; height: 70px; width: 200px;" align="center">
<form method="post" action="index.php?p=buscar">
<input type="text" name="login" id="input1"><br><button type="submit" name="buscar" value="Buscar" id="input2"><img src="engine/imgs/procurar.png"></button>
</form>
</div>

</div>
</div>

<div align="center"><span class="subtitulo">Show Me � 2014</span></div>
