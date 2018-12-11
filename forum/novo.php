        <?php
        $nome = htmlspecialchars($_POST['nome']);
        $cont = htmlspecialchars($_POST['cont']);
        $fp=fopen("cont.txt","r"); 
        $count=fgets($fp,1024); 
        fclose($fp); 
        $fw=fopen("cont.txt","w"); 
        $cnew=$count+1; 
        $countnew=fputs($fw,$count+1); 
        fclose($fw);                   
        echo "$cnew"; 
        $numero = 
        $file = "bd.txt";
        $bd = fopen($file, "a+");
        $cbd = "<a href={$cnew}.html>{$nome}</a><br>
        ";
        fwrite($bd, $cbd);
        fclose($bd);
        $pnome = "{$cnew}.html";
        $pagina = fopen( $pnome, "w");
        $pcon = "<html>
        <head>
        <meta charset='UTF-8'>
        <title>{$nome}</title>
        <link rel='stylesheet' href='lib/bootstrap/css/bootstrap.min.css'>
        </head>
        <body>
        <div class= 'container'>
        <a href='index.php'>Home</a>
        </div>
        <div class='container'>
        <font face=Verdana>
        <form action=posta.php method=post>
        <input type=hidden name=page value={$cnew} class='form-control'>
        <textarea name=new></textarea>
        <button type='submit' class='btn btn-primary'>Enviar</button>
        </form>
        <font size=4>{$nome}
        <br><font size=2>{$cont}
        <br> </div>";

        fwrite($pagina, $pcon);
        fclose($pagina);
        $ins = "{$cnew}.php";
        $pins = fopen("{$cnew}.php", "w");
        $novo = $_POST['new'];

        $nfil = "{$cnew}.html";
        $nbd = fopen($nfil, 'a+');
        $nmsg = "<div class='container'>Mensagem: {$novo} </div> <br>"; 
        fwrite($nbd, $nmsg);
        fclose($nbd);
        header("location: {$cnew}.html");

        $pchav = htmlspecialchars($_POST['pchav']);
        $bdbusca = fopen("bd2.js", "a+");
        $aspas = '"';
        $new = "item[item.length] = new Array({$aspas}{$cnew}{$aspas},{$aspas}{$aspas},{$aspas}{$nome}{$aspas},{$aspas}{$pchav}{$aspas},{$aspas}{$cont}{$aspas});
        ";
        fwrite($bdbusca, $new);
        fclose($bdbusca);
        ?>