<?php
#start session
session_start();
#check if session exists
if(isset($_SESSION['count']))
{
echo "Number of views: " .$_SESSION['count'];
#increment the count
$_SESSION['count']++;
}
else
{
#if no session exists
$_SESSION['count']=1;
echo "No session";
}
?>
