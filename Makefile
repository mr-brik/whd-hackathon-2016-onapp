.phony: reset-db

reset-db:
	sqlite3 db/onapp.sqlite3 < sql/onapp.sql

test:
	prove -IOnAppManagement/lib  OnAppManagement/t/*.t
