
<?php

// ==============================================================================
$Callsign = exec('awk "NR==1{print;exit}" /home/pi/info_panel_control.ini');
$Callsign = substr($Callsign, 9, 9);

$Id = exec('awk "NR==2{print;exit}" /home/pi/info_panel_control.ini');
$Id = substr($Id, 3, 9);

$frecuencia = exec('awk "NR==3{print;exit}" /home/pi/info_panel_control.ini');
$frecuencia = " FR: " . substr($frecuencia, 12, 9);

$Address = exec('awk "NR==4{print;exit}" /home/pi/info_panel_control.ini');
$Address = substr($Address, 0, 40);
// ==============================================================================

// ==============================================================================
$Callsign_plus = exec('awk "NR==11{print;exit}" /home/pi/info_panel_control.ini');
$Callsign_plus = substr($Callsign_plus, 9, 9);

$Id_plus = exec('awk "NR==12{print;exit}" /home/pi/info_panel_control.ini');
$Id_plus = substr($Id_plus, 3, 9);

$frecuencia_plus = exec('awk "NR==13{print;exit}" /home/pi/info_panel_control.ini');
$frecuencia_plus = " FR: " . substr($frecuencia_plus, 12, 9);

$Address_plus = exec('awk "NR==14{print;exit}" /home/pi/info_panel_control.ini');
$Address_plus = substr($Address_plus, 0, 40);
// ==============================================================================

// ==============================================================================
$Callsign_Radio = exec('awk "NR==6{print;exit}" /home/pi/info_panel_control.ini');
$Callsign_Radio = substr($Callsign_Radio, 9, 9);

$Id_Radio = exec('awk "NR==7{print;exit}" /home/pi/info_panel_control.ini');
$Id_Radio = substr($Id_Radio, 3, 9);

$frecuencia_Radio = exec('awk "NR==8{print;exit}" /home/pi/info_panel_control.ini');
$frecuencia_Radio = " FR: " . substr($frecuencia_Radio, 12, 9);

$Address_Radio = exec('awk "NR==9{print;exit}" /home/pi/info_panel_control.ini');
$Address_Radio = substr($Address_Radio, 0, 40);
// ==============================================================================

// ==============================================================================
$ysfr = exec('awk "NR==21{print;exit}" /home/pi/info_panel_control.ini');
$ysfr = " YSFReflector: " . substr($ysfr, 8, 15);
// ==============================================================================

// ==============================================================================
$svxlink = exec('awk "NR==27{print;exit}" /home/pi/info_panel_control.ini');
$svxlink = " SVXLINK: " . substr($svxlink, 10, 19);
// ==============================================================================

// ==============================================================================
$frecuencia_2dmr = exec('awk "NR==24{print;exit}" /home/pi/info_panel_control.ini');
$frecuencia_2dmr = " FR: " . substr($frecuencia_2dmr, 12, 9);

$Address_2dmr = exec('awk "NR==25{print;exit}" /home/pi/info_panel_control.ini');
$Address_2dmr = substr($Address_2dmr, 0, 40);

$tg = exec('awk "NR==26{print;exit}" /home/pi/info_panel_control.ini');
$tg = " TG: " . substr($tg, 13, 10);
// ==============================================================================

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="ea3eiz echolink Conferencia 3spain">
    <meta name="description" content="Conferencia echolink libre para todos los radioaficionados con indicativo">
    <meta name="author" content="EA3EIZ">


<!-- refresca la página cada 10 segundo (implantado por mi) -->
<!-- ====================================================== -->
<meta http-equiv="refresh" content="5" />



    <link rel="shortcut icon" href="imagenes/favicon.png">
<title>Panel Ea3eiz</title>

            <link rel="stylesheet" href="css/bootstrap.min.css" >
            <link rel="stylesheet" href="css/custom.css" >
            <style type="text/css">
              .texto_azul_negro{
                color:#FB6C03;
                font-weight: bold;  
                font-size:  18 px;
              }
              .texto_verde_rojo{
                background:#0CE362;
                color:#FD0404;
                font-weight: bold;  
                font-size:  16 px;
              }
            </style>

</head>

<body>

<div class="franja_superior">
<div class="container">

