# Library map tiles

Vector tiles for the library map project.

## How it works

The [LibraryData database](https://github.com/LibrariesHacked/librarydata-db) produces a CSV of libraries every night. The [LibraryData API](https://github.com/LibrariesHacked/api-librarydata) also exposes the library locations as GeoJSON. This repository contains scripts that will extract this GeoJSON on a nightly basis and convert it into static vector tiles.

Those vector tiles are then available as [Mapbox Vector Tiles](https://github.com/mapbox/vector-tile-spec) for use in web maps.

The process is as follows:

1. Download the latest GeoJSON from the LibraryData API (see `download_libraries.py`).
2. Use tippecanoe to convert the GeoJSON to a directory of static tiles within the `\libraries` directory (see `generate.sh`)

This repository is published as a GitHub pages site, which makes the tiles available in high performance web hosting. 

## How to use

These tiles are made available via GitHub pages and a custom domain. They are available at `https://tiles.librarydata.uk/libraries/{z}/{x}/{y}.mvt`

## Licence

The tiles are from data compiled by the public and by public library services. They are licensed under the [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

Code in this repository is available under the [MIT Licence](LICENSE).
