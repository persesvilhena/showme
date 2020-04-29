<?php
$csql = mysqli_query($conecta, "select * from membros where id = '$i2'");
$rsql = mysqli_fetch_array($csql);
$csql2 = mysqli_query($conecta, "select * from membros where id_ar = '$rsql[id_ar]' and id_us = '$id'");
$rsql2 = mysqli_fetch_array($csql2);
$csql3 = mysqli_query($conecta, "select * from user where id = '$rsql[id_us]'");
$rsql3 = mysqli_fetch_array($csql3);
if ($rsql2['adm'] == 1){
$mensagem_erro1 = "";
if(isset($_POST["add"])) {
	if(!empty($_POST["ins"])) {
		$ins = $class->antisql($_POST["ins"]);
		$repeat_user = mysqli_query($conecta, "SELECT * FROM membro_instrumento WHERE id_ins = '$ins' and id_us = '$rsql[id_us]' and id_ar = '$rsql[id_ar]'") or die($mensagem_erro = "Houve um erro:<br />".mysqli_error());
		if(mysqli_num_rows($repeat_user) > 0) { 
			$mensagem_erro1 = "<b>Este membro ja toca este instrumento!</b>";
		}
		else {			
			$insert = mysqli_query($conecta, "INSERT INTO membro_instrumento(id_us, id_ar, id_ins) VALUES('$rsql[id_us]', '$rsql[id_ar]', '$ins')") or die(mysqli_error());		
			if($insert) {				
				$mensagem_erro1 = "<b>Instrumento adicionado!</b>";
			}
		}	
	}
	else {	
		$mensagem_erro1 = "<b>Por favor, preencha os campos corretamente!</b>";
		
	}
}
if(isset($_POST["addadm"])) {
		$adm = $class->antisql($_POST["adm"]);
			$insert = mysqli_query($conecta, "update membros set adm = '$adm' where id_us = '$rsql[id_us]' and id_ar = '$rsql[id_ar]';") or die(mysqli_error());		
			if($insert) {				

			echo "<script>alert('OK!');window.location='index.php?editmem&i1=1&i2=" . $i2 . "'</script>";
		}	

}




if($i1 == null){$i1 = 1;}
if($i1 == 1){

echo "<span class=\"titulo\">Membro: " . $rsql3['nome'] . " " . $rsql3['sobrenome'] . "</span><hr size=\"1\" color\"#cccccc\">
<img src=\"fotos/" . $rsql3['foto'] . "\" style=\"width: 200px; max-height: 350px;\" align=\"left\"><span class=\"texto\">
<b>Nome: </b><a href=index.php?user&i1=1&i2=" . $rsql3['id'] . " class=classe1>" . $rsql3['nome'] . " " . $rsql3['sobrenome'] . "</a><br>
<b>Login: </b>" . $rsql3['login'] . "<br>
<b>Email: </b>" . $rsql3['email'] . "<br>
<b>Adm: </b>"; 
if($rsql['adm'] == 1){ echo "SIM"; }else{ echo "NÃO"; } 
echo "<br>
<b>Instrumentos: </b>" . $mensagem_erro1 . "<br>
"; 
$imsql = mysqli_query($conecta, "SELECT * FROM membro_instrumento where id_us = '$rsql[id_us]' and id_ar = '$rsql[id_ar]' ORDER BY id DESC LIMIT 0 , 100");
 while($rimsql=mysqli_fetch_array($imsql)){
 	$instsql = mysqli_query($conecta, "SELECT * FROM instrumentos WHERE id = '$rimsql[id_ins]'");
	$rinstsql = mysqli_fetch_array($instsql);
	echo $rinstsql['nome'] . " - <a href=\"index.php?editmem&i1=2&i2=" . $i2 . "&i3=" . $rimsql['id'] . "\" class=\"classe1\">Excluir</a><br>";

}
echo "
<form method=\"post\" action=\"\">
<select name=\"ins\">";
$imsql = mysqli_query($conecta, "SELECT * FROM instrumentos ORDER BY nome ASC");
while($rimsql=mysqli_fetch_array($imsql)){
echo "<option value=\"" . $rimsql['id'] . "\">" . $rimsql['nome'] . "</option>";
}
echo "</select>
<input name=\"add\" value=\"Adicionar\" type=\"submit\">
</form>
<br>
<form method=\"post\" action=\"\">
Administracao: <select name=\"adm\">";
	if($rsql['adm'] == 1){ echo "<option selected value=\"1\">SIM</option><option value=\"0\">NÃO</option>"; }
	if($rsql['adm'] == 0){ echo "<option selected value=\"0\">NÃO</option><option value=\"1\">SIM</option>"; }
echo "</select>
<input name=\"addadm\" value=\"OK\" type=\"submit\">
</form>

<br><a href=\"index.php?editmem&i1=3&i2=" . $i2 . "\" class=\"classe1\">Excluir Membro da banda</a><br><br><br>
<a href=\"index.php?editart&i1=1&i2=" . $rsql['id_ar'] . "\" class=\"classe1\">Voltar</a>
";

}


if($i1 == 2){
	$deleta = mysqli_query($conecta, "delete from membro_instrumento where id = '$i3';");
	if($deleta){ echo "<script>window.location='index.php?editmem&i1=1&i2=" . $i2 . "'</script>"; }else{ echo "Error!"; }
}


if($i1 == 3){
	$deleta = mysqli_query($conecta, "delete from membros where id = '$i2';");
	if($deleta){ echo "<script>window.location='index.php?editart&i1=1&i2=" . $rsql['id_ar'] . "'</script>"; }else{ echo "Error!"; }
}







}else{
	echo "Houve um Problema!";
}
?>