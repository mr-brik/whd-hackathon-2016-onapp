.phony: reset-db

reset-db:
	sqlite3 db/onapp.sqlite3 < sql/onapp.sql

populate-db-templates:
	perl OnAppManagement/script/onappmanagement_populate_storage_templata_data.pl

test:
	prove -IOnAppManagement/lib  OnAppManagement/t/*.t
