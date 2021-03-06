% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{cleandata}
\alias{cleandata}
\title{Description of National Park Service (NPS) data}
\format{a \code{data frame} 
\describe{
\item{siteID}{a unique alpha numeric identifier for the site.  example GOGA001 is Golden Gates Bridge Park in California, site 1}
\item{Season}{Fall, Spring, Winter, or Summer	} 
\item{	region	}{	All data was CONUS but more data should be added from Hawaii and Alaska	}
\item{	park	}{	Location of site	}
\item{	type	}{	Park or City	}
\item{	firstYear	}{	Year recording began	}
\item{	nYears	}{	Years spanning recording	}
\item{	nHours	}{	Recorded hours	}
\item{	Latitude	}{		}
\item{	Longitude	}{		}
\item{	Elevation	}{	Distance above sea level 	}
\item{	Slope	}{	Rate of change of elevation	}
\item{	Barren 200m	}{	 barren land 	}
\item{	Cultivated 200m 	}{	 cultivated 	}
\item{	Developed 200m 	}{	 developed land 	}
\item{	Forest 200m	}{	  forest land cover 	}
\item{	Deciduous 200m 	}{	  deciduous forest land cover 	}
\item{	Evergreen 200m 	}{	   evergreen forest land cover 	}
\item{	Mixed 200m 	}{	  mixed forest land cover 	}
\item{	Herbaceous 200m	}{	  herbaceous land cover 	}
\item{	Shrubland 200m 	}{	  shrubland land cover 	}
\item{	Snow 200m	}{	 snow land cover 	}
\item{	Wetlands 200m	}{	  wetlands land 	}
\item{	WaterOnly 200m	}{	  water land cover 	}
\item{	WaterNat 200m 	}{	  landuse natural water 	}
\item{	WaterHum 200m 	}{	  landuse human modified water 	}
\item{	Wet 200m 	}{	 landuse wetlands 	}
\item{	RecCon 200m 	}{	  landuse recreation and conservation 	}
\item{	Timber 200m 	}{	 extractive land use timber harvesting 	}
\item{	Grazing 200m 	}{	extractive land use livestock grazing	}
\item{	Pasture 200m 	}{	 extractive land use pasture 	}
\item{	Cropland 200m	}{	  extractive land use cropland 	}
\item{	ExurbanHigh 200m 	}{	  built land use exurban high 	}
\item{	ExurbanLow 200m	}{	  built land use exurban low 	}
\item{	Suburban 200m	}{	  built land use residential suburban 	}
\item{	UrbanLow 200m 	}{	  built land use residential urban 	}
\item{	UrbanHigh 200m 	}{	  built land use residential urban high 	}
\item{	Commercial 200m	}{	  built land commercial 	}
\item{	Industrial 200m 	}{	  built land use industrial 	}
\item{	Institutional  200m 	}{	  land use institutional 	}
\item{	Transportation 200m 	}{	  land transportation 	}
\item{	Extractive 200m 	}{	 extractive land use class  	}
\item{	Built 200m 	}{	 built land use class  	}
\item{	DistAirportsAllMotorized	}{	Distance to motorized airports	}
\item{	DistAirportsSeaplane	}{	Distance to all airports and seaplane bases only 	}
\item{	DistCoast	}{	 Distance to National Hydrology Dataset (10 mile AOA) &	}
\item{	DistHeliports	}{	Distance to heliports only	}
\item{	DistHighAirports	}{	& Distance to airport with over 1M enplanements &	}
\item{	DistLowAirports	}{	 Distance to airports with greater than 5K enplanements &	}
\item{	DistMilitary	}{	  Distance to nearest military flight path (25 mile AOA) &	}
\item{	DistModerateAirports	}{	 Distance to all airports with greater than 250K 	 enplanements	} 	
\item{	DistRailroads	}{	Euclidean distance to National Atlas 	}
\item{	DistRoadsAll	}{	Distance to nearest road (all roads) m	}
\item{	DistRoadsMajor	}{	Point Distance to nearest road (major roads)	}
\item{	DistStrahlerCalgt1	}{	 Distance to NHD Plus flowline with a SC stream order greater than 1 }
\item{	DistStrahlerCalgt3	}{	  Distance to NHD Plus flowline with a SC stream order greater than 3	}
\item{	DistStrahlerCalgt4	}{	 Distance to NHD Plus flowline with a SC stream order greater than 4}
\item{	DistStreamsAny	}{	Distance to closest stream	}
\item{	DistWaterbody	}{	Distance to waterbody (10 mile AOA)	}
\item{	FlightFreq25Mile	}{	Sum of weekly flight observations (25 mile AOA)	}
\item{	MilitarySum_25miles	}{	 Sum of designated military flight paths (25 mile AOA) 	}
\item{	RddAll5km	}{	Sum of road density all roads (5 mile AOA)	}
\item{	RddAllPt	}{	Sum of road density all roads (5 km AOA)	}
\item{	RddMajor5km	}{	Sum of road density all roads(5 km AOA)	}
\item{	RddMajorPt	}{	Sum of road density major roads (5 km AOA)	}
\item{	RddWeighted5km	}{	Sum of road density weighted roads (5 km AOA)	}
\item{	RddWeightedPt	}{	Sum of road density weighted roads (5 km AOA)	}
\item{	PPTNorms	}{	Average yearly precipitation 	}
\item{	PPTSummer	}{	Average summer precipitation	}
\item{	TAVGNorms	}{	 Average yearly temperature	}
\item{	TAVGSummer	}{	Average summer yearly temperature	}
\item{	TDEWAvgSummer	}{	Average summer dew point temperature 	}
\item{	TDEWNorms	}{	Average yearly dew point temperature	}
\item{	TPI	}{	Ordinal bin of TPIRaw	}
\item{	TPIRaw	}{	Topographic Position raw value.	}
\item{	Wilderness	}{	Sum of designated wilderness	}
\item{	Wind_CRU	}{	Wind power class potential density (50m AOA)	}
\item{ L90f1 }{	The first one third octave band frequency on L90 band of thirty-three 	}
\item{ L50f1 }{	The first one third octave band frequency on L50 band of thirty-three 	}
\item{ L10f1 }{	The first one third octave band frequency on L10 band of thirty-three 	}
\item{ LeqdBA }{	The equivalent noise level 	}
\item{ Ldn }{	The day-night equivalent noise level 	}
\item{ LeqdBAh1 }{	The first hour equivalent dBA level 	}
}
#'\source{More data about the original  values can be found looking at the NPS description of variables from the NPS Report "Explanatory Variable Generation for Geospatial Sound Modeling" available on the Natural Resource Publications Management website (http://www.nature.nps.gov/publications/nrpm/) search for ''Explanatory variable generation for geospatial soundscape modeling: Standard operating procedure. Natural Resource Report. Natural Resource Report NPS / NRSS / NRR - 2015 / 936'' by Lisa Nelson, Michelle Kinseth, and Thomas Flowe.: \url{http://www.nature.nps.gov/publications/nrpm/} }}
\usage{
cleandata
}
\description{
A dataset with imputed values for the original NPS data (received approximately 2016)
}
\keyword{datasets}
