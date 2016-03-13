package OnAppManagement::Model::OnApp::API::Client::ServerStatus;
use Moose;

sub get_status {
	my ($self, $server_id) = @_;

	my $link = "virtual_machines/$server_id/status";

	my $json = $self->call($link);
	my $status = $json->[0]->{booted_type};

	return $status;
}

1;


