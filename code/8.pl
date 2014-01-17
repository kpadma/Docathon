#!/usr/bin/perl
use CGI;
#import database module
use DBI;
$q=new CGI;
#take inputs and store in local variables
$nm=$q->param('name');
$age=$q->param('age');
#connect takes 3 parameters driver_name:database_name, database_username, database_password
#this creates a database handle & stores it in $db
$db=DBI->connect("DBI:mysql:test",'root','pass');
#query
$str=("insert into info values('$nm',$age)");
#compiles the query and returns an object reference which is called statement handle
$q=$db->prepare($str);
#execute the query using statement handle
$q->execute();
$q=$db->prepare("select * from info");
$q->execute();
print<<1;
Content-type:text/html\n\n
<html>
<table border=1>
<tr><th>Name</th><th>Age</th></tr>
1
#obtain all the rows with matching patterns
while(($nm,$age)=$q->fetchrow())
{
print "<tr><td>$nm</td><td>$age</td></tr>";
}
print "</table></html>";
#release the statement handle & database handle
$q->finish;
$db->disconnect;
