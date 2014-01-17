#!/usr/bin/perl
#load CGI standard routines
use CGI':standard';
print "Content-type:text/html\n\n";
#open a file called count.txt to store values of number of views
open(FILE,'<count.txt');
$count=<FILE>;
close(FILE);
$count++;
#append the new incremented value to the file
open(FILE,'>count.txt');
print FILE "$count";
print "This page has been viewed $count times";
