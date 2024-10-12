# Docker Symfony Installer

## Run install symfony:

### Unix system
  ```
  sudo chmod +x ./container 
  ```
  ```
  ./container --build --aditional-flag(if nessesary)
  ```
### Windows

```
docker compose --env-file .env.install up --build
```

## Use

Don't  forget </red> remove Symfony-installer from docker-compose.yaml file

### Unix system
  ```
  ./container --start --aditional-flag(if nessesary)
  ```
### Windows
```
docker compose --env-file .env.install up
```

## Aditional commands for unix system 
### Stop all containers
```
./container --stop 
```
### Restart all containers
```
./container --restasrt  
```
### Connect to bash of container
```
./container --connect container_name 
```
### Kill all containers from list
 *Example: "nginx php postgres"Example: "nginx php postgres"*
```
./container --kill "containers_list"  
```
### Remove all containers from list
*Example: "nginx php postgres"*
```
./container --remove "containers_list"
```