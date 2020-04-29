<?php
$conecta = mysqli_connect("localhost", "root", "");
		   mysqli_select_db($conecta, "showme");
		   
class SistemaLogin { // Defino a classe principal do sistema
	
	//function antisql($sql) { // Função Anti-SQL
	//	$sql = get_magic_quotes_gpc() == 0 ? addslashes($sql) : $sql;
	//	$sql = trim($sql);
	//	$sql = strip_tags($sql);
	//	$sql = mysqli_escape_string($sql);
	//	return preg_replace("@(--|\#|\*|;|=)@s", '', $sql);
	//}
	function antisql($sql) {
    $sql = addslashes($sql);
    return $sql;
	}
}
$class = new SistemaLogin;
$tabela = "user";
?>
