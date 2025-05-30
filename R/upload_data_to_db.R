# Upload the differential data from each data frame based to the database.
for (table in tables) {
	last_update <- get_last_upload_date(table)
	print(last_update)
	i <- which(tables == table)
	print(i)
	df_list[[i]] <- df_list[[i]] %>% filter(Date <= last_update)

	result <- tryCatch({
		con <- connect_db()
		#sql <- glue::glue_sql("insert into {`table`}(user_id, query) values({user_id}, {query});", .con = con)
		DBI::dbExecute(con, "SET search_path TO student_arpad")
		DBI::dbWriteTable(con, table, df_list[[i]], append = TRUE, row.names = FALSE)
		#df <- DBI::dbExecute(con, sql)
		DBI::dbDisconnect(con)

	}, error = function(e) {
		message("Couldn't insert the data into the database: ", e$message)
	})

}
	
print("Finished uploading the data.")
