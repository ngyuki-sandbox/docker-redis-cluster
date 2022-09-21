
```sh
docker compose up
docker compose exec php redis-cli -h redis -c
  set abc 123
  get abc
exit
docker compose exec -T php php < z.php
```
