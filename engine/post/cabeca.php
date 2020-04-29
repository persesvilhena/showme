<?php
if(isset($_POST["post"])) { 
	if(!empty($_POST["msg"])) {
		$msg = $class->antisql($_POST["msg"]);
		if(isset($_GET['foto'])){$foto = $class->antisql($_GET['foto']);} else {$foto = null;}
		if(isset($_GET['arquivo'])){$arquivo = $class->antisql($_GET['arquivo']);} else {$arquivo = null;}
		$insert = mysqli_query($conecta, "insert into post (id_us, msg, foto, arquivo, data) values ('$row[id]', '$msg', '$foto', '$arquivo', '$date');") or die(mysqli_error());
		if($insert) {
			echo "<script>window.location='" . $pagina . "';</script>";
		}	
	}
	else {
		echo "<script>alert('Erro, campo em branco');window.location='" . $pagina . "';</script>";
	}		
}



if(isset($_POST["repost"])) {
	if(!empty($_POST["idpost"]) && !empty($_POST["msg"])) {
		$id_post = $class->antisql($_POST["idpost"]);
		$msg = $class->antisql($_POST["msg"]);
		$insert = mysqli_query($conecta, "insert into repost (id_post, id_us, msg, data) values('$id_post', '$id', '$msg', '$date')");
		if($insert){ 
			echo "<script>window.location='" . $pagina . "'</script>"; 
		} else {
			echo "<script>alert('Houve um problema!');window.location='" . $pagina . "'</script>";
		}
	}else { echo "<script>alert('Houve um problema!');window.location='" . $pagina . "'</script>"; }
}

if(isset($_POST["repost1"])) {
	if(!empty($_POST["idpost"]) && !empty($_POST["msg"])) {
		$id_post = $class->antisql($_POST["idpost"]);
		$msg = $class->antisql($_POST["msg"]);
		$insert = mysqli_query($conecta, "insert into repost (id_post, id_ar, msg, data) values('$id_post', '$row[idart]', '$msg', '$date')");
		if($insert){ 
			echo "<script>window.location='" . $pagina . "'</script>"; 
		} else {
			echo "<script>alert('Houve um problema!');window.location='" . $pagina . "'</script>";
		}
	}else { echo "<script>alert('Houve um problema!');window.location='" . $pagina . "'</script>"; }
}



if(isset($_POST["arrepost"])) {
	if(!empty($_POST["idpost"]) && !empty($_POST["msg"])) {
		$id_post = $class->antisql($_POST["idpost"]);
		$msg = $class->antisql($_POST["msg"]);
		$insert = mysqli_query($conecta, "insert into repost_ar (id_post, id_us, msg, data) values('$id_post', '$id', '$msg', '$date')");
		if($insert){ 
			echo "<script>window.location='" . $pagina . "'</script>"; 
		} else {
			echo "<script>alert('Houve um problema!');window.location='" . $pagina . "'</script>";
		}
	}else { echo "<script>alert('Houve um problema!');window.location='" . $pagina . "'</script>"; }
}



if($p1 == 2){
	$csql = mysqli_query($conecta, "select * from gostar where id_us = '$id' and id_post = '$p2';");
	if(mysqli_num_rows($csql) > 0){
		$insert = mysqli_query($conecta, "update gostar set gostei = '$p3', data = '$date' where id_post = '$p2' and id_us = '$id'");
		if($insert){ echo "<script>window.location='" . $pagina . "';</script>"; }else{ echo "<script>alert('error');window.location='" . $pagina . "';</script>"; }
	} else {
		$insert = mysqli_query($conecta, "insert into gostar (id_post, id_us, gostei, data) values('$p2', '$id', '$p3', '$date')");
		if($insert){ echo "<script>window.location='" . $pagina . "';</script>"; }else{ echo "<script>alert('error');window.location='" . $pagina . "';</script>"; }
	}
}



