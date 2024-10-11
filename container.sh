#!/bin/bash

# shellcheck disable=SC2034
COMMAND=$1

  if [[ $COMMAND == "--start" ]]; then
      docker compose --env-file .env.local up;
  fi
  if [[ $COMMAND == "--restart" ]]; then
      docker compose --env-file .env.local restart;
  fi
  if [[ $COMMAND == "--stop" ]]; then
      docker compose --env-file .env.local stop;
  fi
  if [[ $COMMAND == "--php" ]]; then
      docker compose --env-file .env.local exec -it "php" /bin/bash;
      fi
  if [[ $COMMAND == "--build" ]]; then
      docker compose --env-file .env.install up --build;
      fi
