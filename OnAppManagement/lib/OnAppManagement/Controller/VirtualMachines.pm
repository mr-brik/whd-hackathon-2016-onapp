package OnAppManagement::Controller::VirtualMachines;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

OnAppManagement::Controller::VirtualMachines - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

=head2 index

List virtual machines

=cut

sub index : Path : Args(0) {
  my ( $self, $c ) = @_;
  $c->forward('list');
}

=head2 list

List logic

=cut

sub list : Path : Args(0) {
  my ( $self, $c ) = @_;
  $c->stash( template => 'virtual_machines/list.tt' );
}

=head2 create

Creation logic

=cut

sub create : Path : Args(0) {
  my ( $self, $c ) = @_;
  $c->stash( template => 'virtual_machines/create.tt' );
}

=encoding utf8

=head1 AUTHOR

Brian Kelly

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
