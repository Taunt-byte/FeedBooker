<?php

class conexao{
    private $usuario;
    private $senha;
    private $banco;
    private $servidor;

    private static $pdo;

    public function __construct{
        $this->servidor = "localhost";
        $this->banco = "BDfeedbooker";
        $this->usario = "root";
        $this->senha = "";
    }
    public function conectar(){
        try {
            if(is_null(self::$pdo)){
                self::$pdo = new PDO("mysql:host");
            }
            return self::$pdo;
        }catch(PDOException $ex){

        }
    }
}
?>