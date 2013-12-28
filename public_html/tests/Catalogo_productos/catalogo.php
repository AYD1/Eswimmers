<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>eSwimmers - Catalogo de productos</title>
</head>

<body>
<table width="100%" border="0">	
	<tr>
		<td>
			<form action="catalogo.php" method="post">
				<select name="seleccion">
					<option value="0">Seleccione una categoria</option>
					<option value="1">Accesorios de entrenamiento</option>
					<option value="2">Trajes de competencia</option>
					<option value="3">Trajes de entrenamiento</option>			
				</select>
				<input type="submit" value="Seleccionar"/>
			</form>
		</td>       
    </tr>	
</table>
</br>
<table width="100%" border="1">	
<tr>
		<td width="15%">Codigo</td>
        <td width ="35%">Producto</td>
		<td width="50%">Imagen</td>
    </tr>
<?php
		if(isset($_POST['seleccion'])){
			include "conexion.php";			
			$result=mysql_query("SELECT * FROM producto WHERE (Tipo_Producto = '" . mysql_real_escape_string($_POST['seleccion']) . "')",$con);			
			while($row=mysql_fetch_row($result)){
				echo"<tr>
						<td>$row[0]</td>
						<td>$row[1]</td>
						<td><img src=\"".$row[2]."\" width=\"74\" height=\"74\"></td>
					</tr>";
			}			
			include "cerrar_conexion.php";
		}
	?>
</table>
</body>
</html>