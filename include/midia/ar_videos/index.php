<?php
$cont = 0;
if($i1 == null){$i1 = 1;}
if ($i1 == 1){
$secveradm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar = '$i2'");
$rsecveradm = mysqli_fetch_array($secveradm);
if($rsecveradm['adm'] == 1){
	$csql = mysqli_query($conecta, "SELECT * FROM videos WHERE id_ar = '$i2';");
	while($rsql = mysqli_fetch_array($csql)){
		echo "
		<div id=\"item\" style=\"position: relative; width: 381px; float: left; margin: 2px; text-align: justify; padding: 5px;\">
		<div id=\"myElement" . $rsql['id'] . "\">Loading the player...</div>

		<script type=\"text/javascript\">
   		jwplayer(\"myElement" . $rsql['id'] . "\").setup({
        	file: \"uploads/videos/" . $rsql['link'] . "\",
        	image: \"/uploads/myPoster.jpg\",
        	width: \"381\"
    	});
		</script>
		<br><span class=\"titulo\"><center><a href=index.php?arvideos&i1=5&i2=" . $rsql['id'] . " class=classe1>" . $rsql['nome'] . "</a><br></span>
		<span class=\"texto\">
		<a href=\"#pfdialog\" name=\"pfmodal\" class=\"classe1\" onclick=\"CarregaDadosJanela('" . $rsql['id'] . "','arvid_edit');\">Alterar</a> - 
		<a href=\"#pfdialog\" name=\"pfmodal\" class=\"classe1\" onclick=\"CarregaDadosJanela('" . $rsql['id'] . "','arvid_del');\">Excluir</a>
		</span>
		</center>
		</div>
		";
		$cont = $cont + 1;
		$mod = $cont % 2;
 		if ($mod == 0){ echo "<div style=\"clear: both;\"></div>"; }
	}
	echo "<div style=\"clear: both;\"></div>";
	if (mysqli_num_rows($csql) == 0){
		echo "<center><span class=\"titulo\">A lista de videos está vazia</span></center>";
	}
	echo "<br><div align=right><a href=\"#pfdialog\" name=\"pfmodal\" class=\"botao\" onclick=\"CarregaDadosJanela('" . $i2 . "','arvid_novo');\" class=\"botao\">Novo video</a></div>";

}
}













if($i1 == 2){
	$csql = mysqli_query($conecta, "select * from videos where id = '$i2';");
	$rsql = mysqli_fetch_array($csql);
	$secveradm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar = '$rsql[id_ar]'");
	$rsecveradm = mysqli_fetch_array($secveradm);
	if($rsecveradm['adm'] == 1){
		if(isset($_POST["alterar"])) {
			if(!empty($_POST["nome"]) && !empty($_POST["descricao"])) {
				$nome = $class->antisql($_POST["nome"]);
				$descricao = $class->antisql($_POST["descricao"]);
				$link = $class->antisql($_POST["link"]);
				$nlink = str_replace('https://www.youtube.com/watch?v=' , '' , $link);

				$altera = mysqli_query($conecta, "update videos set nome = '$nome', descricao = '$descricao' where id = '$i2';");
				if ($altera){ 
					echo "<script>alert('Video alterado com sucesso!');window.location='index.php?arvideos&i2=" . $rsql['id_ar'] . "';</script>"; 
				}else{
					echo "<script>alert('Houve um problema!');window.location='index.php?arvideos&i2=" . $rsql['id_ar'] . "';</script>";
				}
			}else{
				echo "<script>alert('Houve um problema!');window.location='index.php?arvideos&i2=" . $rsql['id_ar'] . "';</script>";
			}
		}

		echo "<span class=\"titulo\">Editar</span><hr size=\"1\" color=\"#cccccc\">
		<form action=\"index.php?arvideos&i1=2&i2=" . $rsql['id'] . "\" method=\"post\">
		<span class=\"texto\">Nome:</span><input name=\"nome\" id=\"cordoinput\" type=\"text\" value=\"" . $rsql['nome'] . "\"><br>
		<span class=\"texto\">Descricao:</span><textarea name=\"descricao\" id=\"cordoinput\" type=\"text\" rows=\"5\" cols=\"50\">" . $rsql['descricao'] . "</textarea><br>
		<input name=\"alterar\" id=\"cordoinput\" type=\"submit\" value=\"Alterar\">
		</form>
		";
	}
}







