<?php
$divboxes = "";
if(isset($_POST["convite"])) { 
	$id_us = $class->antisql($_POST["id_us"]);
	$id_ar = $class->antisql($_POST["id_ar"]); 
	$msg = $class->antisql($_POST["msg"]); 
	$rp1 = mysqli_query($conecta, "SELECT * FROM membros WHERE id_us = '$id_us' and id_ar = '$id_ar';");
	if(mysqli_num_rows($rp1) > 0){
		echo "<script>alert('Este usuario ja é da banda!');window.location='" . $pagina . "';</script>";
	}else{
	$rp = mysqli_query($conecta, "SELECT * FROM convite_membro WHERE id_us = '$id_us' and id_ar = '$id_ar';");
	if(mysqli_num_rows($rp) > 0){
		echo "<script>alert('Ja existe um convite para este usuario!');window.location='" . $pagina . "';</script>";
	}else{
	if(!empty($_POST["id_us"]) && !empty($_POST["id_ar"]) && !empty($_POST["msg"])) { 
		$insert = mysqli_query($conecta, "insert into convite_membro (id_us, id_ar, msg) values('$id_us', '$id_ar', '$msg');") or die(mysqli_error());
		if($insert) { 
			echo "<script>alert('Convite enviado com sucesso!');window.location='" . $pagina . "';</script>";
		}
	}
	else { 
		echo "<script>alert('Por favor, preencha os campos corretamente!');window.location='" . $pagina . "';</script>";
	}		
}
}
}
if ($i1 == 1){
$csql = mysqli_query($conecta, "SELECT * FROM user WHERE id='$i2'");
$rsql = mysqli_fetch_array($csql);
$csql2 = mysqli_query($conecta, "SELECT * FROM perfil WHERE id='$i2'");
$rsql2 = mysqli_fetch_array($csql2);
$repeat_contato = mysqli_query($conecta, "SELECT * FROM contato WHERE deid='$id' and cotid='$i2'");



echo "<div style=\"border: 0px solid #000000; width: 590px; position: absolute; left: 0px; top: 0px;\">
<span class=\"titulo\">" . $rsql['nome'] . " " . $rsql['sobrenome'] . "</span>
<hr size=\"1\" color=\"#cccccc\">
<span class=\"texto\">


<b>Data de Nascimento:</b> " . $rsql2['data_nasc'] . "<br>
<b>Telefone:</b> " . $rsql2['telefone'] . "<br>
<b>Telefone2:</b> " . $rsql2['telefone2'] . "<br>
<b>Cidade:</b> " . $rsql2['cidade'] . "<br>
<b>Estado:</b> " . $rsql2['estado'] . "<br>
<b>Regiao:</b> " . $rsql2['regiao'] . "<br>
<b>País:</b> " . $rsql2['pais'] . "<br>
<b>Descricao:</b> " . $rsql2['descricao1'] . "<br>
<div id=\"cont\" style=\"margin-top: 4px; text-align: justify;\" align=\"left\">" . $rsql2['descricao2'] . "</span></div>
<hr color=\"#cccccc\" size=\"1\"><span class=\"texto\">
<span class=\"titulo\">Musicas:</span><br>";
	$musicascsql = mysqli_query($conecta, "SELECT * FROM musicas WHERE id_us = '$i2' limit 0 , 2;");
	while($musicasrsql = mysqli_fetch_array($musicascsql)){
		echo "
		<div id=\"item\" style=\"position: relative; width: 279px; float: left; margin: 2px; text-align: justify; padding: 5px;\">
		<center>
		<object type=\"application/x-shockwave-flash\" data=\"zplayer.swf?mp3=uploads/musicas/" . $musicasrsql['link'] . "&down=1\" width=\"200\" height=\"20\"/>
		<param name=\"movie\" value=\"zplayer.swf?mp3=uploads/musicas/" . $musicasrsql['link'] . "&down=1\" />
		</object>
		</center>
		<br><span class=\"titulo\"><center><a href=index.php?musicas&i1=5&i2=" . $musicasrsql['id'] . " class=classe1>" . $musicasrsql['nome'] . "</a><br></span>
		</center>
		</div>
		";
	}
echo "
<div style=\"clear: both;\"></div>
<div align=\"right\">
<a href=\"index.php?user&i1=6&i2=" . $i2 . "\" class=\"classe1\">Ver Mais</a>
</div>

<hr color=\"#cccccc\" size=\"1\"><span class=\"texto\">
<span class=\"titulo\">Fotos:</span><br>
";
$res = mysqli_query($conecta, "SELECT * FROM `album` where us='$i2' limit 0,4;");
 while($escrever=mysqli_fetch_array($res)){
 echo "<div id=\"item\" style=\"position: relative; width: 131px; float: left; margin: 2px; padding: 5px; text-align: justify;\">";
 echo "<a href=\"#pfdialog\" name=\"pfmodal\" onclick=\"CarregaDadosJanela('" . $escrever['id'] . "','ftus');\"><img src=album/" . $escrever['nome'] . " style=\"width: 131px; height: 105px;\"></a><br>

 ";
 echo "</div>";
}
echo"
<div style=\"clear: both;\"></div>
<div align=\"right\">
<a href=\"index.php?user&i1=4&i2=" . $i2 . "\" class=\"classe1\">Ver Mais</a>
</div>

<hr color=\"#cccccc\" size=\"1\"><span class=\"texto\">
<span class=\"titulo\">Videos:</span><br>";
	$videoscsql = mysqli_query($conecta, "SELECT * FROM videos WHERE id_us = '$i2' limit 0 , 2;");
	while($videosrsql = mysqli_fetch_array($videoscsql)){
		echo "
		<div id=\"item\" style=\"position: relative; width: 279px; float: left; margin: 2px; text-align: justify; padding: 5px;\">
		<div id=\"myElement" . $videosrsql['id'] . "\">Loading the player...</div>

		<script type=\"text/javascript\">
   		jwplayer(\"myElement" . $videosrsql['id'] . "\").setup({
        	file: \"uploads/videos/" . $videosrsql['link'] . "\",
        	image: \"/uploads/myPoster.jpg\",
        	width: \"279\",
        	height: \"157\"
    	});
		</script>
		<br><span class=\"titulo\"><center><a href=index.php?videos&i1=5&i2=" . $videosrsql['id'] . " class=classe1>" . $videosrsql['nome'] . "</a><br></span>
		</center>
		</div>
		";
	}
