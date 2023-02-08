<?php

function mysqlConnect()
{/*
  $db_host = "sql313.epizy.com";
  $db_username = "epiz_33110517";
  $db_password = "OPuXDAQtsmd";
  $db_name = "epiz_33110517_ppi";
  ////http://beatrizborges.great-site.net/ - ppi
  

  $db_host = "sql313.epizy.com";
  $db_username = "epiz_33110517";
  $db_password = "OPuXDAQtsmd";
  $db_name = "epiz_33110517_inside_db";
  //http://beatrizborges.great-site.net/InsideVenda - inside beatriz
*/
  $db_host = "sql112.epizy.com";
  $db_username = "epiz_33390598";
  $db_password = "kzBriXd7YT";
  $db_name = "epiz_33390598_inside_db";
  //http://insidevenda.great-site.net/


  // dsn é apenas um acrônimo de database source name
  $dsn = "mysql:host=$db_host;dbname=$db_name;charset=utf8mb4";

  $options = [
    PDO::ATTR_EMULATE_PREPARES => false, // desativa a execução emulada de prepared statements
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, // ativa o modo de erros para lançar exceções    
    PDO::ATTR_PERSISTENT    => true, // ativa o uso de conexões persistentes para maior eficiência
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, // altera o modo padrão do método fetch para FETCH_ASSOC
  ];

  try {
    $pdo = new PDO($dsn, $db_username, $db_password, $options);
    return $pdo;
  } 
  catch (Exception $e) {
    //error_log($e->getMessage(), 3, 'log.php');
    exit('Ocorreu uma falha na conexão com o BD: ' . $e->getMessage());
  }
}

?>
