<?php
if($i1 == null){$i1 = 1;}
if ($i1 == 1){
	if (user_logado()){
		$endereco_da_pagina = "index.php?noticias";
	}else{
		$endereco_da_pagina = "home.php?p=news";
	}
echo "<span class=\"titulo\">Noticias:</span><br>";
$agendasql = mysqli_query($conecta, "SELECT * FROM noticias where id_ar = '$i2' ORDER BY id DESC LIMIT 0 , 100");
 while($ragendasql=mysqli_fetch_array($agendasql)){
 	$dat = explode("-", $ragendasql['data']);
echo "<span class=texto10>" . $dat[2] . "/" . $dat[1] . "/" . $dat[0] . ": </span><span class=texto><a href=" . $endereco_da_pagina . "&i1=2&i2=" . $ragendasql['id'] . " class=classe1>" . $ragendasql['descricao'] . "</a></span><br>";
}
}






if ($i1 == 2){
$sql = mysqli_query($conecta, "select * from noticias where id = '$i2'");
$rsql = mysqli_fetch_array($sql);
$sql2 = mysqli_query($conecta, "select * from artista where id = '$rsql[id_ar]'");
$rsql2 = mysqli_fetch_array($sql2);
$sql3 = mysqli_query($conecta, "select * from est_musical where id = '$rsql2[est_musical]'");
$rsql3 = mysqli_fetch_array($sql3);
$dat = explode("-", $rsql['data']);
	if ($rsql['rev'] == 0){ $rev = "Nao Revisada"; }
	if ($rsql['rev'] == 1){ $rev = "Revisada"; }
echo "<span class=titulo>" . $rsql['nome'] . "</span>
<hr color=\"#cccccc\" size=\"1\">
<span class=texto>" . $rsql['descricao'] . "<br><br>
<b>Data: </b>" . $dat[2] . "/" . $dat[1] . "/" . $dat[0] . "<br>
<b>Hora: </b>" . $rsql['hora'] . "<br>
<b>Banda: </b>" . $rsql2['nome'] . "<br>
<b>Estilo Musical: </b>" . $rsql3['nome'] . "<br>
<b>Revisado: </b>" . $rev . "<br>





";
	$com_idtipo = "13";
	$com_idsubtipo = $i2;
	include("engine/com/comentar.php");
	include("engine/com/index.php");

}
?>