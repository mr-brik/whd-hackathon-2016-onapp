use utf8;
package OnAppManagement::SchemaClass::Result::Location;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

OnAppManagement::SchemaClass::Result::Location

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

=head1 TABLE: C<location>

=cut

__PACKAGE__->table("location");

=head1 ACCESSORS

=head2 id

  data_type: 'int'
  is_nullable: 0

=head2 label

  data_type: 'text'
  is_nullable: 0

=head2 hypervisor_group_id

  data_type: 'int'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "int", is_nullable => 0 },
  "label",
  { data_type => "text", is_nullable => 0 },
  "hypervisor_group_id",
  { data_type => "int", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<hypervisor_group_id_unique>

=over 4

=item * L</hypervisor_group_id>

=back

=cut

__PACKAGE__->add_unique_constraint("hypervisor_group_id_unique", ["hypervisor_group_id"]);

=head1 RELATIONS

=head2 templates

Type: has_many

Related object: L<OnAppManagement::SchemaClass::Result::Template>

=cut

__PACKAGE__->has_many(
  "templates",
  "OnAppManagement::SchemaClass::Result::Template",
  { "foreign.location_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-03-13 15:35:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PI9uX1uBezyNkF8mrO+Uvg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
