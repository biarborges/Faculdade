<?php

session_start();

function estaLogado()
{
    if (!isset($_SESSION['codAnunciante'])) {
        return False;
    }
    else{
        return True;
    }
}
header('Content-type: application/json');  
echo json_encode(estaLogado());