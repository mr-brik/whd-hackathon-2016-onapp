#!/bin/bash

perl OnAppManagement/script/onappmanagement_create.pl \
 model LocalStorage DBIC::Schema OnAppManagement::SchemaClass \
 create=static dbi:SQLite:db/onapp.sqlite3
