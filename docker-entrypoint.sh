#!/bin/sh
# Copyright 2017 LasLabs Inc.
# License MIT (https://opensource.org/licenses/MIT).

set -e

# Add command if needed
if [ "${1:0:1}" = '-' ]; then
	set -- my_command "$@"
fi

# As argument is not related to command,
# then assume that user wants to run their own process,
# for example a `bash` shell to explore this image
exec "$@"
