#!/bin/bash
set -e

export PHPBREW_SET_PROMPT=1
source $HOME/.phpbrew/bashrc
phpbrew use $PHP_VERSION

php -v

# ant

exec "$@"
