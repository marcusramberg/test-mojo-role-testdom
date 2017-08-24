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
