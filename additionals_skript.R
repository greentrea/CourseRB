### DEMO

# Get an overview over the dataset
accidents_featurelayer_sf %>% st_drop_geometry() %>%  # Drop the geometry column
  select(
    # AccidentType_de,
    # AccidentSeverityCategory_de,
    # AccidentInvolvingPedestrian,
    # AccidentInvolvingBicycle,
    AccidentInvolvingMotorcycle,
    # RoadType_de,
    # AccidentYear,
    # AccidentMonth_de,
    AccidentWeekDay_de,
    AccidentHour,
    # anz_unfall
  ) %>% tidyr::drop_na() %>% GGally::ggpairs()


## Other examples of Public Living Atlas Datasets
# Save url of Service
firefeature_url <- 'https://services9.arcgis.com/RHVPKKiFTONKtxq3/arcgis/rest/services/Satellite_VIIRS_Thermal_Hotspots_and_Fire_Activity/FeatureServer/0' # Forest  fire

# Connect to feature service
firefeature_urllayer <- arc_open(firefeature_url) # meta data appears in R environment data as a list

# Create a SF object from feature service
firefeature_url_sf <- arc_select(firefeature_urllayer)

plot(st_geometry(firefeature_url_sf))