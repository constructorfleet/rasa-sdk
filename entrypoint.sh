#!/bin/bash

set -Eeuo pipefail

function print_help {
    echo "Available options:"
    echo " start        - Start Rasa Action Server"
    echo " install_deps - Install dependencies for detected actions"
    echo " help         - Print this help"
    echo " run          - Run an arbitrary command inside the container"
}

case ${1} in
    start)
        exec python -m rasa_sdk "${@:2}"
        ;;
    install_deps)
        ;;
    run)
        exec "${@:2}"
        ;;
    *)
        print_help
        ;;
esac
