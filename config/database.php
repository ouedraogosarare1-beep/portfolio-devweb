<?php

// Définition des paramètres de connexion
define('SERVER', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DBNAME', 'portfolio_db'); // portfolio_db doit être créée dans localhost

// Tentative de connexion à la base de données
$cnx = mysqli_connect(SERVER, USER, PASS, DBNAME) or die(mysqli_connect_error());