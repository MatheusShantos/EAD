<html>
	<head>
		<meta charset="UTF-8" />
		<title>EAD</title>
		<link rel="stylesheet" href="<?php echo BASE; ?>assets/css/template.css" />
		<script type="text/javascript" src="<?php echo BASE; ?>assets/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<?php echo BASE; ?>assets/js/script.js"></script>
	</head>
	<body>

		<div class="topo">
			<a href="<?php echo BASE; ?>login/logout">
				<div>Sair</div>
			</a>
			<div class="topousuario"><?php echo $viewData['info']->getNome(); ?></div>

			<a href="<?php echo BASE; ?>forum/">
				<div>Fórum</div>
			</a>

			<a href="<?php echo BASE; ?>">
				<div>Home</div></a>
		</div>
		<?php $this->loadViewInTemplate($viewName, $viewData); ?>
	</body>
</html>