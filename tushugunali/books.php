<?php
header("content-type:text/html;charset=utf-8");
include("conn.php");
$page=$_GET['page'];
if(empty($page)){
	$page=1;
}
if($page<=1){
  $page=1;	
}

$rs=mysql_query("select * from books");
//获得总记录数
$rscount=mysql_num_rows($rs);
//得到总页数
$pagecount=ceil($rscount/5);
if($page>=$pagecount){
  $page=$pagecount;	
}
mysql_data_seek($rs,($page-1)*5);
$jsonbooks='{"pagecount":'.$pagecount.",".'"data":'."[";
for($i=1;$i<=5;$i++){
	if($info=mysql_fetch_array($rs)){
	$jsonbooks.='{"bookId":'.'"'.$info["bookId"].'",'.'"bookName":'.'"'.$info['bookName'].'",'.'"bookOri":'.'"'.$info['bookOri'].'",'.'"bookPrice":'.'"'.$info['bookPrice'].'",'.'"bookPub":'.'"'.$info['bookPub'].'",'.'"bookPic":'.'"'.$info['bookPic'].'",'.'"bookAddTime":'.'"'.$info['bookAddTime'].'"},';
}
}
echo substr($jsonbooks,0,strlen($jsonbooks)-1)."]}";
?>