package OnAppManagement::Model::OnApp::API::Client;
use Moose;
use namespace::autoclean;
use LWP::UserAgent;
use Config::JFDI;
use JSON;

our $DEBUG       = 0;
our $CONFIG_PATH = "./etc/on-app.yaml";

use Carp qw/cluck/;
extends 'Catalyst::Model';

=head1 NAME

OnAppManagement::Model::OnApp::API::Client - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.


=encoding utf8

=head1 AUTHOR

Brian Kelly

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

has 'base_uri' => ( is => 'ro', lazy_build => 1, );

sub _build_base_uri {
  my ($self) = @_;
  return $self->config->{'base_uri'};
}

has 'username' => ( is => 'ro', lazy_build => 1, );

sub _build_username {
  my ($self) = @_;
  return $self->config->{'base_uri'};
}

has 'password' => ( is => 'ro', lazy_build => 1, );

sub _build_password {
  my ($self) = @_;
  return $self->config->{'password'};
}

sub config {
  my ($self) = @_;
  return Config::JFDI->open($CONFIG_PATH);
}

=head1 METHODS

=head2 call( $path )

=head2 call( $path, $post_param )

Where:

=over

=item $path is the basic path e.g. "/settings/image_template_groups".

=item $post_param is a hash reference for data to pass in the POST request. Optional.

=cut

sub call {
  my ( $self, $path, $post_param ) = @_;
  return $post_param
    ? $self->_post_req( $path, $post_param )
    : $self->_get_req($path);
}

sub _get_req {
  my ( $self, $path ) = @_;
  my $req = HTTP::Request->new(
    'GET' => sprintf( '%s/%s.json', $self->base_uri, $path ),
    HTTP::Headers->new(
      Content_Type => 'application/json',
      'Accept'     => 'application/json',
    )
  );
  $req->authorization_basic( $self->username, $self->password );
  my $res = LWP::UserAgent->new->request($req);
  return if not $res->is_success;
  return JSON->new->utf8->decode( $res->decoded_content );
}

sub _post_req {
  my ( $self, $path, $post_param ) = @_;
  my $ua      = LWP::UserAgent->new();
  my $content = JSON->new->ascii->encode($post_param);
  my $req     = HTTP::Request->new(
    POST => sprintf( '%s/%s.json', $self->base_uri, $path ),
    HTTP::Headers->new(
      Content_Type => 'application/json',
      'Accept'     => 'application/json',
    ),
  );
  $req->authorization_basic( $self->username, $self->password );
  my $res = $ua->request($req);
  if ($DEBUG) {
    warn $req->content;
    warn $req->as_string;
    warn $res->decoded_content;
  }
  if ( not $res->is_success ) {
    cluck sprintf( 'Failed with status line: %s', $res->status_line );
    return;
  }
  return JSON->new->utf8->decode( $res->decoded_content );
}

__PACKAGE__->meta->make_immutable;

1;
