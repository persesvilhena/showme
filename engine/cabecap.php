<?php include "engine/conexao.php"; ?>
<?php

if(!empty($_COOKIE["login"]) && !empty($_COOKIE["senha"]) && !empty($_COOKIE["id"])){ // Verifico se existe cookies de login

	// Transformo os cookies em variáveis
	$login = $_COOKIE["login"];
	$senha = $_COOKIE["senha"];
	$id_gen = base64_decode($_COOKIE["id"]); // Decodifico o id do cookie
	
	// Consulto o BD para ver se os cookies são compatíveis com os dados SQL
	$auth_user = "SELECT * FROM $tabela WHERE id='$id_gen' AND login='$login' AND senha='$senha'";
	$autentica = mysqli_query($conecta, $auth_user); // Executo a busca
	$rs = mysqli_fetch_array($autentica); // Defino o array dos resultados para a var $rs
	
	$id = $rs["id"]; // Retorno o id do BD
	
	$rConfirm = mysqli_num_rows($autentica); // Var responsável por retornar o número de linhas da consulta

	$mysqlq = mysqli_query($conecta, "SELECT * FROM $tabela WHERE id='$id'"); // Faço uma consulta para pegar os dados do user
	$row = mysqli_fetch_array($mysqlq); // Var responsável pelo array de resultados da consulta em $mysqlq	
	
} 
else { // Se não retornar nenhuma linha, redireciona o usuário para a página de login
	header ("Location: logarp.php");
	exit();
}
?>
