#!/usr/bin/perl
use  CGI ':standard';
print 
header(),
start_html(),
h1("my web page"),
#hr();
$fname='count.txt';
if(open(FH,"<$fname"))
{
$c=<FH>;
$c=$c+1;
close(FH);
}
open(FH,">$fname");
print FH $c;
close(FH);
print "YOU ARE THE $c VISITOR";
print end_html();
