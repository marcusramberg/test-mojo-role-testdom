use Test::More;
use Test::Mojo;
my $t=Test::Mojo->with_roles('+TestDOM')->new();
$t->dom(Mojo::DOM->new('<html/>'));
$t->element_exists('html', 'HTML element exists');
done_testing;
