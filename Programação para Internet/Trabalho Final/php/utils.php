<?php
function verifica_algum_parametro_vazio()
{
    $params = func_get_args();
    foreach ($params as $param) {
        if (empty($param) || trim($param) === "") {
            echo "parametro vazio $param";
            return true;
        }
    }
    return false;
}

function loginNecessario()
{
    if (session_id() === '') {
        exit("O usuário deve estar logado para acessar este recurso. Sem session_id");
    }
    if (!isset($_SESSION['codAnunciante'])) {
        exit("O usuário deve estar logado para acessar este recurso. codAnunciante não setado");
    }
}

function calcular_offset($pagina)
{
    return ($pagina - 1) * 6;
}

function estaLogado()
{
    if (session_id() === '') {
        return False;
    }
    else{
        return True;
    }
}