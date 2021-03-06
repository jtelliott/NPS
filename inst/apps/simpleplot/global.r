# global.r is evaluated using the source() function and stored as global objects in the parent environment

# This is a good place to call libraries 
# NEVER NEVER NEVER INSTALL.PACKAGES() IN THE GLOBAL.R
# because someone using this on the web will fail

# you can also call custom-functions here 
library(ggplot2)
library(shiny)
library(shinythemes)
library(NPS)
library(ggmap)
library(parcoords)
#library(choroplethr)
#library(choroplethrMaps)
#library(readxl)
#dataSource <- read_excel("..\\dataSource.xlsx", sheet = "CONUS Data", range = "c3:iq514")
#devtools::use_data(dataSource, overwrite = TRUE)

# myenv <- new.env()
# 
# data('dataSource', envir = myenv)
# data('cleandata', envir = myenv)

# 
data('dataSource')
data('cleandata')

#May be needed--from Maj Freels
# dataSource <- as.data.frame(get('dataSource', envir = myenv))
# cleandata <- as.data.frame(get('cleandata', envir = myenv))
 dataSource <- data.frame(dataSource)
cleandata <- data.frame(cleandata)



   dataSource$LCLUCI.labels <-
   factor(
     dataSource$LCLUCI,
     levels = c(11,	12,	21,	22,	23,	31,	41,	42,	52,	71,	81,	82,	90,	95),
     labels = c(
       "Open Water",             #HEX   486da2
       "Perennial Ice/Snow",     #      e7effc
       "Developed (Low Intensity)", #   dc9881
       "Developed (Medium Intensity)",# f10100
       "Developed (High Intensity)", #  ab0101
       "Barren Land (Rock/Sand/Clay)", # b3afa4
       "Deciduous Forest",             #6ba966
       "Evergreen Forest",             #1d6533
       "Shrub/Scrub",                  #d1bb82
       "Grassland/Herbaceous",          #edeccd
       "Pasture/Hay",                   #ddd83e
       "Cultivated Crops",              #ae7229
       "Woody Wetlands",                #bbd7ed
       "Emergent Herbaceous Wetland"     #71a4c1
     )
   )
   
  
 
 
 
 
 # Add the park full NAMES to dataSource  ----
 dataSource$park.labels <-
   factor(
     dataSource$park,
     levels = c('ACAD', 'AGFO','ARCH','BADL','BAND','BITH','BLMNV','BRCA','CAHA',
                'CALO','CANY','CEBR','CIRO', 'CITY',  ' COLM','DEPO','DETO','DEVA','DINO',
                'ELMA','ELMO','EVER','FODO','FOLA','FORA','GLAC','GLCA','GOGA','GRBA',
                'GRCA','GRTE','GRKO','GRSA','GRSM','GUIS','HOME','ISRO','KIMO','LAKE',
                'LAME','LAMR','LIBI','MIMA','MOCA','MOJA','MONO','MORA','MORU','MUWO',
                'NOCA','OLYM','ORPI','OZAR','PEFO','PETR','PIPE','PIRO','ROCR','ROMO',
                'SAAN','SACN','SAGU','SAND','SEKI','THRO','TUZI','VICK','WRBR','WUPA',
                'YELL','YOSE','ZION'
     ),
     labels = c('Acadia','Agate Fossil Beds','Arches','Badlands','Bandelier','Big Thicket',
                'BLMNV','Bryce Canyon','Cape Hatteras','Cape Lookout','Canyonlands',
                'Cedar Breaks','City of Rocks', 'Dayton, OH (not an NPS site)', 'Colorado National Monument',
                'Devils Postpile','Devils Tower','Death Valley','Dinosaur National Monument',
                'El Malpais','El Morro','Everglades','Fort Donelson',
                'Fort Laramie','Fort Raleigh','Glacier National Park','Glen Canyon',
                'Golden Gate','Great Basin','Grand Canyon','Grand Teton',
                'Grant-Kohrs Ranch','Great Sand Dunes','Great Smoky Mountains',
                'Gulf Islands','Homestead','Isle Royale','Kings Mountain','Lake Mead',
                'Lake Mead2','Lake Meredith','Little Bighorn','Minute Man',
                'MontezumaCastle','Mojave','Monocacy','Mount Rainier','Mount Rushmore',
                'Muir Woods','North Cascades','Olympic','Organ Pipes','Ozark',
                'Petrified Forest','Petroglyphs','Pipestone','Pictured Rocks',
                'Rock Creek','Rocky Mountain','San Antonio Missions','Saint Croix',
                'Saguaro','Sand Creek','Sequoia and Kings Canyon','Theodore Roosevelt',
                'Tuzigoot','Vicksburg','Wright Brothers National Monument',
                'Wupatki','Yellowstone','Yosemite','Zion'
     )
   )
 
 
 
 
 # # Add the park full NAMES to cleandata  ----
 cleandata$park.labels <-
   factor(
     cleandata$park,
     levels = c('ACAD', 'AGFO','ARCH','BADL','BAND','BITH','BLMNV','BRCA','CAHA',
                'CALO','CANY','CEBR','CIRO', 'CITY',  'COLM','DEPO','DETO','DEVA','DINO',
                'ELMA','ELMO','EVER','FODO','FOLA','FORA','GLAC','GLCA','GOGA','GRBA',
                'GRCA','GRTE','GRKO','GRSA','GRSM','GUIS','HOME','ISRO','KIMO','LAKE',
                'LAME','LAMR','LIBI','MIMA','MOCA','MOJA','MONO','MORA','MORU','MUWO',
                'NOCA','OLYM','ORPI','OZAR','PEFO','PETR','PIPE','PIRO','ROCR','ROMO',
                'SAAN','SACN','SAGU','SAND','SEKI','THRO','TUZI','VICK','WRBR','WUPA',
                'YELL','YOSE','ZION'
     ),
     labels = c('Acadia','Agate Fossil Beds','Arches','Badlands','Bandelier','Big Thicket',
                'BLMNV','Bryce Canyon','Cape Hatteras','Cape Lookout','Canyonlands',
                'Cedar Breaks','City of Rocks', 'Dayton, OH (not an NPS site)', 'Colorado National Monument',
                'Devils Postpile','Devils Tower','Death Valley','Dinosaur National Monument',
                'El Malpais','El Morro','Everglades','Fort Donelson',
                'Fort Laramie','Fort Raleigh','Glacier National Park','Glen Canyon',
                'Golden Gate','Great Basin','Grand Canyon','Grand Teton',
                'Grant-Kohrs Ranch','Great Sand Dunes','Great Smoky Mountains',
                'Gulf Islands','Homestead','Isle Royale','Kings Mountain','Lake Mead',
                'Lake Mead2','Lake Meredith','Little Bighorn','Minute Man',
                'MontezumaCastle','Mojave','Monocacy','Mount Rainier','Mount Rushmore',
                'Muir Woods','North Cascades','Olympic','Organ Pipes','Ozark',
                'Petrified Forest','Petroglyphs','Pipestone','Pictured Rocks',
                'Rock Creek','Rocky Mountain','San Antonio Missions','Saint Croix',
                'Saguaro','Sand Creek','Sequoia and Kings Canyon','Theodore Roosevelt',
                'Tuzigoot','Vicksburg','Wright Brothers National Monument',
                'Wupatki','Yellowstone','Yosemite','Zion'
               )
   )
 # 
 #'@title spatialData function
 #'
 #'@description
 #'A function to take a latitude and longitude of selected sites and display using ggmap
 #'
 #'@docType function
 #'@name spatialDataAnalysis
 #'@format a \code{function} 
 #'
 #'\describe{
 #'\item{latitude}{is a latitude}
 #'\item{longitude}{is a longitude}
 #'}
 #'@import ggmap 
 
 # spatialData(data = rv$Data, selected= input$plot_brush, maptype = input$MapType, zoom = input$Zoom)
 
 spatialData <- function(data, MapType, Zoom = 3, selected= 1) {
    #Default to Overview Map if nothing is selected   
    #Center the map around ______ 
    
   
     if(selected ==  1){      
       map_1 <- get_map(location = "US", maptype = MapType, zoom = 4, source = ifelse(MapType == "toner", "stamen", "google"))
       
       ggmap::ggmap(map_1, 
              base_layer = ggplot(data, aes(x = Longitude, y = Latitude, label = park))) + 
             geom_label(aes(color = LCLUCI.labels)) #+ 
  #            geom_text(check_overlap = TRUE) 
       }else{
         
         data2 <- data[1,]
         
        Location = c("lat" =  data2[Latitude], "lon" = data2[Longitude])
         
     map_2 <- get_map(location = Location,  maptype = MapType, zoom = "auto", scale = "auto", source = ifelse(MapType == "toner", "stamen", "google"))
     
        ggmap::ggmap(map_2, extent = "device",                  
                     base_layer = ggplot(data, aes(x = Longitude, y = Latitude, label = park))) + 
          geom_label(aes(color = LCLUCI.labels)) + 
        geom_text(check_overlap = TRUE)      +   
        geom_point(aes(color = park.labels), alpha = 0.8)  + 
          facet_wrap(facets = ~LCLUCI.labels)
       }

}
 # 
 # 
 