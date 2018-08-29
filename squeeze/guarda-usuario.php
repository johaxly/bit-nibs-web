<?php

$conn = mysqli_connect("localhost","root","");
if (!$conn) {
	die('Could not connect: ' . mysqli_error());
}
mysqli_select_db($conn,"concurso_1k");

$usuario = $_POST['nombre'];
$email = $_POST['email'];
$rrss = $_POST['rrss'];

	$sql = "INSERT INTO `usuario`(`Id_user`, `Nombre`, `Correo`) VALUES (NULL,'$usuario','$email')";
	$sqll = "INSERT INTO `rrss`(`Id_rrss`, `Instagram`, `Id_user`) VALUES (NULL,'$rrss',NULL)";

		$result = mysqli_query($conn,$sql);
		$resultl = mysqli_query($conn,$sqll);
			if ($result){
				echo json_encode(array('success'=>true));
			} else {
			echo json_encode(array('msg'=>'Ha ocurrido un error al insertar los datos.'));
			}
?>
