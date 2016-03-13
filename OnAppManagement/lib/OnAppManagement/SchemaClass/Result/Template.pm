use utf8;
package OnAppManagement::SchemaClass::Result::Template;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

OnAppManagement::SchemaClass::Result::Template

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

=head1 TABLE: C<template>

=cut

__PACKAGE__->table("template");

=head1 ACCESSORS

=head2 id

  data_type: 'int'
  is_nullable: 0

=head2 label

  data_type: 'text'
  is_nullable: 0

=head2 location_id

  data_type: 'int'
  is_foreign_key: 1
  is_nullable: 0

=head2 onapp_id

  data_type: 'int'
  is_nullable: 0

=head2 min_disk_size

  data_type: 'int'
  is_nullable: 0

=head2 min_memory_size

  data_type: 'int'
  is_nullable: 0

=head2 operating_system

  data_type: 'text'
  is_nullable: 0

=head2 operating_system_distro

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "int", is_nullable => 0 },
  "label",
  { data_type => "text", is_nullable => 0 },
  "location_id",
  { data_type => "int", is_foreign_key => 1, is_nullable => 0 },
  "onapp_id",
  { data_type => "int", is_nullable => 0 },
  "min_disk_size",
  { data_type => "int", is_nullable => 0 },
  "min_memory_size",
  { data_type => "int", is_nullable => 0 },
  "operating_system",
  { data_type => "text", is_nullable => 0 },
  "operating_system_distro",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<onapp_id_unique>

=over 4

=item * L</onapp_id>

=back

=cut

__PACKAGE__->add_unique_constraint("onapp_id_unique", ["onapp_id"]);

=head1 RELATIONS

=head2 location

Type: belongs_to

Related object: L<OnAppManagement::SchemaClass::Result::Location>

=cut

__PACKAGE__->belongs_to(
  "location",
  "OnAppManagement::SchemaClass::Result::Location",
  { id => "location_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 servers

Type: has_many

Related object: L<OnAppManagement::SchemaClass::Result::Server>

=cut

__PACKAGE__->has_many(
  "servers",
  "OnAppManagement::SchemaClass::Result::Server",
  { "foreign.template_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-03-13 15:35:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rCgCoZg9CnhiEKcMbpL9EQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
