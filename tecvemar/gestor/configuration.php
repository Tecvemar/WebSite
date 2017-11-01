<?php
class JConfig {
	public $offline = '1';
	public $offline_message = 'Este sitio está cerrado por tareas de mantenimiento.<br />Por favor, inténtelo nuevamente más tarde.';
	public $display_offline_message = '1';
	public $offline_image = '';
	public $sitename = '::TECVEMAR::';
	public $editor = 'tinymce';
	public $captcha = '0';
	public $list_limit = '20';
	public $access = '1';
	public $debug = '0';
	public $debug_lang = '0';
	//define('DB_USER', "tecvemar_externo"); // db user
//define('DB_PASSWORD', "externo-36091"); // db password (mention your db password here)
//define('DB_DATABASE', "tecvemar_externo"); // database name
//define('DB_SERVER', "10.8.0.1"); // db server
	public $dbtype = 'mysqli';
	public $host = 'localhost';
	public $user = 'root';
	public $password = '';
	public $db = 'tecvemar';
	public $dbprefix = 'tecvemar_';
	public $live_site = '';
	public $secret = 'kES2iGuGQItOIipP';
	public $gzip = '0';
	public $error_reporting = 'default';
	public $helpurl = 'https://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help{major}{minor}:{keyref}';
	public $ftp_host = '';
	public $ftp_port = '';
	public $ftp_user = '';
	public $ftp_pass = '';
	public $ftp_root = '';
	public $ftp_enable = '0';
	public $offset = 'UTC';
	public $mailonline = '1';
	public $mailer = 'mail';
	public $mailfrom = 'info@tecvemar.com';
	public $fromname = '::TECVEMAR::';
	public $sendmail = '/usr/sbin/sendmail';
	public $smtpauth = '0';
	public $smtpuser = '';
	public $smtppass = '';
	public $smtphost = 'localhost';
	public $smtpsecure = 'none';
	public $smtpport = '25';
	public $caching = '0';
	public $cache_handler = 'file';
	public $cachetime = '15';
	public $MetaDesc = '';
	public $MetaKeys = '';
	public $MetaTitle = '1';
	public $MetaAuthor = '1';
	public $MetaVersion = '0';
	public $robots = '';
	public $sef = '1';
	public $sef_rewrite = '0';
	public $sef_suffix = '0';
	public $unicodeslugs = '0';
	public $feed_limit = '10';
	public $log_path = 'C:\\wamp64\\www\\tecvemar\\gestor/logs';
	public $tmp_path = 'C:\\wamp64\\www\\tecvemar\\gestor/tmp';
	public $lifetime = '15';
	public $session_handler = 'database';
}