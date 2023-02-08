<?php
    $produtos=
    [
        "chocolate",
        "sorvete",
        "bolo",
        "petit gateau",
        "panqueca",
        "torta de limão",
        "bala de coco",
        "biscoito de gengibre",
        "bombom",
        "suspiro"

    ];

    $descricao=
    [
        "O chocolate é um alimento feito com base na amêndoa fermentada e torrada do cacau",
        "Sorvete ou gelado é uma sobremesa gelada à base de lacticínios como leite ou nata, à qual é adicionada fruta ou outros ingredientes e sabores",
        "Bolo é um alimento à base de farinha, geralmente doce e cozido no forno",
        "Um petit gâteau, é um pequeno bolo criado por Michel Bras em 1981",
        "Panqueca é um tipo de massa frita em pouco óleo sobre uma chapa ou frigideira quente, feita basicamente com ovos, farinha e leite",
        "Torta de limão é uma torta cozida no forno e recheada com um creme a base de limão",
        "Bala ou rebuçado é uma guloseima, pequena e doce de diversos sabores e diversos tamanhos e cores",
        "Cookie é um biscoito chato e seco de farinha de diversas formas e tamanhos, geralmente doce",
        "Bombom é um doce constituído basicamente por um recheio e recoberto por uma camada de chocolate, cupulate ou glacê",
        "Suspiro ou merengue é um doce feito de claras de ovos e açúcar"

    ];

    $qde = $_GET["qde"];


?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=E, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Exercício 2</title>
</head>
<body>
    <main>
        <div class = "container">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col"> Número </th>
                        <th scope="col"> Nome </th>
                        <th scope="col"> Descrição </th>
                    </tr>
                </thead>

                <tbody>
                    <?php
                        
                        for($i = 0; $i < $qde; $i++){
                            $aux = rand(0,9);
                            echo <<<HTML
                            <tr>
                                <td>$aux</td>
                                <td>$produtos[$aux]</td>
                                <td>$descricao[$aux]</td>
                            </tr>
                            HTML;
                        }
                    ?>
                </tbody>
            </table>
        </div>
    
    </main>
    
</body>
</html>