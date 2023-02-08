<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Exercício 1 - php</title>
</head>
<body>
    <main>
        <div class="container">
            <h3>Cadastrado</h3>
            
            <table class="table">
                <thead>
                    <tr class="row">
                        <th  class="col-sm">CEP</th>
                        <th  class="col-sm">Logradouro</th>
                        <th  class="col-sm">Bairro</th>
                        <th  class="col-sm">Cidade</th>
                        <th  class="col-sm">Estado</th>
                    </tr>
                </thead>

                <?php

                    $CEP = $_POST["CEP"] ?? "";
                    $logradouro = $_POST["logradouro"] ?? "";
                    $bairro = $_POST["bairro"] ?? "";
                    $cidade = $_POST["cidade"] ?? "";
                    $estado = $_POST["estado"] ?? "";
                
                    $CEP = htmlspecialchars($CEP);
                    $logradouro = htmlspecialchars($logradouro);
                    $bairro = htmlspecialchars($bairro);
                    $cidade = htmlspecialchars($cidade);
                    $estado = htmlspecialchars($estado);

                    echo <<<HTML
                    <table class="table table-striped table-hover">
                        <tr class="row">
                            <td  class="col-sm">$CEP</td> 
                            <td  class="col-sm">$logradouro</td>
                            <td  class="col-sm">$bairro</td>
                            <td  class="col-sm">$cidade</td>
                            <td  class="col-sm">$estado</td>
                        </tr>      
                    HTML;
                
                ?>

            </table>
        </div>
    </main>
    
</body>
</html>