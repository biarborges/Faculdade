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


    $emailFornecido = $_POST["email"] ?? "";
    if (trim($emailFornecido) == "")
        $errorMsg = "O e-mail é obrigatório";

    $senhaFornecida = $_POST["senha"] ?? "";
    if (trim($senhaFornecida) == "")
        $errorMsg = "A senha é obrigatória";
        

    if ($emailFornecido==$emailArq && password_verify($senhaFornecida, $senhaArq)) {
        header("Location: sucesso.html");
        exit();
    }
    else{
        header("Location: index.html");
        exit();
    }

?>