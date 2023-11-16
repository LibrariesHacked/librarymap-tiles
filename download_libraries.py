""" Download the geojson file from the librarydata.uk API and save it to the data directory. """

import json
import os
import requests

GEOJSON_URL = 'https://api.librarydata.uk/libraries?limit=5000'


def download_geojson():
    """Download the geojson file and return the json data."""

    # Set the Accepts header to application/geo+json
    headers = {"Accept": "application/geo+json"}
    response = requests.get(GEOJSON_URL, headers=headers, timeout=10)
    return response.json()


def save_geojson(data):
    """Save the geojson data to the data directory."""

    # Create the data directory if it doesn't exist
    if not os.path.exists('data'):
        os.makedirs('data')

    # Save the geojson file
    with open('data/libraries.geojson', 'w', encoding='utf-8') as f:
        json.dump(data, f)


geojson = download_geojson()
save_geojson(geojson)