if($i1 == 3){
	$csql = mysqli_query($conecta, "select * from videos where id = '$i2';");
	$rsql = mysqli_fetch_array($csql);
	$secveradm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar = '$rsql[id_ar]'");
	$rsecveradm = mysqli_fetch_array($secveradm);
	if($rsecveradm['adm'] == 1){
		$altera = mysqli_query($conecta, "delete from videos where id = '$i2';");
		unlink("uploads/videos/".$rsql['link']."");
		if ($altera){ 
			echo "<script>alert('Video apagado com sucesso!');window.location='index.php?arvideos&i2=" . $rsql['id_ar'] . "';</script>"; 
		}else{
			echo "<script>alert('Houve um problema!');window.location='index.php?arvideos&i2=" . $rsql['id_ar'] . "';</script>";
		}
	}
}








if($i1 == 4){

$secveradm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar = '$i2'");
$rsecveradm = mysqli_fetch_array($secveradm);
if($rsecveradm['adm'] == 1){
	   
if (isset($_POST['envia'])) {
$nome = $class->antisql($_POST["nome"]);
$descricao = $class->antisql($_POST["descricao"]);
// Pasta onde o arquivo vai ser salvo
$_UP['pasta'] = 'uploads/videos/';

// Tamanho máximo do arquivo (em Bytes)
$_UP['tamanho'] = 1024 * 1024 * 100; // 2Mb

// Array com as extensões permitidas
$_UP['extensoes'] = array('flv', 'mp4');

// Renomeia o arquivo? (Se true, o arquivo será salvo como .jpg e um nome único)
$_UP['renomeia'] = false;

// Array com os tipos de erros de upload do PHP
$_UP['erros'][0] = 'Não houve erro';
$_UP['erros'][1] = 'O arquivo no upload é maior do que o limite do PHP';
$_UP['erros'][2] = 'O arquivo ultrapassa o limite de tamanho especifiado no HTML';
$_UP['erros'][3] = 'O upload do arquivo foi feito parcialmente';
$_UP['erros'][4] = 'Não foi feito o upload do arquivo';

// Verifica se houve algum erro com o upload. Se sim, exibe a mensagem do erro
if ($_FILES['arquivo']['error'] != 0) {
die("Não foi possível fazer o upload, erro:<br />" . $_UP['erros'][$_FILES['arquivo']['error']]);
exit; // Para a execução do script
}

// Caso script chegue a esse ponto, não houve erro com o upload e o PHP pode continuar

// Faz a verificação da extensão do arquivo
$extensao = strtolower(end(explode('.', $_FILES['arquivo']['name'])));
if (array_search($extensao, $_UP['extensoes']) === false) {
echo "Por favor, apenas arquivos com as seguintes extensões: flv ou mp4";
}

// Faz a verificação do tamanho do arquivo
else if ($_UP['tamanho'] < $_FILES['arquivo']['size']) {
echo "O arquivo enviado é muito grande, envie arquivos de até 100Mb.";
}

// O arquivo passou em todas as verificações, hora de tentar movê-lo para a pasta
else {
		//preg_match("/\.(mp4|flv){1}$/i", $_FILES["name"], $ext);
 
        	// Gera um nome único para a imagem
        	$nome_final = md5(uniqid(time())) . "." . $extensao; //$ext[1];

// Depois verifica se é possível mover o arquivo para a pasta escolhida
if (move_uploaded_file($_FILES['arquivo']['tmp_name'], $_UP['pasta'] . $nome_final)) {
$insert = mysqli_query($conecta, "insert into videos (id_ar, link, nome, descricao) values ('$i2', '$nome_final', '$nome', '$descricao');");
if($insert){
// Upload efetuado com sucesso, exibe uma mensagem e um link para o arquivo
echo "<script>alert('Upload efetuado com sucesso!');window.location='index.php?arvideos&i2=" . $i2 . "'</script>";
//echo '<br /><a href="' . $_UP['pasta'] . $nome_final . '">Clique aqui para acessar o arquivo</a>';
}
} else {
// Não foi possível fazer o upload, provavelmente a pasta está incorreta
echo "Não foi possível enviar o arquivo, tente novamente";
}

}
}

}
}





if($i1 == 5){
	$csql = mysqli_query($conecta, "select * from videos where id = $i2;");
	$rsql = mysqli_fetch_array($csql);
	echo "
	<span class=\"titulo\">" . $rsql['nome'] . "</span><hr size=\"1\" color=\"#cccccc\">
	<div id=\"myElement" . $rsql['id'] . "\">Loading the player...</div>

		<script type=\"text/javascript\">
   		jwplayer(\"myElement" . $rsql['id'] . "\").setup({
        	file: \"uploads/videos/" . $rsql['link'] . "\",
        	image: \"/uploads/myPoster.jpg\",
        	width: \"800\",
        	height: \"450\"
    	});
		</script>
	<span class=\"texto\">" . $rsql['descricao'] . "</span>

	";
}
	$com_idtipo = "7";
	$com_idsubtipo = $i2;
	include("engine/com/comentar.php");
	include("engine/com/index.php");
?>