library(glue)
library(DBI)
library(RPostgres)

con <- connect_db()

DBI::dbExecute(con, "SET search_path TO student_arpad")

DBI::dbExecute(con, "DROP TABLE IF EXISTS jobseekers_by_age")
DBI::dbExecute(con, "DROP TABLE IF EXISTS jobseekers_by_age_duree")
DBI::dbExecute(con, "DROP TABLE IF EXISTS jobseekers_by_nationality")
DBI::dbExecute(con, "DROP TABLE IF EXISTS jobseekers_by_mesure")
DBI::dbExecute(con, "DROP TABLE IF EXISTS jobseekers_by_idemnisee")
DBI::dbExecute(con, "DROP TABLE IF EXISTS joboffers_detailed")
DBI::dbExecute(con, "DROP TABLE IF EXISTS joboffers_simple")

DBI::dbDisconnect(con)