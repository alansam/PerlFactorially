sub check {
	if ($_[0] % $_[1]) {
		return "";
	}
	return $_[2];
}

sub empty {
	if ($_[0]) {
		return $_[0]
	}
	return $_[1]
}

for (1..100) {
	my $checks = check $_, 3, "Fizz" . check $_, 5, "Buzz" ;
	my $toprint = empty $checks, $_;
	print "$toprint\n";
}