<div class="col-md-12 text-center">
<a href="http://associacioader.com" target="_blank"><img src="../img/Logo_Ader.png" width="150"></img></a>
                   <span class="color_blanco_header"></span>
                </div>
</div>  
</div>


<hr>				
<div class="container">

                <div class="col-md-12 text-center">
                   <span class="color_naranja">PANEL DE CONTROL</span><br><br><br>
                </div>

<!-- ============================================================================================= -->
 <div class="row">                  

                    <div  class="col-md-4 text-center thumbnail"><br>
                         <img src="imagenes/BACKUP.png" width="95" ></img><br>
                         <a href="../upload/crear_zip.php" class="btn btn-info btn-sm">HACER COPIA SEGURIDAD</a>
                     </div>
                     
                     <div  class="col-md-4 text-center thumbnail"><br>
                         <img src="imagenes/BACKUP.png" width="95" ></img><br>
                         <a href="../upload/form.php" class="btn btn-success btn-sm">RESTAURAR COPIA SEGURIDAD</a>
                     </div>
<!-- DASHBOARD -->                      
                    <div  class="col-md-4 text-center thumbnail">
                         <img src="imagenes/DASHBOARD.png" width="170" ></img>
                          <a href="../index_dashboard.php" class="btn btn-info btn-sm">DASHBOARD</a>
                     </div>
 </div><!-- row -->                    
<!-- ============================================================================================= -->

<!-- BLOQUE 1 ============================================================================= -->
<div class="row">	

<!-- BRANDMEISTER -->  
				    <div  class="col-md-4 text-center thumbnail">	
				    <img src="imagenes/BRANDMEISTER.png" width="150" ></img>

        <?php
        $aa = exec('awk "NR==7{print;exit}" /home/pi/status.ini');
        if ($aa=="MMDVMBM=ON"){ 
        ?>
              <head> 
              <p><?php echo $Callsign." ".$Id." ".$frecuencia ?></p>
              <p><?php echo $Address ?></p>
              <!-- <a href="panel_control.php" ><img src="imagenes/ON.png" width="90" onclick="desconectar_bm()" alt=""/></a> --> 

<button class="bt btn-link btn-sm" name="cerrar_BM" onclick="desconectar_bm()"><img src="imagenes/ON.png" width="90" alt=""/><a href="panel_control.php" ></a></button> 

              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p><?php echo $Callsign." ".$Id." ".$frecuencia ?></p>
              <p><?php echo $Address ?></p>


<button class="bt btn-link btn-sm" name="cerrar_BM" onclick="conectar_bm()"><img src="imagenes/OFF.png" width="90" alt=""/><a href="panel_control.php" ></a></button>

<!-- 
              <a href="panel_control.php" ><img src="imagenes/OFF.png" width="90" onclick="conectar_bm()" alt=""/></a> -->
              </head>
        <?php
        }    
        ?>

				</div>

<!-- DMR+ -->
        <div  class="col-md-4 text-center thumbnail"> 
            <img src="imagenes/DMR_PLUS.png" width="150" ></img>

        <?php
        $plus = exec('awk "NR==6{print;exit}" /home/pi/status.ini');
        if ($plus=="MMDVMPLUS=ON"){ 
        ?>
              <head> 
              <p><?php echo $Callsign_plus." ".$Id_plus." ".$frecuencia_plus ?></p>
              <p><?php echo $Address_plus ?></p>
              <!-- <a href="panel_control.php" ><img src="imagenes/ON.png" width="90" onclick="desconectar_plus()" alt=""/></a> -->

 <button class="bt btn-link btn-sm" name="cerrar_PLUS" onclick="desconectar_plus()"><img src="imagenes/ON.png" width="90" alt=""/><a href="panel_control.php" ></a></button>              
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p><?php echo $Callsign_plus." ".$Id_plus." ".$frecuencia_plus ?></p>
              <p><?php echo $Address_plus ?></p>
              <!-- <a href="panel_control.php" ><img src="imagenes/OFF.png" width="90" onclick="conectar_plus()" alt=""/></a> -->

<button class="bt btn-link btn-sm" name="cerrar_PLUS" onclick="conectar_plus()"><img src="imagenes/OFF.png" width="90" alt=""/><a href="panel_control.php" ></a></button>   

              </head>
        <?php
        }    
        ?>
        </div>

