<?php
require_once '../config/conexion.php';

Class Evaluaciones{
    private $conexion;
    public function __construct(){
        $this->conexion=Database::getConexion();
    }
    public function getAll(): array{
        $sql="SELECT * FROM EVALUACIONES";
        $stmt = $this->conexion->prepare($sql); //preparación
        $stmt->execute(); //ejecución
        return $stmt->fetchAll(PDO::FETCH_ASSOC); //retorno
    }
    
    public function add($params = []): int{
        $sql="INSERT INTO EVALUACIONES (titulo,fechaCreacion,fechaInicio,fechaFin,tiempoDuracion,idAdministrador,idCategoria) VALUES(?,?,?,?,?,?,?)";
        $stmt = $this->conexion->prepare($sql);
        $stmt->execute(
            array(
            $params["titulo"],
            $params["fechaCreacion"],
            $params["fechaInicio"],
            $params["fechaFin"],
            $params["tiempoDuracion"],
            $params["idAdministrador"],
            $params["idCategoria"],
            ));
        return $stmt->rowCount();
    }
}