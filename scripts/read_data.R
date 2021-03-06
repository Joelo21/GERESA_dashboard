# Leer data de Github -----

# Data departamental
read_data_dpto <- function() {
  data_dpto <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source2_siscovid/output/data_regional.csv", keepLeadingZeros = TRUE)
  data_dpto$fecha <- as.Date(data_dpto$fecha)
  data_dpto <- subset(data_dpto, fecha > as.Date("2020-03-12") & fecha < Sys.Date() - 1)
  data_dpto <- mutate(data_dpto, xposi=log10(total_positivo), xini = log10(total_inicio))
  data_dpto <- mutate(data_dpto, posi_molecular_percent = posi_molecular*100)  
  data_dpto <- mutate(data_dpto, posi_antigenica_percent = posi_antigenica*100)  
  
  return(data_dpto)
}

# Data provincial
read_data_prov <- function() {
  data_prov <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source2_siscovid/output/data_provincial.csv", keepLeadingZeros = TRUE)
  data_prov$fecha <- as.Date(data_prov$fecha)
  data_prov <- subset(data_prov, fecha > as.Date("2020-03-12") & fecha < Sys.Date() - 1)
  data_prov <- mutate(data_prov, posi_molecular_percent = posi_molecular*100)
  data_prov <- mutate(data_prov, posi_antigenica_percent = posi_antigenica*100)  
  return(data_prov)
}

# Data distrital
read_data_dis <- function() {
  data_dis <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source2_siscovid/output/data_distrital.csv", keepLeadingZeros = TRUE)
  data_dis$fecha <- as.Date(data_dis$fecha)
  data_dis <- subset(data_dis, fecha > as.Date("2020-03-12") & fecha < Sys.Date() -1)
  data_dis <- mutate(data_dis, IDDIST = ubigeo)
  data_dis <- mutate(data_dis, posi_molecular_percent = posi_molecular*100)  
  data_dis <- mutate(data_dis, posi_antigenica_percent = posi_antigenica*100)  
  
  return(data_dis)

}

# Data de mapa distrital

read_data_map_district <- function() {
  cusco_map_district <- jsonlite::fromJSON("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source4_mapas/districts.geojson", simplifyVector = FALSE)
}


# Data provincial
read_data_prov <- function() {
  data_prov <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source2_siscovid/output/data_provincial.csv", keepLeadingZeros = TRUE)
  data_prov$fecha <- as.Date(data_prov$fecha)
  data_prov <- subset(data_prov, fecha > as.Date("2020-03-12") & fecha < Sys.Date() - 1)
  data_prov <- mutate(data_prov, posi_molecular_percent = posi_molecular*100)
  data_prov <- mutate(data_prov, posi_antigenica_percent = posi_antigenica*100)  
  return(data_prov)
}

# Data camas
read_data_beds <- function() {
  
  data_beds <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source1_camas/output/camas.csv")
  data_beds$fecha <- as.Date(data_beds$fecha)
  data_beds <- mutate(data_beds, UCI_percent = UCI*100)  
  data_beds <- mutate(data_beds, NOUCI_percent = NOUCI*100)  
  data_beds <- mutate(data_beds, NIVELII_percent = NIVELII*100)
  data_beds <- mutate(data_beds, UCIN_percent = UCIN*100)
  return(data_beds)
  
}

# Data Hospitalizados
read_data_hosp <- function() {
  
  data_hosp <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source6_hospitalizados/output/hospitalizados.csv")
  data_hosp$fecha <- as.Date(data_hosp$fecha)
  data_hosp <- mutate(data_hosp, COVID = COVID)  
  data_hosp <- mutate(data_hosp, NO_COVID = NOCOVID)  
  return(data_hosp)
  
}

# Data vacunas proporcion 
# read_data_hvacun <- function() {
#   
#   data_hvacun <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source6_hospitalizados/output/hospitalizados.csv")
#   data_hvacun$fecha <- as.Date(data_hvacun$fecha)
#   data_hvacun <- mutate(data_hosp, COVID = COVID)  
#   data_hvacun <- mutate(data_hosp, NO_COVID = NOCOVID)  
#   return(data_hvacun)
#   
# }

# Data valores semáforo provincial,
read_semaforo <- function() {
  data_semaforo <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source3_semaforo/traffic_light.csv")
}


# Data valores semáforo distrital,
read_semaforo_dis <- function() {
  data_semaforo_dis <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source3_semaforo/traffic_light_distrital.csv")
}


# Data vacunaci�n

read_data_vacunas <- function() {
  data_vacunas <- fread("https://raw.githubusercontent.com/Joelo21/GERESA_dashboard/main/data/source5_vacunas/vacunacion.csv")
  
  str(data_vacunas$fecha)
  data <- xts(x = data_vacunas$vacunados, order.by = data_vacunas$fecha)
  }