<!-- PAGINA WEB -->          
                    <div  class="col-md-4 text-center thumbnail"><br>
                         <img src="imagenes/WEB_ADER.jpg" width="119" ></img><br>
                          <a href="http://associacioader.com" class="btn btn-warning btn-sm">PÁGINA WEB ADER</a>
                     </div>
</div><!-- row -->
<!-- FIN BLOQUE 1 ========================================================================= -->

<!-- BLOQUE 2 ============================================================================= -->
<div class="row"> 

<!-- RADIO =========== -->                   
                      <div  class="col-md-4 text-center thumbnail">
               
                      <img src="imagenes/MMDVM.png" width="71" ></img>

        <?php
        $plus = exec('awk "NR==5{print;exit}" /home/pi/status.ini');
        if ($plus=="MMDVM=ON"){ 
        ?>
              <head> 
              <p><?php echo $Callsign_Radio." ".$Id_Radio." ".$frecuencia_Radio ?></p>
              <p><?php echo $Address_Radio ?></p>
              <!-- <a href="panel_control.php" ><img src="imagenes/ON.png" width="90" onclick="desconectar_plus()" alt=""/></a> -->

 <button class="bt btn-link btn-sm" name="cerrar_PLUS" onclick="desconectar_radio()"><img src="imagenes/ON.png" width="90" alt=""/><a href="panel_control.php" ></a></button>              
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p><?php echo $Callsign_Radio." ".$Id_Radio." ".$frecuencia_Radio ?></p>
              <p><?php echo $Address_Radio ?></p>
              <!-- <a href="panel_control.php" ><img src="imagenes/OFF.png" width="90" onclick="conectar_plus()" alt=""/></a> -->

<button class="bt btn-link btn-sm" name="cerrar_PLUS" onclick="conectar_radio()"><img src="imagenes/OFF.png" width="90" alt=""/><a href="panel_control.php" ></a></button>   

              </head>
        <?php
        }    
        ?>
        </div>

<!-- YSF2DMR =======-->   
              <div  class="col-md-4 text-center thumbnail">
              <img src="imagenes/YSF2DMR.png" width="89" ></img><br>
<?php
        $ysf2 = exec('awk "NR==14{print;exit}" /home/pi/status.ini');
        if ($ysf2=="YSF2DMR=ON"){ 
        ?>
              <head>
              <p><?php echo $tg."  ".$frecuencia_2dmr ?></p> 
              <p><?php echo $Address_2dmr ?></p>
              <!-- <a href="panel_control.php" ><img src="imagenes/ON.png" width="90" onclick="cerrar_ysf2dmr()" alt=""/></a> --> 
<p><img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE</p>
              </head>
        <?php
        }
        else {
        ?>
              <head>
              <p><?php echo $tg."  ".$frecuencia_2dmr ?></p> 
              <p><?php echo $Address_2dmr ?></p>
              <!-- <a href="panel_control.php" ><img src="imagenes/OFF.png" width="90" onclick="iniciar_ysf2dmr()" alt=""/></a> -->
<p><img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE</p>
              </head>
        <?php
        }    
        ?>
        </div>

<!-- REINICIO RASPBERRY =-->                       
                     <div  class="col-md-4 text-center thumbnail">
                         <img src="imagenes/RASPBERRY.png" width="126" ></img>
                         <p class="texto_verde_rojo">Una vez reiniciado, volver a la página anterior para que no entre en un bucle de reinicios</p>
                         <input  class="btn btn-warning btn-md" type="submit" name="reiniciar_dispositivo"  value="REINICIAR - RASPBERRY PI" onclick="pregunta_reinicio_dispositivo()"><br>
                     </div>
          </div><!-- row -->
<!-- FIN BLOQUE 2 ============================================================================= -->


<!-- BLOQUE 3 ================================================================================= -->
          <div class="row">

