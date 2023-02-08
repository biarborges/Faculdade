<?php
    function carregaString($arquivo)
    {
        $arq = fopen($arquivo, "r");
        $string = fgets($arq);
        fclose($arq);
        return $string;
    }

    $emailArq=carregaString("../ex3/email.txt");
    $senhaArq=carregaString("../ex3/senhaHash.txt");

    $email = htmlspecialchars($emailArq);
    $senha = htmlspecialchars($senhaArq);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Exercício 4</title>
</head>
<body>
    <main>
        <div class="container">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col-sm"> E-mail </th>
                        <th scope="col-sm"> Senha Hash</th>
                    </tr>
                </thead>
            </table>

            <tbody>
                <?php
                    echo <<<HTML
                        <table class="table table-striped">
                            <tr class="row">
                                <td class="col-sm">$email</td>
                                <td class="col-sm">$senha</td>
                            </tr>
                        </table>
                    HTML;
                ?>
            </tbody>
    
        </div>
    
    </main>
    
</body>
</html>