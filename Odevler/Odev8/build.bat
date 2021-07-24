@echo off

psql -U postgres -d dvdrental -f createdb.sql -f datas.sql

color 02
echo Islem Tamam!

PAUSE>nul