if($p1 == 3){
	$csql = mysqli_query($conecta, "select * from gostar where id_us = '$id' and id_repost = '$p2';");
	if(mysqli_num_rows($csql) > 0){
		$insert = mysqli_query($conecta, "update gostar set gostei = '$p3', data = '$date' where id_repost = '$p2' and id_us = '$id'");
		if($insert){ echo "<script>window.location='" . $pagina . "';</script>"; }else{ echo "<script>alert('error');window.location='" . $pagina . "';</script>"; }
	} else {
		$insert = mysqli_query($conecta, "insert into gostar (id_repost, id_us, gostei, data) values('$p2', '$id', '$p3', '$date')");
		if($insert){ echo "<script>window.location='" . $pagina . "';</script>"; }else{ echo "<script>alert('error');window.location='" . $pagina . "';</script>"; }
	}
}
if($p1 == 4){
	$sql2 = mysqli_query($conecta, "SELECT * FROM post WHERE id = '$p2' and id_us = '$id';");
	$res2 = mysqli_fetch_array($sql2);
	$vnum = $res2['id_us'];
	if($vnum == $row['id']){
		$csql4 = mysqli_query($conecta, "DELETE FROM post WHERE id='$p2' and id_us = '$id'");
		$csql4 = mysqli_query($conecta, "DELETE FROM repost WHERE id_post = '$res2[id]'");
		if($csql4) {
			echo "<script>alert('Postagem apagada com sucesso!');window.location='" . $pagina . "';</script>";
		}
		else {
			echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
		}
	}
}
if($p1 == 5){
$ver_ar_us = mysqli_query($conecta, "SELECT * FROM repost WHERE id = '$p2'");
$r_ver_ar_us = mysqli_fetch_array($ver_ar_us);
if($r_ver_ar_us['id_us'] != null){
	$sql2 = mysqli_query($conecta, "SELECT * FROM repost WHERE id = '$p2' and id_us = '$id';");
	$res2 = mysqli_fetch_array($sql2);
	$vnum = $res2['id_us'];
	if($vnum == $row['id']){
		$csql4 = mysqli_query($conecta, "DELETE FROM repost WHERE id='$p2' and id_us = '$id'");
		if($csql4) {
			echo "<script>alert('Postagem apagada com sucesso!');window.location='" . $pagina . "';</script>";
		}
		else {
			echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
		}
	}
}else{
	$sql2 = mysqli_query($conecta, "SELECT * FROM repost WHERE id = '$p2';");
	$res2 = mysqli_fetch_array($sql2);
	$secveradm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar = '$res2[id_ar]'");
	$rsecveradm = mysqli_fetch_array($secveradm);
	if($rsecveradm['adm'] == 1){
		$csql4 = mysqli_query($conecta, "DELETE FROM repost WHERE id='$p2';");
		if($csql4) {
			echo "<script>alert('Postagem apagada com sucesso!');window.location='" . $pagina . "';</script>";
		}
		else {
			echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
		}
	}
}
}
if($p1 == 6){
	$sql2 = mysqli_query($conecta, "SELECT * FROM post WHERE id = '$p2' and id_us = '$id';");
	$res2 = mysqli_fetch_array($sql2);
	$vnum = $res2['id_us'];
	if($vnum == $row['id']){
		if(isset($_POST["alterapost"])) {
			if(!empty($_POST["msg"])) {
				$msg = $class->antisql($_POST["msg"]);
				$csql4 = mysqli_query($conecta, "update post set msg = '$msg' WHERE id='$p2' and id_us = '$id'");
				if($csql4) {
					echo "<script>alert('Postagem alterada com sucesso!');window.location='" . $pagina . "';</script>";
				}
				else {
					echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
				}
			}
		}
	}
}
if($p1 == 7){
$ver_ar_us = mysqli_query($conecta, "SELECT * FROM repost WHERE id = '$p2'");
$r_ver_ar_us = mysqli_fetch_array($ver_ar_us);
if($r_ver_ar_us['id_us'] != null){
	$sql2 = mysqli_query($conecta, "SELECT * FROM repost WHERE id = '$p2' and id_us = '$id';");
	$res2 = mysqli_fetch_array($sql2);
	$vnum = $res2['id_us'];
	if($vnum == $row['id']){
		if(isset($_POST["alterarepost"])) {
			if(!empty($_POST["msg"])) {
				$msg = $class->antisql($_POST["msg"]);
				$csql4 = mysqli_query($conecta, "update repost set msg = '$msg' WHERE id='$p2' and id_us = '$id'");
				if($csql4) {
					echo "<script>alert('Postagem alterada com sucesso!');window.location='" . $pagina . "';</script>";
				}
				else {
					echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
				}
			}
		}
	}
}else{
	$sql2 = mysqli_query($conecta, "SELECT * FROM repost WHERE id = '$p2';");
	$res2 = mysqli_fetch_array($sql2);
	$secveradm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar = '$res2[id_ar]'");
	$rsecveradm = mysqli_fetch_array($secveradm);
	if($rsecveradm['adm'] == 1){
		if(isset($_POST["alterarepost"])) {
			if(!empty($_POST["msg"])) {
				$msg = $class->antisql($_POST["msg"]);
				$csql4 = mysqli_query($conecta, "update repost set msg = '$msg' WHERE id='$p2' and id_ar = '$res2[id_ar]'");
				if($csql4) {
					echo "<script>alert('Postagem alterada com sucesso!');window.location='" . $pagina . "';</script>";
				}
				else {
					echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
				}
			}
		}
	}
}
}

