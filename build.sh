#!/bin/bash
# set -e
echo "Shell: " $SHELL

echo "Sourcing phpbrew bashrc..."
source $HOME/.phpbrew/bashrc

if [[!-e bin/phpbrew ]] ; then
    echo "Using ${PHP_VERSION}..."
    phpbrew use ${PHP_VERSION}
fi

php -v

exec "$@"
