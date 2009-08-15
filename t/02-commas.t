use v6;
use Test;

use CSV;

sub ok_becomes($input, $output, $description = '') {
    is_deeply CSV.read($input), $output, $description;
}

ok_becomes q[[[foo,bar,baz
foo, bar, baz
foo,  bar,  baz]]], [ [<foo bar baz>] xx 3 ], 'a file with commas and spaces';

done_testing;

# vim:ft=perl6
