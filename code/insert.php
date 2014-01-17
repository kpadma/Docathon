<?php
# take inputs & store in local variables
$name=$_REQUEST['name'];
$addr1=$_REQUEST['addr1'];
$addr2=$_REQUEST['addr2'];
$email=$_REQUEST['email'];
# create a database handle
# mysql_connect() connects the script to MySQL server
# the parameters are hostname, username_for_mysql, password_for_database
$con=mysql_connect("localhost","root","pass") or die('Could not connect');
# select a database
mysql_select_db("test",$con);
# query
if(mysql_query("insert into student values('$name','$addr1','$addr2','$email')"))
{
echo "Data inserted successfully!";
}
# release the database handle by closing the connection
mysql_close($con);
?>
