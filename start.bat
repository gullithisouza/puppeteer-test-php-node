@echo off
title Gerar PDF com Node e PHP

echo Iniciando geração de PDF...

set /a start_node=%time:~0,2%*3600 + %time:~3,2%*60 + %time:~6,2%

node index.js

set /a end_node=%time:~0,2%*3600 + %time:~3,2%*60 + %time:~6,2%
set /a elapsed_node=end_node-start_node
echo Tempo Node.js: %elapsed_node% segundos

set /a start_php=%time:~0,2%*3600 + %time:~3,2%*60 + %time:~6,2%

php index.php

set /a end_php=%time:~0,2%*3600 + %time:~3,2%*60 + %time:~6,2%
set /a elapsed_php=end_php-start_php
echo Tempo PHP: %elapsed_php% segundos

echo Todos os processos finalizados.
pause
