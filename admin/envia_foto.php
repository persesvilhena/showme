<?php
// Conexão com o banco de dados
include("conexao.php");
include("protege.php");
 
// Se o usuário clicou no botão cadastrar efetua as ações
if ($_POST['cadastrar']) {

$sql = mysqli_query($conecta, "SELECT foto FROM users1 WHERE id = '$id_gen';");
$usuario = mysqli_fetch_object($sql);
unlink("fotos/".$usuario->foto."");
 
	// Recupera os dados dos campos
	$us = $_POST['us'];
	$usn = $_POST['usn'];
	$nomedafoto = $_POST['nomefoto'];
	$foto = $_FILES["foto"];
 
	// Se a foto estiver sido selecionada
	if (!empty($foto["name"])) {
 
		// Largura máxima em pixels
		$largura = 5000;
		$larguramin = 500;
		// Altura máxima em pixels
		$altura = 2500;
		// Tamanho máximo do arquivo em bytes
		$tamanho = 5000000;

    	// Verifica se o arquivo é uma imagem
    	if(!eregi("^image\/(pjpeg|jpeg|png|gif|bmp)$", $foto["type"])){
     	   $error[1] = "Isso não é uma imagem.";
   	 	} 
 
		// Pega as dimensões da imagem
		$dimensoes = getimagesize($foto["tmp_name"]);
 
		// Verifica se a largura da imagem é maior que a largura permitida
		if($dimensoes[0] > $largura) {
			$error[2] = "A largura da imagem não deve ultrapassar ".$largura." pixels";
		}
		
		if($dimensoes[0] < $larguramin) {
			$error[5] = "A largura da imagem não deve ser menor de ".$larguramin." pixels";
		}
 
		// Verifica se a altura da imagem é maior que a altura permitida
		if($dimensoes[1] > $altura) {
			$error[3] = "Altura da imagem não deve ultrapassar ".$altura." pixels";
		}
 
		// Verifica se o tamanho da imagem é maior que o tamanho permitido
		if($foto["size"] > $tamanho) {
   		 	$error[4] = "A imagem deve ter no máximo ".$tamanho." bytes";
		}
 
		// Se não houver nenhum erro
		if (count($error) == 0) {
 
			// Pega extensão da imagem
			preg_match("/\.(gif|bmp|png|jpg|jpeg){1}$/i", $foto["name"], $ext);
 
        	// Gera um nome único para a imagem
        	$nome_imagem = md5(uniqid(time())) . "." . $ext[1];
 
        	// Caminho de onde ficará a imagem
        	$caminho_imagem = "fotos/" . $nome_imagem;
 
			// Faz o upload da imagem para seu respectivo caminho
			move_uploaded_file($foto["tmp_name"], $caminho_imagem);
 
			// Insere os dados no banco
			$sql = mysqli_query($conecta, "update users1 set foto = '$nome_imagem' where id = '$id_gen';");
 
			// Se os dados forem inseridos com sucesso
			if ($sql){
				echo "imagem enviada com sucesso <a href=index.php?pag=perfil target=_top>Voltar</a>";
			}
		}
 
		// Se houver mensagens de erro, exibe-as
		if (count($error) != 0) {
			foreach ($error as $erro) {
				echo $erro . "<br />";
			}
		}
	}
}
?>