if($p1 == 15){
$ver_ar_us = mysqli_query($conecta, "SELECT * FROM repost_ar WHERE id = '$p2'");
$r_ver_ar_us = mysqli_fetch_array($ver_ar_us);
if($r_ver_ar_us['id_us'] != null){
	$sql2 = mysqli_query($conecta, "SELECT * FROM repost_ar WHERE id = '$p2' and id_us = '$id';");
	$res2 = mysqli_fetch_array($sql2);
	$vnum = $res2['id_us'];
	if($vnum == $row['id']){
		$csql4 = mysqli_query($conecta, "DELETE FROM repost_ar WHERE id='$p2' and id_us = '$id'");
		if($csql4) {
			echo "<script>alert('Postagem apagada com sucesso!');window.location='" . $pagina . "';</script>";
		}
		else {
			echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
		}
	}
}else{
	$sql2 = mysqli_query($conecta, "SELECT * FROM repost_ar WHERE id = '$p2';");
	$res2 = mysqli_fetch_array($sql2);
	$secveradm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar = '$res2[id_ar]'");
	$rsecveradm = mysqli_fetch_array($secveradm);
	if($rsecveradm['adm'] == 1){
		$csql4 = mysqli_query($conecta, "DELETE FROM repost_ar WHERE id='$p2';");
		if($csql4) {
			echo "<script>alert('Postagem apagada com sucesso!');window.location='" . $pagina . "';</script>";
		}
		else {
			echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
		}
	}
}
}

////////////////////////////////
///////// ARTISTAS
///////////////////////////////


if($p1 == 12){
	$csql = mysqli_query($conecta, "select * from gostar_ar where id_us = '$id' and id_post = '$p2';");
	if(mysqli_num_rows($csql) > 0){
		$insert = mysqli_query($conecta, "update gostar_ar set gostei = '$p3', data = '$date' where id_post = '$p2' and id_us = '$id'");
		if($insert){ echo "<script>window.location='" . $pagina . "';</script>"; }else{ echo "<script>alert('error');window.location='" . $pagina . "';</script>"; }
	} else {
		$insert = mysqli_query($conecta, "insert into gostar_ar (id_post, id_us, gostei, data) values('$p2', '$id', '$p3', '$date')");
		if($insert){ echo "<script>window.location='" . $pagina . "';</script>"; }else{ echo "<script>alert('error');window.location='" . $pagina . "';</script>"; }
	}
}



if($p1 == 13){
	$csql = mysqli_query($conecta, "select * from gostar_ar where id_us = '$id' and id_repost = '$p2';");
	if(mysqli_num_rows($csql) > 0){
		$insert = mysqli_query($conecta, "update gostar_ar set gostei = '$p3', data = '$date' where id_repost = '$p2' and id_us = '$id'");
		if($insert){ echo "<script>window.location='" . $pagina . "';</script>"; }else{ echo "<script>alert('error');window.location='" . $pagina . "';</script>"; }
	} else {
		$insert = mysqli_query($conecta, "insert into gostar_ar (id_repost, id_us, gostei, data) values('$p2', '$id', '$p3', '$date')");
		if($insert){ echo "<script>window.location='" . $pagina . "';</script>"; }else{ echo "<script>alert('error');window.location='" . $pagina . "';</script>"; }
	}
}


if($p1 == 17){
$ver_ar_us = mysqli_query($conecta, "SELECT * FROM repost_ar WHERE id = '$p2'");
$r_ver_ar_us = mysqli_fetch_array($ver_ar_us);
if($r_ver_ar_us['id_us'] != null){
	$sql2 = mysqli_query($conecta, "SELECT * FROM repost_ar WHERE id = '$p2' and id_us = '$id';");
	$res2 = mysqli_fetch_array($sql2);
	if(isset($_POST["alterarepost"])) {
		if(!empty($_POST["msg"])) {
			$msg = $class->antisql($_POST["msg"]);
			$csql4 = mysqli_query($conecta, "update repost_ar set msg = '$msg' WHERE id='$p2' and id_us = '$id'");
			if($csql4) {
				echo "<script>alert('Postagem alterada com sucesso!');window.location='" . $pagina . "';</script>";
			}
			else {
				echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
			}
		}
	}
} else{
	$sql2 = mysqli_query($conecta, "SELECT * FROM repost_ar WHERE id = '$p2';");
	$res2 = mysqli_fetch_array($sql2);
	$secveradm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar = '$res2[id_ar]'");
	$rsecveradm = mysqli_fetch_array($secveradm);
	if($rsecveradm['adm'] == 1){
	if(isset($_POST["alterarepost"])) {
		if(!empty($_POST["msg"])) {
			$msg = $class->antisql($_POST["msg"]);
			$csql4 = mysqli_query($conecta, "update repost_ar set msg = '$msg' WHERE id='$p2' and id_ar = '$res2[id_ar]'");
			if($csql4) {
				echo "<script>alert('Postagem alterada com sucesso!');window.location='" . $pagina . "';</script>";
			}
			else {
				echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
			}
		}
	}
}

}
}
////////////////////////////////////////////////
//////////AREA ADM
////////////////////////////////////////////////






