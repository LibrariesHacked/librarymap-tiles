rm -rf tiles
mkdir tiles
tippecanoe -r1 --no-tile-compression --output-to-directory libraries data/libraries.geojson
find . -name '*.pbf' -exec sh -c 'mv "$0" "${0%.pbf}.mvt"' {} \;
