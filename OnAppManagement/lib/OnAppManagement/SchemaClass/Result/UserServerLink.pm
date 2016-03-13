use utf8;
package OnAppManagement::SchemaClass::Result::UserServerLink;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

OnAppManagement::SchemaClass::Result::UserServerLink

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<user_server_link>

=cut

__PACKAGE__->table("user_server_link");

=head1 ACCESSORS

=head2 id

  data_type: 'int'
  is_nullable: 0

=head2 user_id

  data_type: 'int'
  is_foreign_key: 1
  is_nullable: 0

=head2 server_id

  data_type: 'int'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "int", is_nullable => 0 },
  "user_id",
  { data_type => "int", is_foreign_key => 1, is_nullable => 0 },
  "server_id",
  { data_type => "int", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<user_id_server_id_unique>

=over 4

=item * L</user_id>

=item * L</server_id>

=back

=cut

__PACKAGE__->add_unique_constraint("user_id_server_id_unique", ["user_id", "server_id"]);

=head1 RELATIONS

=head2 server

Type: belongs_to

Related object: L<OnAppManagement::SchemaClass::Result::Server>

=cut

__PACKAGE__->belongs_to(
  "server",
  "OnAppManagement::SchemaClass::Result::Server",
  { id => "server_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 user

Type: belongs_to

Related object: L<OnAppManagement::SchemaClass::Result::User>

=cut

__PACKAGE__->belongs_to(
  "user",
  "OnAppManagement::SchemaClass::Result::User",
  { id => "user_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-03-13 15:35:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qMSrC3mMUmZpORg3DzzafQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
