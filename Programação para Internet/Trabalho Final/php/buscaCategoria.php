<?php

require "conexaoMysql.php";
$pdo = mysqlConnect();

class CategoriaAjax
{
  public $codigo;
  public $nome;

  function __construct($codigo, $nome)
  {
    $this->codigo = $codigo; 
    $this->nome = $nome;
  }
}

try{
  $sql = <<<SQL
  SELECT Codigo, Nome
  FROM Categoria
  SQL;

  $stmt = $pdo->query($sql);
  $categoria =  $stmt->fetchAll();

  $categoriaList = array();
  foreach ($categoria as $row) {
    $categoriaList[] = new CategoriaAjax($row['Codigo'], $row['Nome']);
  }


}
catch(Exception $e){
  exit("Ocorreu uma falha: " . $e->getMessage());
}

header('Content-type: application/json');  
echo json_encode($categoriaList);