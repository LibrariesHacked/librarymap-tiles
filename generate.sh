rm -rf tiles
mkdir tiles
tippecanoe --no-tile-compression --output-to-directory tiles data/libraries.geojson
find . -name '*.pbf' -exec sh -c 'mv "$0" "${0%.pbf}.mvt"' {} \;