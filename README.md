# Library map tiles

Vector tiles for the library map project

## How it works

The LibraryData database produces a CSV of libraries every night. The LibraryData API also exposes the library locations as GeoJSON. This repository contains scripts that can extract this GeoJSON on a regular basis and convert it into vector tiles.

1. Download the latest GeoJSON from the LibraryData API
2. Use tippecanoe to convert the GeoJSON to a directory of tiles within `\tiles` selecting a subset of the properties

This repository is published as a GitHub pages site, which makes the tiles also available as a static web service.

## How to use

These tiles are made available via GitHub pages and a custom domain. They are available at https://librarytiles.librarydata.uk/tiles/{z}/{x}/{y}.pbf

## Data licence

The tiles are from data compiled by the public and by public library services. They are licensed under the [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).
