#       CopyRight 2014 Óscar Zafra (oskyar@gmail.com)
#
#       This program is free software: you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation, either version 3 of the License, or
#       (at your option) any later version.
#
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#
#       You should have received a copy of the GNU General Public License
#       along with this program.  If not, see <http://www.gnu.org/licenses/>.

#!/usr/bin/env perl -w

use v5.014;

use strict;
use Switch;
use utf8;

my $command;
my $inFile;
foreach my $inFile (@ARGV){
	$inFile =~ /([\s\w\d\/]*)(\.[xX][lL][sS])$/;
	$command = "xls2csv -x \"$inFile\" -b ISO-8859-1 -c \"$1\".csv -a UTF-8 -f -q";
	system($command);
	if ($?) {
		print "command failed: $!\n";
	}
}