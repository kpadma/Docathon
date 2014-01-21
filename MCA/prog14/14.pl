#!/usr/bin/perl 
#day_cookie.pl
use CGI ':standard';
@lastday=cookie('lasttime');
$day_of_week=(qw(sunday monday tuesday wednesday thursday friday saturday))[ (localtime) [6] ];
$month=(qw(January february march april may june july august september october novemebr december))[ (localtime) [4] ];
$day_of_month=(localtime) [3];
@day_stuff=($day_of_week.$day_of_month,$month);
$day_cookie=cookie(-name=>'last_time',-value=>\@day_stuff,-expires=>'+3d');
print header(-cookie=>$day_cookie);
print start_html('this is day_cookie.pl');
if(scalar(@last_day)==0)
{
print "Welcome to you on your first visit to our site<br/>";
}
else
{
($day_of_week,$day_of_month,$month)=@last_day;
print "Welcome back!<br/>","your last visit was on","$day_of_week,$month,$day_of_month<br/>";
}
print end_html();
