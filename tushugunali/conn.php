<?php
$conn=@mysql_connect("localhost","root","") or die("db connect error");
mysql_select_db("managebook",$conn);
mysql_query("set names utf8");
?>