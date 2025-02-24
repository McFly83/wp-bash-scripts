#!/bin/bash
# DDEV-Projekt starten
ddev start

# Installation von WordPress
ddev wp core download
#ddev wp core config --dbname=db --dbuser=db --dbpass=db --dbhost=ddev-wp-theme-dev-db --dbprefix=wp_
#ddev wp db create
ddev wp core install --url="https://wp-theme-dev.ddev.site" --title="WP-Theme" --admin_user="admin" --admin_password="test" --admin_email="mj@studio9.de"

# Plugins installieren
PLUGINS=(user-switching duplicate-wp-page-post)

for PLUGIN in "${PLUGINS[@]}"; do
    ddev wp plugin install "$PLUGIN" --activate
done

# Plugins deinstallieren
PLUGINS=(hello akismet)
for PLUGIN in "${PLUGINS[@]}"; do
  ddev wp plugin deactivate "$PLUGIN"
  ddev wp plugin delete "$PLUGIN"
done

# Theme deinstallieren
THEMES=(twentytwentytwo twentytwentythree)
for THEME in "${THEMES[@]}"; do
  ddev wp theme delete "$THEME"
done

# Plugin Status
ddev wp plugin status

# Theme status
ddev wp theme status

# WP Core Status
ddev wp core status

echo "WordPress und Plugins wurden erfolgreich installiert und eingerichtet!"