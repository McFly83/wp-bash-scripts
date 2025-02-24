#!/bin/bash
# DDEV-Projekt starten
ddev start

# Downgrade WP Core
ddev wp core version
ddev wp core update --version=<version>
ddev wp core version

# Downgrade eines bestimmten Plugins
 ddev wp plugin get <plugin-name> --field=version
 ddev wp plugin update <plugin-name> --version=<version>
 ddev wp plugin get <plugin-name> --field=version

