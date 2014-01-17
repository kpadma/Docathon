#!/usr/bin/perl
use CGI;
#create new CGI object to handle query
$q=new CGI;
#take input and store in local variable
$cmd=$q->param('name');
#define various greeting messages
@greet=("Hello","Hai","Nice meeting you","Have a nice day");
#choose a message based on the length of the input
$index=length($cmd)%4;
print<<1;
Content-type:text/html\n\n
<html>
<center>
<h2>$cmd, $greet[$index]</h2>
</center>
</html>
1
