package Test::Mojo::Role::TestDOM;
use Mojo::Base -base;

use Role::Tiny;
use Mojo::Transaction::HTTP;

requires 'tx';

sub dom {
  my ($self, $dom) = @_;
  if($dom) {
    $self->tx(Mojo::Transaction::HTTP->new);
    $self->tx->res->body($dom);
  }
  else {
    return $self->tx->dom;
  }
}

1;

=encoding utf8

=head1 NAME

Test::Mojo::Role::TestDOM - TODO

=head1 SYNOPSIS



=head1 DESCRIPTION

Test XML documents directly with Test::Mojo.

=head1 ATTRIBUTES

=head1 METHODS

=head2 dom <$xml|Mojo::DOM>

Takes a L<Mojo::DOM> or other object that can be stringified and allow you to do DOM tests without a request.

=head1 AUTHOR

marcus

=head1 COPYRIGHT AND LICENSE

TODO

=head1 SEE ALSO

TODO

=cut
