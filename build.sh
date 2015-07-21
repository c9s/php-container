#!/bin/bash
set -e

echo "Sourcing phpbrew bashrc..."
source $HOME/.phpbrew/bashrc

echo "Using ${PHP_VERSION}..."
phpbrew use ${PHP_VERSION}

php -v

exec "$@"
