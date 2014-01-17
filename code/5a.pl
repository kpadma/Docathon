#!/usr/bin/perl
#this is a here-doc
print<<here;
Content-type:text/html\n\n
<html>
<table border=1>
<tr>
<th>ENV_VARIABLES</th><th>Value</th>
</tr>
here
#end of here document
#display values in a table
foreach $i(sort keys %ENV)
{
print "<tr><td>$i</td><td>$ENV{$i}</td></tr>";
}
print "</table></html>";
