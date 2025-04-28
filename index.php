<?php

require 'vendor\autoload.php';

use Spatie\Browsershot\Browsershot;

try {
    
    Browsershot::html(file_get_contents("./template.html"))
    ->save('./pdf/pdf.php.pdf');

    echo "PDF gerado com PHP!/n";

} catch (\Exception $th) {
    echo "Erro ao gerar o PDF: " . $th->getMessage() . "/n";
}