library(rio)

# Demandeurs d'emploi résidents disponibles par classe d'âge détaillée
ds1 <- rio::import("https://data.public.lu/fr/datasets/r/d8631d6c-71a4-4791-8504-aab29451d6f2", encoding = "Latin-1")

# Demandeurs d'emploi résidents disponibles par âge et durée d'inscription
ds2 <- rio::import("https://data.public.lu/fr/datasets/r/a41b3377-1071-4b17-ac78-47f596897b53", encoding = "Latin-1")

# Demandeurs d'emploi résidents disponibles par nationalité
ds3 <- rio::import("https://data.public.lu/fr/datasets/r/2b3ca540-9131-4d95-bf1a-a21d9b75b225", encoding = "Latin-1")

# Demandeurs d'emploi en mesure
ds4 <- rio::import("https://data.public.lu/fr/datasets/r/8cfcdd92-f26d-46e8-bcc3-e2bc9fb8b557", encoding = "Latin-1")

# Demandeurs d'emploi indemnisés
ds5 <- rio::import("https://data.public.lu/fr/datasets/r/bf01e691-d3ca-4889-adaa-d2db86d5688b", encoding = "Latin-1")


View(ds1)
View(ds2)
View(ds3)
View(ds4)
View(ds5)
