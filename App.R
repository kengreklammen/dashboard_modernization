library(dplyr)

tables <- list("jobseekers_by_age", "jobseekers_by_age_duree", "jobseekers_by_nationality", "jobseekers_by_mesure", "jobseekers_by_idemnisee", "joboffers_detailed", "joboffers_simple")

source("R/connect_db.R")
source("R/get_last_upload_date.R")

source("R/fetch_data.R")

source("R/clean_data.R")
df_list <- list(df1, df2, df3, df4, df5, df6, df7)

source("R/filtering_data.R")

source("R/upload_data_to_db.R")
