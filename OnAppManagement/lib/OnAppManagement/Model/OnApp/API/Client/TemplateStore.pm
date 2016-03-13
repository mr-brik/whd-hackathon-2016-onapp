package OnAppManagement::Model::OnApp::API::Client::TemplateStore;
use Moose;

extends "OnAppManagement::Model::OnApp::API::Client";

sub run {
	my ($self) =@_;
	my $json = $self->call('template_store');
	
	my (@templates, @locations);

	foreach my $location (@$json){
		foreach my $template (@{$location->{relations}}){
			my $template_data = {
				id 									=> $template->{template_id},
				label 							=> $template->{image_template}{label},
				min_disk_size 			=> $template->{min_disk_size},
				min_memory_size 		=> $template->{min_memory_size},
				operating_system 		=> $template->{image_template}{operating_system},
				operating_system_distro => $template->{image_template}{operating_system_distro},
				hypervisor_group_id => $location->{hypervisor_group_id},
				location_label 			=> $location->{label}
			};
			push @templates, $template_data;
		}

		my $location_data = {
			label => $location->{label},
			hypervisor_group_id => $location->{hypervisor_group_id},
		};
		push @locations, $location_data;
	}
	return [ \@templates,\@locations];
}
