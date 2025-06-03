<?php

if (isset($_SERVER['REQUEST_METHOD'])) {

  require_once "../models/Evaluaciones.php";
  $evaluaciones = new Evaluaciones();

  switch ($_SERVER["REQUEST_METHOD"]) {
    case "GET":
      header("Content-Type: application/json; charset=utf-8");
      //DEBEMOS IDENTIFICAR SI EL USUARIO REQUIERE LISTAR
        if ($_GET["task"] == 'getAll') {
            echo json_encode($evaluaciones->getAll());
        }
      break;

    case "POST":
      //Obtener los datos enviados
      $input = file_get_contents("php://input");
      $dataJSON = json_decode($input, true);

      //creamos un array asociativo con lo datos del nuevo registro 
      $registro = [
        "titulo"            => $dataJSON["titulo"],
        "fechaCreacion"     => $dataJSON["fechaCreacion"],
        "fechaInicio"       => $dataJSON["fechaInicio"],
        "fechaFin"          => $dataJSON["fechaFin"],
        "tiempoDuracion"    => $dataJSON["tiempoDuracion"],
        "idAdministrador"   => $dataJSON["idAdministrador"],
        "idCategoria"       => $dataJSON["idCategoria"],
      ];
      //Obtenemos el número de registros
      $filasAfectadas = $evaluaciones->add($registro);

      //Notificamos al usuario el número de filas en formato JSON
      header("Content-Type: application/json; charset=utf-8");
      echo json_encode(["filas" => $filasAfectadas]);
      break;
  }
}