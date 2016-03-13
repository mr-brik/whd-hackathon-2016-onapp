#!/bin/bash

perl OnAppManagement/script/onappmanagement_create.pl \
 model OnAppLocalDB DBIC::Schema OnAppManagement::SchemaClass \
 create=static dbi:SQLite:db/onapp.sqlite3
