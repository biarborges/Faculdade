<?php
    function salvaString($string, $arquivo)
    {
        $arq = fopen($arquivo, "w");
        fwrite($arq, $string); 
        fclose($arq);
    }

    $email = $_POST["email"] ?? "";
    if (trim($email) == "")
        $errorMsg = "O e-mail é obrigatório";

    $senha = $_POST["senha"] ?? "";
    if (trim($senha) == "")
        $errorMsg = "A senha é obrigatória";
    
    $senhaHash = password_hash($senha, PASSWORD_DEFAULT);
        

    salvaString($email, "email.txt");
    salvaString($senhaHash, "senhaHash.txt");

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Exercício 3</title>
</head>
<body>
    <main>
         
        <div class="container">
                
                <?php
                    echo <<<HTML
                        <div class="text-center mt-4">
                            <h2>Confirmação de Cadastro</h2>
                            <p>Olá! Seu email: $email e sua senha foram cadastrados com sucesso!</p>
                        </div>
                    HTML;
                ?>
        </div>
    
    </main>
    
</body>
</html>