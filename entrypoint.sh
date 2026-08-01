#!/bin/sh

if [ ! -f /usr/local/app/my-project/mkdocs.yml ]; then
    cp -r /usr/local/app/template/* /usr/local/app/my-project/
fi

exec "$@"