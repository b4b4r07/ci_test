#!/usr/bin/perl

use strict;
use warnings;
use FindBin;
use Cwd;
use Test::More;

my @list = glob getcwd . "/*.sh";
cmp_ok @list, '>', 0, '@list > 0';

foreach my $f (@list) {
    # Check debug mode init scripts
    system("yes | bash $f");
    ok $? == 0;
}
done_testing;
