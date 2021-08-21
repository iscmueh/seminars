source("postgresql-connection.R")

df <- dbGetQuery(con, "select id as id, geom, ST_Area(geom,false)/1000000 as area, tongdans01/(ST_Area(geom,false)/1000000) as density 
from communes")
print(df)



library(raster)

x <- shapefile('HCMC_Communes.shp')
crs(x)
a <- area(x) / 1000000

library(terra)
x <- vect('HCMC_Communes.shp')
b <- expanse(x) / 1000000

