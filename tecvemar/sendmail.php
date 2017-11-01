
<?php 


require('PHPMailer-master/class.phpmailer.php');

require('PHPMailer-master/class.smtp.php');

/*=================================
=            reCatchat            =
=================================*/

/*require('rs-plugin/recaptcha/recaptchalib.php');
//Llaves de la captcha
$captcha_publickey = "6LdOBCkTAAAAAJb-Pg8imrxj8Usno-q6ZQtKwkty";
$captcha_privatekey = "6LdOBCkTAAAAAEgkr2utTEKDpcE5WU2wheHemy2s";
//por ahora ponemos a null el error de la captcha
$error_captcha=null;

$captcha_respuesta = recaptcha_check_answer ($captcha_privatekey,
$_SERVER["REMOTE_ADDR"],
$_POST["recaptcha_challenge_field"],
$_POST["recaptcha_response_field"]);
if ($captcha_respuesta->is_valid) {
   //todo correcto

	echo 'Validado el catpcha';
//hacemos lo que se deba hacer una vez recibido el formulario válido
}else{
   //El código de validación de la imagen está mal escrito.
   $error_captcha = $captcha_respuesta->error;
   echo 'verifique el catcha';
}*/
/*=====  End of reCatchat  ======*/





$nombre = $_POST['nombre'];
$email_enviado = $_POST['email'];
$asunto = $_POST['asunto'];
$mensaje = $_POST['mensaje'];
$mensajeAsunto = $_POST['asunto'].' '.$_POST['mensaje'];
/*$recatcha =  $_POST['g-recaptcha-response'];*/
require_once 'db_connect.php';


// connecting to db
$con = new DB_CONNECT();
//sleep(10);
mysql_query("SET NAMES utf8");
mysql_query("SET CHARACTER_SET utf");  


function codigoSiguiente(){
$resul =  mysql_query("SELECT IF(ISNULL(max( id)+ 1),'1',max( id)+ 1)  AS id FROM b_suscribete");
while($row =  mysql_fetch_array($resul) ) {
 return $row['id'];
}
}
$id = codigoSiguiente();


$ip = $_SERVER["REMOTE_ADDR"];
$res = mysql_query("INSERT INTO `b_suscribete` (`id`, `nombre`, `email`, `enviarEmail` , `mensaje` ,`fecha`, `ip`) VALUES ('$id','$nombre','$email_enviado','$enviarEmail','$mensajeAsunto', NOW(), '$ip');");





$mail = new PHPMailer();

$body = 'Estimado(a): <strong>'.$nombre.'</strong>, '.$email_enviado.'';
$body .= '<br>';
$body .= '<br>';
$body .='Pronto serás atendido por uno de nuestros asesores!';
$body .= '<br>';
$body .= '<br>';
$body .='<strong>Asunto: </strong>'.$asunto.'';
$body .= '<br>';
$body .='<strong>Mensaje: </strong>'.$mensaje.'';

$body .= '<br>';
$body .= '<br>';
$body .='<strong>Este correo es informativo, favor no responder a esta dirección de correo, ya
que no se encuentra habilitada para recibir mensajes.
Si requiere mayor información contactar por nuestro Web Site (Contacto).</strong>';

$body .= '<br>';
$body .= '<br>';
$body .='<p>La información contenida en este mensaje y en cualquier archivo o documento que se adjunte al mismo es confidencial y privilegiada.
Está dirigida exclusivamente para el uso privado del destinatario y no debe ser diseminada o utilizada por otra persona.
Si usted recibe esta transmisión por error, favor notifique inmediatamente al remitente por esta misma vía y destruya la transmisión original y sus adjuntos.</p>
<p>La compañía no garantiza la transmisión de mensajes electrónicos en forma segura y libre de errores debido a que la información puede ser interceptada, dañada, perdida, destruida, pueda llegar tarde, incompleta, o conteniendo virus.</p>
<p>La compañía no acepta responsabilidad por cualquier error u omisión en el contenido de este mensaje, que puede surgir como resultado de la transmisión de este mensaje electrónico.</p>
<p>Los empleados y usuarios del sistema de mensaje electrónico están expresamente notificados de no crear y enviar enunciados difamatorios; no deben infringir o autorizar ninguna violación a los derechos de autor u otras disposiciones legales, a través de comunicaciones por mensaje electrónico.</p>
<p>Cualquier comunicado de esta naturaleza es contrario a la política de la compañía. La compañía no acepta ninguna responsabilidad con respecto a este tipo de comunicación. </p>';
$body .= '<br>';
$body .='<a href="http://tecvemar.com" target="_black">www.tecvemar.com</a>';


$mail->IsSMTP();

/* Sustituye (ServidorDeCorreoSMTP)  por el host de tu servidor de correo SMTP*/
$mail->Host = 'localhost';
$mail->Port       = 587;
$mail->SMTPSecure = 'tls';
/* Sustituye  ( CuentaDeEnvio )  por la cuenta desde la que deseas enviar por ejem. prueba@domitienda.com  */

$mail->From = 'web@tecvemar.com';

$mail->FromName = 'Tecvemar C.A';

$mail->Subject = 'Formulario Web';

$mail->AltBody = 'Prueba';
$mail->CharSet = 'UTF-8';

$mail->MsgHTML($body);

/* Sustituye  (CuentaDestino )  por la cuenta a la que deseas enviar por ejem. admin@domitienda.com  */
$mail->AddAddress($email_enviado, $nombre);

// $mail->AddAddress("destino1@correo.com","Nombre 01");
// $mail->AddAddress("destino2@correo.com","Nombre 02");
// $mail->AddCC("usuariocopia@correo.com");
$mail->AddBCC("douglasjosenieves@gmail.com", 'Douglas Nieves');

$mail->SMTPAuth = true;

/* Sustituye (CuentaDeEnvio )  por la misma cuenta que usaste en la parte superior en este caso  prueba@domitienda.com  y sustituye (ContraseñaDeEnvio)  por la contraseña que tenga dicha cuenta */

$mail->Username = 'web@tecvemar.com';
$mail->Password = 'web-pr0gramad0r';

if(!$mail->Send()) {
echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
//echo 'Message sent!';
}

echo $res;
//echo $recatcha;
?>