echo "
<div style=\"clear: both;\"></div>
<div align=\"right\">
<a href=\"index.php?user&i1=5&i2=" . $i2 . "\" class=\"classe1\">Ver Mais</a>
</div>

<hr color=\"#cccccc\" size=\"1\"><span class=\"texto\">
<span class=\"titulo\">Propaganda</span>

<hr color=\"#cccccc\" size=\"1\"><span class=\"texto\">
<span class=\"titulo\">Posts:</span>";


$contatos = $i2;
include ("engine/postagem.php");
echo "</div>
<div style=\"border: 0px solid #000000; min-height: 300px; width: 200px; position: absolute; left: 594px; top: 0px;\">

<img width=\"198\" src=\"fotos/" . $rsql['foto'] . "\"class=\"pr1\">
<hr size=\"1\" color=\"#cccccc\">
";
if (mysqli_num_rows($repeat_contato) > 0){
echo "<a href=\"index.php?user&i1=3&i2=" . $i2 . "\" class=\"menu2\">Apagar contato</a>";
} else {
echo "<a href=\"index.php?user&i1=2&i2=" . $i2 . "\" class=\"menu2\">Adicionar contato</a>";
}
if ($id != $i2){
echo " <a href=\"index.php?msg&i1=5&i2=" . $i2 . "\" class=\"menu2\">Enviar mensagem</a>";
}
if($row['idart'] != null){
	echo " <a href=\"#pfdialog\" name=\"pfmodal\" class=\"menu2\" onclick=\"CarregaDadosJanela('" . $i2 . "','conviteus');\">Convidar</a>";
}
echo " <a href=\"index.php?user&i1=4&i2=" . $i2 . "\" class=\"menu2\">Ver Fotos</a>";
echo "</span>

</div>
";

}







