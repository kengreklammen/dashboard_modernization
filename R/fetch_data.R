

# Demandeurs d'emploi résidents disponibles par classe d'âge détaillée
df1 <- rio::import("https://data.public.lu/fr/datasets/r/d8631d6c-71a4-4791-8504-aab29451d6f2", encoding = "Latin-1")

# Demandeurs d'emploi résidents disponibles par âge et durée d'inscription
df2 <- rio::import("https://data.public.lu/fr/datasets/r/a41b3377-1071-4b17-ac78-47f596897b53", encoding = "Latin-1")

# Demandeurs d'emploi résidents disponibles par nationalité
df3 <- rio::import("https://data.public.lu/fr/datasets/r/2b3ca540-9131-4d95-bf1a-a21d9b75b225", encoding = "Latin-1")

# Demandeurs d'emploi en mesure
df4 <- rio::import("https://data.public.lu/fr/datasets/r/8cfcdd92-f26d-46e8-bcc3-e2bc9fb8b557", encoding = "Latin-1")

# Demandeurs d'emploi indemnisés
df5 <- rio::import("https://data.public.lu/fr/datasets/r/bf01e691-d3ca-4889-adaa-d2db86d5688b", encoding = "Latin-1")

# Offres - séries détaillées
df6 <- rio::import("https://data.public.lu/fr/datasets/r/82415dc2-520e-4e93-b07e-74f0c85039ec", encoding = "Latin-1")

# Offres - séries longues
df7 <- rio::import("https://data.public.lu/fr/datasets/r/eb98a7a3-4ce5-4f36-9cf4-13a5e267b806", encoding = "Latin-1")