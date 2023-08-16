#!/bin/bash
docker_username_lower=$(echo "$docker_username" | tr '[:upper:]' '[:lower:]')
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username_lower}/"
docker_username="${DockerRepo}" docker-compose -f performance-test/docker-compose.yml --project-directory . -p ci up --build --exit-code-from test