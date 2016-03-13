package OnAppManagement::Model::OnApp::API::Client::TemplateStore;
use Moose;

extends "OnAppManagement::Model::OnApp::API::Client";


=head1 METHODS

=head2 get_data

Returns 2 array references:

=over

=item template_data

With keys:

=over

=item id

=item label

=item min_disk_size

=item min_memory_size

=item operating_system

=item operating_system_distro

=item hypervisor_group_id

=back

=item template_data

With keys:

=over

=item label

=item hypervisor_group_id

=back

=back

=cut

sub get_data {
  my ($self) = @_;
  my $json = $self->call('template_store');

  my ( @templates, @locations );

  foreach my $location (@$json) {
    foreach my $template ( @{ $location->{relations} } ) {
      my $template_data = {
        id               => $template->{template_id},
        label            => $template->{image_template}{label},
        min_disk_size    => $template->{image_template}{min_disk_size},
        min_memory_size  => $template->{image_template}{min_memory_size},
        operating_system => $template->{image_template}{operating_system},
        operating_system_distro =>
          $template->{image_template}{operating_system_distro},
        hypervisor_group_id => $location->{hypervisor_group_id},
        #location_label      => $location->{label}, # BK - causes problems
      };
      push @templates, $template_data;
    }

    my $location_data = {
      label               => $location->{label},
      hypervisor_group_id => $location->{hypervisor_group_id},
    };
    push @locations, $location_data;
  }
  return \@templates, \@locations;
}

__PACKAGE__->meta->make_immutable;

1;
