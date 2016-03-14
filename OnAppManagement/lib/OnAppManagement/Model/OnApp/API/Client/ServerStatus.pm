package OnAppManagement::Model::OnApp::API::Client::ServerStatus;
use Moose;

sub get_status {
	my ($self, $server_id) = @_;

	my $link = "virtual_machines/$server_id";

	my $json = $self->call($link);
	my $server_details = {
		status => $json->{booted_type} eq 'true' ? "Live":"Building",
		label => $json->{label},
		cpus => $json->{cpus},
		disk_size => $json->{total_disk_size},
		memory_size => $json->{memory},
		initial_root_password => $json->{inital_root_password},
		template_id => $json->{template_id},
	};

	return $server_details;
}

1;