if ($i1 == 2){
$add = mysqli_query($conecta, "INSERT INTO contato(deid, cotid) VALUES('$id', '$i2')") or die(mysqli_error()); 
if($add) {
$msg_erro = "Contato adicionado com sucesso!";
}
else {
$msg_erro = "Houve um erro! relate o erro!";
}
echo "<div id=cont><span class=texto>" . $msg_erro . "</span></div>";
}







if ($i1 == 3){
$add = mysqli_query($conecta, "delete from contato where deid = '$row[id]' and cotid = '$i2'") or die(mysqli_error()); 
if($add) {
$msg_erro = "Contato apagado com sucesso!";
}
else {
$msg_erro = "Houve um erro! relate o erro!";
}
echo "<div id=cont><span class=texto>" . $msg_erro . "</span></div>";
}







if ($i1 == 4){
$csql = mysqli_query($conecta, "SELECT * FROM user WHERE id='$i2'");
$rsql = mysqli_fetch_array($csql);
echo "<span class=titulo>Fotos de " . $rsql['nome'] . " " . $rsql['sobrenome'] . "</span><hr size=\"1\" color=\"#cccccc\">";
$res = mysqli_query($conecta, "SELECT * FROM `album` where us='$i2';");
 while($escrever=mysqli_fetch_array($res)){
 echo "
<div id=\"item\" style=\"position: relative; width: 143px; float: left; margin: 2px; padding: 5px; text-align: justify;\">
<a href=index.php?album&i1=2&i2=" . $escrever['id'] . "><img src=album/" . $escrever['nome'] . " width=\"143\"  height=\"120\"></a> 
</div>

 ";
}
}



if ($i1 == 5){
	$csql = mysqli_query($conecta, "select * from user where id = '$i2'");
	$rsql = mysqli_fetch_array($csql);
	echo "<span class=\"titulo\">Videos de " . $rsql['nome'] . " " . $rsql['sobrenome'] . "</span>
	<hr size=\"1\" color=\"#cccccc\">";
	$videoscsql = mysqli_query($conecta, "SELECT * FROM videos WHERE id_us = '$i2';");
	while($videosrsql = mysqli_fetch_array($videoscsql)){
		echo "
		<div id=\"item\" style=\"position: relative; width: 381px; float: left; margin: 2px; text-align: justify; padding: 5px;\">
		<div id=\"myElement" . $videosrsql['id'] . "\">Loading the player...</div>

		<script type=\"text/javascript\">
   		jwplayer(\"myElement" . $videosrsql['id'] . "\").setup({
        	file: \"uploads/videos/" . $videosrsql['link'] . "\",
        	image: \"/uploads/myPoster.jpg\",
        	width: \"381\",
        	height: \"214\"
    	});
		</script>
		<br><span class=\"titulo\"><center><a href=index.php?videos&i1=5&i2=" . $videosrsql['id'] . " class=classe1>" . $videosrsql['nome'] . "</a><br></span>
		</center>
		</div>
		";
	}
}


if ($i1 == 6){
	$csql = mysqli_query($conecta, "select * from user where id = '$i2'");
	$rsql = mysqli_fetch_array($csql);
	echo "<span class=\"titulo\">Musicas de " . $rsql['nome'] . " " . $rsql['sobrenome'] . "</span>
	<hr size=\"1\" color=\"#cccccc\">";
	$musicascsql = mysqli_query($conecta, "SELECT * FROM musicas WHERE id_us = '$i2';");
	while($musicasrsql = mysqli_fetch_array($musicascsql)){
		echo "
		<div id=\"item\" style=\"position: relative; width: 381px; float: left; margin: 2px; text-align: justify; padding: 5px;\">
		<center>
		<object type=\"application/x-shockwave-flash\" data=\"zplayer.swf?mp3=uploads/musicas/" . $musicasrsql['link'] . "&down=1\" width=\"200\" height=\"20\"/>
		<param name=\"movie\" value=\"zplayer.swf?mp3=uploads/musicas/" . $musicasrsql['link'] . "&down=1\" />
		</object>
		</center>
		<br><span class=\"titulo\"><center><a href=index.php?musicas&i1=5&i2=" . $musicasrsql['id'] . " class=classe1>" . $musicasrsql['nome'] . "</a><br></span>
		</center>
		</div>
		";
	}
}
?>