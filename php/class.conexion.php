<?php


class Conexion extends mysqli {
    
    
    public function __construct(){
        						//$db = new EasyMySQLi('host', 'user', 'pass', 'DB');						
        parent::__construct('localhost','satelimp_trust','satelimp_trust','satelimp_trust');
        
        $this->query("SET NAMES 'utf8';");
        
        $this->connect_errno ? die('Error con la conexion') : $x = 'Conectado';
        //echo $x;
        unset ($x);
        
        
        
    }

    public function recorrer($y){

    	return mysqli_fetch_array($y);

    }
    
    
    
}


?>