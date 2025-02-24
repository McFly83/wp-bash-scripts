#!/bin/bash
# DDEV-Projekt starten
ddev start

# Alle Plugins updaten
ddev wp plugin update --all

# Bestimmte Plugins updaten
PLUGINS=(user-switching duplicate-wp-page-post)

for PLUGIN in "${PLUGINS[@]}"; do
    ddev wp plugin update "$PLUGIN" --activate
done

# Alle Themes updaten
ddev wp theme update --all

# Bestimmte Themes updaten
THEMES=(twentytwentytwo twentytwentythree)

for THEME in "${THEMES[@]}"; do
    ddev wp theme update "$THEME"
done

# WP Core-Update
ddev wp core update

# Plugin Status
ddev wp plugin status

# Theme status
ddev wp theme status

# WP Core Status
ddev wp core status

echo "WordPress Core,  Themes und Plugins wurden erfolgreich aktualisiert!"