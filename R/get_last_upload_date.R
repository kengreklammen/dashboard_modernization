library(glue)
library(DBI)
library(RPostgres)

get_last_upload_date <- function(table = "jobseekers_by_age"){
	if(is.null(table) || is.numeric(table)){stop("Missing table name or wrong parameter type!")}
	con <- connect_db()
	sql <- glue::glue_sql("select MAX('Date') from {`table`};", .con = con)
	sql
	DBI::dbExecute(con, "SET search_path TO student_arpad")
	df <- DBI::dbGetQuery(con, sql)
	DBI::dbDisconnect(con)
	#df <- df$max
	df <- as.Date(df$max, format = "%d-%m-%Y")
	if(is.na(df)){df <- as.Date("30-01-2016", format = "%d-%m-%Y")}
	return(df)
}