rm -rf tiles
mkdir tiles
tippecanoe -r1 --no-tile-compression --output-to-directory --drop-densest-as-needed --no-tile-size-limit libraries data/libraries.geojson --force
find . -name '*.pbf' -exec sh -c 'mv "$0" "${0%.pbf}.mvt"' {} \;
