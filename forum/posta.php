<?php
      $page = htmlspecialchars($_POST['page']);
      $texto = htmlspecialchars($_POST['new']);
      $file = "{$page}.html";
      $bd = fopen($file, "a+");
      $cnte = "<hr> {$texto} <br>";
      fwrite($bd, $cnte);
      fclose($bd);
      header("location: {$page}.html");
?>
