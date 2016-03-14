# whd-hackathon-2016-onapp

WHD Hackathon 2016 - OnApp

## Objectives

Create a user interface for management of onapp virtual_machine instances.

## Deployment

For this you'll need a system with the following installed:
  * Perl >v5.10
  * GNU make
  * SQLite3

Please note, this an application written with the Catalyst framework.

## Configuration

This goes in ./etc/onapp.yaml - see ./etc/onapp.yaml.sample

## Initial run

You'll need to run the following command to populate local DB

```
make populate-db-templates
```

## Running

Running can be done with any backend Catalyst supports; to fire up a
standalone instance:

```
OnAppManagement/script/onappmanagement_server.pl
```
