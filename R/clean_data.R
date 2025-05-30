df1 <- df1 %>%
	mutate(
		Date = as.POSIXct(Date, format="%d-%m-%Y", tz="UTC")
	)

df2 <- df2 %>%
	mutate(
		Date = as.POSIXct(Date, format="%d-%m-%Y", tz="UTC")
	)

df3 <- df3 %>%
	mutate(
		Date = as.POSIXct(Date, format="%d-%m-%Y", tz="UTC")
	)

df4 <- df4 %>%
	mutate(
		Date = as.POSIXct(Date, format="%d-%m-%Y", tz="UTC"),
		Age = sub("^\\d+\\.\\s*", "", Age)
	)

df5 <- df5 %>%
	mutate(
		Date = as.POSIXct(Date, format="%d-%m-%Y", tz="UTC"),
		Age = sub("^\\d+\\.\\s*", "", Age)
	)

df6 <- df6 %>% select(Date, Nature_contrat, ROME_metier_libelle, Postes_declares, Stock_postes_vacants)
df6 <- df6 %>%
	mutate(
		Date = as.POSIXct(Date, format="%d-%m-%Y", tz="UTC")
	)

df7 <- df7 %>%
	mutate(
		Date = as.POSIXct(Date, format="%d-%m-%Y", tz="UTC")
	)