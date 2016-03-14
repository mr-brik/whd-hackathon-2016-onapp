package OnAppManagement::Model::App::StoreServerStatus;
use Moose;
use namespace::autoclean;

use OnAppManagement::Model::OnApp::API::Client::ServerStatus;
use OnAppManagement::Model::LocalStorage;

extends 'Catalyst::Model';

=head1 NAME

OnAppManagement::Model::App::StoreServerStatus - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.


=encoding utf8

=head1 AUTHOR

Brian Kelly

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

sub get_status {
	my ($self, $server_id) = @_;
 	my $schema = OnAppManagement::Model::LocalStorage->new;

        my $server_status = OnAppManagement::Model::OnApp::API::Client::ServerStatus->new->get_status($server_id);

	my $server = $schema->resultset->('Server')->update_or_create($server_status);

	return $server;
}
