package OnAppManagement::Model::App::StoreTemplateData;
use Moose;
use namespace::autoclean;

use OnAppManagement::Model::OnApp::API::Client::TemplateStore;
use OnAppManagement::Model::LocalStorage;

extends 'Catalyst::Model';

=head1 NAME

OnAppManagement::Model::App::StoreTemplateData - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.


=encoding utf8

=head1 AUTHOR

Brian Kelly

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

sub run {
  my ($self) = @_;
  my ( $template_data, $location_data ) =
    OnAppManagement::Model::OnApp::API::Client::TemplateStore->new->get_data;
  my $schema = OnAppManagement::Model::LocalStorage->new;
  my %hypervisor_location_map;
  foreach my $ld (@$location_data) {
    next if not $ld->{'hypervisor_group_id'};
    my $l = $schema->resultset('Location')->create($ld);
    $hypervisor_location_map{ $ld->{'hypervisor_group_id'} } = $l->id;
  }
  foreach my $td (@$template_data) {
    my $location_id = $hypervisor_location_map{ $td->{'hypervisor_group_id'} };
    next if not $location_id;
    $td->{'location_id'} = $location_id;
    delete $td->{'hypervisor_group_id'};
    $schema->resultset('Template')->create($td);
  }
}

__PACKAGE__->meta->make_immutable;

1;
