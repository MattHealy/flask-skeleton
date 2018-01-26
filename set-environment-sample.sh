#!/bin/bash
echo "Setting environment variables"
export FLASK_CONFIG=
export FLASK_APP=manage.py
export FLASK_DEBUG=
export DEV_DATABASE_URL=
export STAGING_DATABASE_URL=
export TEST_DATABASE_URL=
export SECRET_KEY=
echo "All done"
