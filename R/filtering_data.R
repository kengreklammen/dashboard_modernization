# Filtering each data frame based on the latest update date in the database.
for (table in tables) {
	last_update <- get_last_upload_date(table)
	print(last_update)
	i <- which(tables == table)
	print(i)
	df_list[[i]] <- df_list[[i]] %>% filter(Date <= last_update)
	#View(df_list[[i]])
}