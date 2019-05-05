#!/usr/bin/env perl
# (C) 2019 Piotr Biesiada
use strict;
use warnings;
use Date::Parse;
use DateTime;
use File::Copy;

my $i = 0;
my @files = <in/*.eml>;
my $dt;
mkdir("out");
foreach my $filein (@files) {
	print "\r$i/$#files";
	open my $fhin, $filein or die "can't open $filein: $!";
	my $line;
	while($line = <$fhin>) {
		my $ss = substr $line, 0, 5;
		if ($ss eq "Date:") {
			my $d = substr $line, 6;
			#print $d."\n";
			my $epoch = str2time($d);
			$dt = DateTime->from_epoch(epoch => $epoch);
			$dt = $dt->strftime("%y%m%d-%H%M%S");
			#print $dt."\n";
			last;
		}
	}
	close($fhin);
	if (-e "out/$dt.eml") {
		$dt=$dt."_";
	}
	copy($filein,"out/".$dt.".eml");
	$i++;
}
