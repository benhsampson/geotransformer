#!/bin/bash

set -e

# Workaround for Docker for Windows in Git Bash.
docker() {
    (
        export MSYS_NO_PATHCONV=1
        "docker.exe" "$@"
    )
}

docker run -it --rm --gpus=all --name=geotransformer -v $(pwd):/user/dev geotransformer
