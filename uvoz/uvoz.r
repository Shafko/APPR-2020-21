# 2. faza: Uvoz podatkov

library(rjson)
library(dplyr)

data <- fromJSON(file="podatki/eng.json")

tabela <- lapply(data$teamTableStats,
                 . %>% lapply(. %>% { ifelse(is.null(.), NA, .) }) %>% # poskrbimo za manjkajoče podatke
                   as.data.frame()) %>% bind_rows() %>%
                   select(-tournamentId,-tournamentRegionId,-isOpta,-tournamentRegionCode,-regionCode,-teamId,-teamRegionName,-seasonName,-seasonId,-ranking)


data2 <- fromJSON(file="podatki/ita.json")

tabela2 <- lapply(data2$teamTableStats,
                 . %>% lapply(. %>% { ifelse(is.null(.), NA, .) }) %>% # poskrbimo za manjkajoče podatke
                   as.data.frame()) %>% bind_rows() %>%
                   select(-tournamentId,-tournamentRegionId,-isOpta,-tournamentRegionCode,-regionCode,-teamId,-teamRegionName,-seasonName,-seasonId,-ranking)


data3 <- fromJSON(file="podatki/spa.json")

tabela3 <- lapply(data3$teamTableStats,
                  . %>% lapply(. %>% { ifelse(is.null(.), NA, .) }) %>% # poskrbimo za manjkajoče podatke
                    as.data.frame()) %>% bind_rows() %>%
                    select(-tournamentId,-tournamentRegionId,-isOpta,-tournamentRegionCode,-regionCode,-teamId,-teamRegionName,-seasonName,-seasonId,-ranking)


data4 <- fromJSON(file="podatki/ger.json")

tabela4 <- lapply(data4$teamTableStats,
                  . %>% lapply(. %>% { ifelse(is.null(.), NA, .) }) %>% # poskrbimo za manjkajoče podatke
                    as.data.frame()) %>% bind_rows() %>%
                    select(-tournamentId,-tournamentRegionId,-isOpta,-tournamentRegionCode,-regionCode,-teamId,-teamRegionName,-seasonName,-seasonId,-ranking)


data5 <- fromJSON(file="podatki/fra.json")

tabela5 <- lapply(data5$teamTableStats,
                  . %>% lapply(. %>% { ifelse(is.null(.), NA, .) }) %>% # poskrbimo za manjkajoče podatke
                    as.data.frame()) %>% bind_rows() %>%
                    select(-tournamentId,-tournamentRegionId,-isOpta,-tournamentRegionCode,-regionCode,-teamId,-teamRegionName,-seasonName,-seasonId,-ranking)


