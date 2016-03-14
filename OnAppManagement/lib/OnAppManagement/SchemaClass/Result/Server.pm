use utf8;
package OnAppManagement::SchemaClass::Result::Server;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

OnAppManagement::SchemaClass::Result::Server

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

=head1 TABLE: C<server>

=cut

__PACKAGE__->table("server");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 onapp_id

  data_type: 'text'
  is_nullable: 0

=head2 template_id

  data_type: 'int'
  is_foreign_key: 1
  is_nullable: 0

=head2 label

  data_type: 'text'
  is_nullable: 0

=head2 status

  data_type: 'text'
  default_value: 'building'
  is_nullable: 0

=head2 cpus

  data_type: 'int'
  is_nullable: 0

=head2 disk_size

  data_type: 'int'
  is_nullable: 0

=head2 memory_size

  data_type: 'int'
  is_nullable: 0

=head2 ipv4_address

  data_type: 'text'
  is_nullable: 0

=head2 initial_root_password

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "onapp_id",
  { data_type => "text", is_nullable => 0 },
  "template_id",
  { data_type => "int", is_foreign_key => 1, is_nullable => 0 },
  "label",
  { data_type => "text", is_nullable => 0 },
  "status",
  { data_type => "text", default_value => "building", is_nullable => 0 },
  "cpus",
  { data_type => "int", is_nullable => 0 },
  "disk_size",
  { data_type => "int", is_nullable => 0 },
  "memory_size",
  { data_type => "int", is_nullable => 0 },
  "ipv4_address",
  { data_type => "text", is_nullable => 0 },
  "initial_root_password",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 template

Type: belongs_to

Related object: L<OnAppManagement::SchemaClass::Result::Template>

=cut

__PACKAGE__->belongs_to(
  "template",
  "OnAppManagement::SchemaClass::Result::Template",
  { id => "template_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 user_server_links

Type: has_many

Related object: L<OnAppManagement::SchemaClass::Result::UserServerLink>

=cut

__PACKAGE__->has_many(
  "user_server_links",
  "OnAppManagement::SchemaClass::Result::UserServerLink",
  { "foreign.server_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-03-14 11:43:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XJH/29DB+TnfpRz1OIviBw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
