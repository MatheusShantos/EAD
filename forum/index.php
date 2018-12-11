<html lang="pt-BR">
<head>
 <meta charset="UTF-8">
 <title>Fórum</title>
 <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
 <link rel="stylesheet" href="css/index.css">
</head>
<body>
  <script language="javascript">
    function check(txt)
    { t=txt.value; n=t.indexOf("  ");
    while(n>=0)
        { t=t.substring(0,n)+t.substring(n+1,t.length);
          n=t.indexOf("  "); };
          txt.value=t; return true; };
      </script>
      <font face="Verdana" size="2">
        <hr>
        <div class="container">
         <div id="banner">

            </div>
            </div>

         
        <div class="container">
            <center><h1>Fórum</h1></center>
           <h2>Inserir novo tópico:</h2> <br>
          

           <form action="novo.php" method="post">
                <label>Nome:</label>
                <input type="text" name="nome" class="form-control"><br>
                <label>Conteúdo:</label>
                <textarea name="cont" class="form-control"></textarea><br>
                <label>Palavras-chave (separe com espaço):</label><br>
                <input type="text" name="pchav" class="form-control"><br>
                <center><button type="submit" class="btn btn-primary">Enviar</button></center>
            </form>
        </div>
    <hr size="1" color="black">
    <center> 
        <div class="container">
        <label>Buscar:</label> 
        <form name="srchfrm" method="get" action="br_busca_js_buscando.htm" onsubmit="check(this.srchtxt);" target="_self">
          <div align="center"> <font size="2" face="Verdana"> 
            <input type="text" size=30 name="srchtxt" class="form-control">
            <input type="hidden" name="srchlst" value="bd2.js" class="form-control"><br>
            <button type="submit" class="btn btn-primary">Buscar</button>
            <input type="hidden" name="redirecionar" value="_top" class="form-control">
            <input type="hidden" name="sitesporpg" value="10" class="form-control">
            <input type="hidden" name="pagina" value="0" class="form-control">
        </font> 
    </div>
</div>
    </form>
</center>
<?php
global $PHP_SELF;


@$pagina = $_REQUEST['pagina'];
@$exibe  = $_REQUEST['exibe'];



if ($pagina == "") {
    $pagina = "1";
}

if ($exibe == "") {
    $exibe = "10";
}



$arquivo_linhas = file("bd.txt");


$conta_linhas = count($arquivo_linhas);



$total_paginas = ceil(($conta_linhas/$exibe));



echo "<center>  ".$conta_linhas."<label> tópicos encontrados </label> <br>";
echo "<label> Página ".$pagina." de ".$total_paginas."</label></center><br>";



$linha_chegar = (($pagina-1)*$exibe);



for ($linha = 0; $linha != $linha_chegar; $linha++) {
    list ($num_linha, $conteudo_linha) = each ($arquivo_linhas);
}



$ultima_linha = ($linha_chegar + $exibe);
if ($ultima_linha > $conta_linhas) {
    $ultima_linha = $conta_linhas;
}

echo "<center><label> Mostrando de ".($linha_chegar+1)." a ".$ultima_linha."</label></center><br>";


$parar = "nao";
while ($parar == "nao") {
    list ($numlinha, $conteudolinha) = each ($arquivo_linhas);
    echo $conteudolinha."<br>";

    if (($numlinha + 1) == $ultima_linha) {
        $parar = "sim";
    }
}

echo "<BR><HR size='1' color='black'> Página:";

$navegacao = 1;

while ($navegacao <= $total_paginas) {
    if ($navegacao != $pagina) {
        echo ' class="container" <a href="'.$PHP_SELF.'?pagina='.$navegacao.'">'.$navegacao.'</a> </div>';
    } else {
        echo ' '.$navegacao.' ';
    }
    $navegacao++;
}
?>
</font>
</body>
</html>
