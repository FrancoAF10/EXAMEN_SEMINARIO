<?php
require_once '../config/conexion.php';

Class Preguntas{
    private $conexion;
    public function __construct(){
        $this->conexion=Database::getConexion();
    }
    public function getAll(): array{
        $sql="SELECT * FROM ALTERNATIVAS";
        $stmt = $this->conexion->prepare($sql); //preparación
        $stmt->execute(); //ejecución
        return $stmt->fetchAll(PDO::FETCH_ASSOC); //retorno
    }
    
    public function add($params = []): int{
        $sql="INSERT INTO INTERROGANTES (interrogante,puntaje,rutaImagen,idEvaluacion) VALUES(?,?,?,?)";
        $stmt = $this->conexion->prepare($sql);
        $stmt->execute(
            array(
            $params["interrogante"],
            $params["puntaje"],
            $params["rutaImagen"],
            $params["idEvaluacion"],

            ));
        return $stmt->rowCount();
    }
}