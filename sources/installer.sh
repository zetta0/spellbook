#!/bin/bash

set -e

source aptinstalls.sh
source goinstalls.sh


if [ $# -eq 0]; then
	echo "Usage: $O <function name> [args...]"
	exit 1
fi

FUNCTION_NAME="$1"
shift
FUNCTION_ARGS="$@"

if ! declare -F "$FUNCTION_NAME" > /dev/null; then
	echo "Error: Function '$FUNCTION_NAME' not found."
	exit 1
fi

echo "Running: $FUNCTION_NAME $FUNCTION_ARGS"
$FUNCTION_NAME $FUNCTION_ARGS