<!-- ESTADO DISPOSITIVOS 1 -->                     
                         <div  class="col-md-4 thumbnail"><br>
                         <div class="texto_azul_negro">
                         <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ESTADO DE LOS DISPOSITIVOS</p>
                         </div>

        <?php
              $ysf = exec('awk "NR==3{print;exit}" /home/pi/status.ini');
              if ($ysf=="YSF=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - <?php echo $ysfr ?></p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - <?php echo $ysfr ?></p>
              </head>
        <?php
        }    
        ?>

        <?php
              $ysf = exec('awk "NR==4{print;exit}" /home/pi/status.ini');
              if ($ysf=="DV4mini=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - DV4Mini</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - DV4Mini</p>
              </head>
        <?php
        }    
        ?>


        <?php
              $ysf = exec('awk "NR==1{print;exit}" /home/pi/status.ini');
              if ($ysf=="D-STAR=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - ircDDB</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - ircDDB</p>
              </head>
        <?php
        }    
        ?>

        <?php
              $ysf = exec('awk "NR==2{print;exit}" /home/pi/status.ini');
              if ($ysf=="BlueDV=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - BlueDV</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - BlueDV</p>
              </head>
        <?php
        }    
        ?>


        <?php
              $ysf = exec('awk "NR==11{print;exit}" /home/pi/status.ini');
              if ($ysf=="AMBE_SERVER=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - AMBE_SERVER</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - AMBE_SERVER</p>
              </head>
        <?php
        }    
        ?>







        <?php
              $ysf = exec('awk "NR==15{print;exit}" /home/pi/status.ini');
              if ($ysf=="DMR2YSF=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - DMR2YSF</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - DMR2YSF</p>
              </head>
        <?php
        }    
        ?>









        </div>   




<!-- ESTADO DISPOSITIVOS 2 -->
                      <div  class="col-md-4 thumbnail"><br>
                        <div class="texto_azul_negro">
                          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ESTADO DE LOS DISPOSITIVOS</p>
                      </div>

        <?php
              $ysf = exec('awk "NR==8{print;exit}" /home/pi/status.ini');
              if ($ysf=="SVXLINK=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - <?php echo $svxlink ?></p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - <?php echo $svxlink ?></p>
              </head>
        <?php
        }    
        ?>

        <?php
              $ysf = exec('awk "NR==9{print;exit}" /home/pi/status.ini');
              if ($ysf=="dstarrepeater=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - D-STAR Repeater</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - D-STAR Repeater</p>
              </head>
        <?php
        }    
        ?>


        <?php
              $ysf = exec('awk "NR==10{print;exit}" /home/pi/status.ini');
              if ($ysf=="MMDVMLIBRE=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - LIBRE</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - LIBRE</p>
              </head>
        <?php
        }    
        ?>

        <?php
              $ysf = exec('awk "NR==12{print;exit}" /home/pi/status.ini');
              if ($ysf=="SOLOFUSION=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - SOLO FUSION</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - SOLO FUSION</p>
              </head>
        <?php
        }    
        ?>

        <?php
              $ysf = exec('awk "NR==13{print;exit}" /home/pi/status.ini');
              if ($ysf=="SOLODSTAR=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - SOLO D-STAR</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - SOLO D-STAR</p>
              </head>
        <?php
        }    
        ?>






<?php
              $ysf = exec('awk "NR==16{print;exit}" /home/pi/status.ini');
              if ($ysf=="DMR2NXDN=ON"){ 
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_ON.png" width="23" alt=""/> - ONLINE - DMR2NXDN</p>
              </head>
        <?php
        }
        else {
        ?>
              <head> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/ESTADO_OFF.png" width="23" alt=""/> - OFFLINE - DMR2NXDN</p>
              </head>
        <?php
        }    
        ?>













</div>

<!-- APAGAR RASPBERRY PI === -->
                          <div  class="col-md-4 text-center thumbnail"><br>
                          <img src="imagenes/RASPBERRY.png" width="194" ></img><br><br>
                          <button class="btn btn-danger btn-md" onclick="pregunta_apagar_dispositivo()">APAGAR  - RASPBERRY PI</button>
                     </div>
          </div><!-- row -->
<!-- FIN BLOQUE 3 ============================================================================= -->
<br>




</div><!-- container -->
<br>
<br>
<br>
<br>
<!-- JavaScript================================================== -->
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
	</body>
<html>
