<?php
$redis = new RedisCluster(null, ['redis:6379', 'redis:6378', 'redis:6377']);
var_dump($redis);
var_dump($redis->set("abc", "123"));
var_dump($redis->get("abc"));
