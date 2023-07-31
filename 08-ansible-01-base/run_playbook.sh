#!/usr/bin/env bash
set -e

DOCKER_COMPOSE_FILE_PATH="/home/andy/netology/git/ansible-netology/08-ansible-01-base/docker-compose/docker-compose.yml"
ANSIBLE_BIN="/home/andy/.local/bin/ansible-playbook"
ANSIBLE_WORK_DIR="/home/andy/netology/git/ansible-netology/08-ansible-01-base/playbook"
VAULT_PASSWORD_FILE_PATH="${ANSIBLE_WORK_DIR}/vault_pass.txt"

docker compose -f ${DOCKER_COMPOSE_FILE_PATH} up -d
${ANSIBLE_BIN} -i "${ANSIBLE_WORK_DIR}/inventory/prod.yml" "${ANSIBLE_WORK_DIR}/site.yml" --vault-password-file "${VAULT_PASSWORD_FILE_PATH}"
docker compose -f ${DOCKER_COMPOSE_FILE_PATH} down