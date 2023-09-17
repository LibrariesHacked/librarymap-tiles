# Library map tiles

Vector tiles for the library map project


How it works

The library data database at produces a CSV of libraries every night. 

1. Copy the latest CSV file
2. Convert to GeoJSON format using the GDAL tool ogr2ogr
3. Use tippecanoe to convert the GeoJSON to a directory of tiles within ´/libraries/´

This repository is published as a GitHub pages site, which makes the tiles available as static files.


