.PHONY: test reset-db clean-db reset-db populate-db-templates create-db-snapshot restore-db-from-snapshot

clean-db:
	rm -f db/*.sqlite3

reset-db: clean-db
	sqlite3 db/onapp.sqlite3 < sql/onapp.sql
	sqlite3 db/onapp.sqlite3 < sql/static/onapp.user.sql

populate-db-templates: reset-db
	./OnAppManagement/script/onappmanagement_populate_storage_templata_data.pl

dummy-data:
	sqlite3 db/onapp.sqlite3 < sql/static/onapp.dummy.sql

create-db-snapshot:
	sqlite3  db/onapp.sqlite3 .dump | tee db-snapshots/onapp.sql

restore-db-from-snapshot: clean-db
	sqlite3 db/onapp.sqlite3 < db-snapshots/onapp.sql

regenerate-schema:
	./OnAppManagement/script/onappmanagement_create_localdb_schema.sh

test:
	prove -IOnAppManagement/lib  OnAppManagement/t/*.t
