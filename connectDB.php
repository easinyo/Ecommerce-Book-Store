//lorsque vous cree un server sur pgAdmin veuillez prendre les meme info que sous dessous
//pour le hostname, port number, nom de la bd et le password.

//Utiliser pour connecter a la db.
<?php

session_start();

$host = "host=localhost";
$port = "port=5432";
$dbname = "dbname=postgres";
$credentials = "user=admin password=root";

$_SESSION["host"] = $host;
$_SESSION["port"] = $port;
$_SESSION["db"] = $dbname;
$_SESSION["credentials"] = $credentials;



function connectDB($host, $port, $dbname, $credentials) {
    
    $db = pg_connect ( "$host $port $dbname $credentials" );
    if (! $db) {
        echo "Error : Unable to open database\n";
    } else {
        return $db;
    }
}

$db = connectDB ($host, $port, $dbname, $credentials);

?>