$secadm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar='$i2'");
$rsecadm = mysqli_fetch_array($secadm);
if ($rsecadm['adm'] == 1){

if(isset($_POST["arpost"])) { 
	if(!empty($_POST["msg"])) {
		$msg = $class->antisql($_POST["msg"]);
		if(isset($_GET['foto'])){$foto = $class->antisql($_GET['foto']);} else {$foto = null;}
		if(isset($_GET['arquivo'])){$arquivo = $class->antisql($_GET['arquivo']);} else {$arquivo = null;}
		$insert = mysqli_query($conecta, "insert into post_ar (id_ar, msg, foto, arquivo, data) values ('$i2', '$msg', '$foto', '$arquivo', '$date');") or die(mysqli_error());
		if($insert) {
			echo "<script>window.location='" . $pagina . "';</script>";
		}	
	}
	else {
		echo "<script>alert('Erro, campo em branco');window.location='" . $pagina . "';</script>";
	}		
}
}


if(isset($_POST["arrepost1"])) {
	if(!empty($_POST["idpost"]) && !empty($_POST["msg"])) {
		$id_post = $class->antisql($_POST["idpost"]);
		$msg = $class->antisql($_POST["msg"]);
		$insert = mysqli_query($conecta, "insert into repost_ar (id_post, id_ar, msg, data) values('$id_post', '$row[idart]', '$msg', '$date')");
		if($insert){ 
			echo "<script>window.location='" . $pagina . "'</script>"; 
		} else {
			echo "<script>alert('Houve um problema!');window.location='" . $pagina . "'</script>";
		}
	}else { echo "<script>alert('Houve um problema!');window.location='" . $pagina . "'</script>"; }
}




if($p1 == 14){
	$sql2 = mysqli_query($conecta, "SELECT * FROM post_ar WHERE id = '$p2';");
	$res2 = mysqli_fetch_array($sql2);
	$secadm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar='$res2[id_ar]'");
	$rsecadm = mysqli_fetch_array($secadm);
	if ($rsecadm['adm'] == 1){
	$csql4 = mysqli_query($conecta, "DELETE FROM post_ar WHERE id='$p2'");
	$csql4 = mysqli_query($conecta, "DELETE FROM repost_ar WHERE id_post = '$res2[id]'");
	if($csql4) {
		echo "<script>alert('Postagem apagada com sucesso!');window.location='" . $pagina . "';</script>";
	}
	else {
		echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
	}
}

//if($p1 == 15){
//	$sql2 = mysqli_query($conecta, "SELECT * FROM repost_ar WHERE id = '$p2';");
//	$res2 = mysqli_fetch_array($sql2);
//	$csql4 = mysqli_query($conecta, "DELETE FROM repost_ar WHERE id='$p2'");
//	if($csql4) {
//		echo "<script>alert('Postagem apagada com sucesso!');window.location='" . $pagina . "';</script>";
//	}
//	else {
//		echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
//	}
//}

if($p1 == 16){
	$sql2 = mysqli_query($conecta, "SELECT * FROM post_ar WHERE id = '$p2';");
	$res2 = mysqli_fetch_array($sql2);
	$secadm = mysqli_query($conecta, "select * from membros where id_us = '$id' and id_ar='$res2[id_ar]'");
	$rsecadm = mysqli_fetch_array($secadm);
	if ($rsecadm['adm'] == 1){
	if(isset($_POST["alterapost"])) {
		if(!empty($_POST["msg"])) {
			$msg = $class->antisql($_POST["msg"]);
			$csql4 = mysqli_query($conecta, "update post_ar set msg = '$msg' WHERE id='$p2' and id_ar = '$res2[id_ar]'");
			if($csql4) {
				echo "<script>alert('Postagem alterada com sucesso!');window.location='" . $pagina . "';</script>";
			}
			else {
				echo "<script>alert('Houve um problema!');window.location='" . $pagina . "';</script>";
			}
		}
	}
}
}


}









$i = 0;
$e = 0;

?>