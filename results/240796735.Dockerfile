[app/sources/240796735.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:bf9e05123e5496fe547a63db3bdf92daba9d5c26a271c5eb66fdcb03f8e9baa9" [label="local://context" shape="ellipse"];
  "sha256:d4f7980344f54c9e696b31a831974166205b590cebad27770b6cc25b12826177" [label="copy{src=/etc_redis_redis.conf, dest=/etc/redis/redis.conf}" shape="note"];
  "sha256:272831c21841f38dfe6393c9d32b117b3052d0f3be08eda1eb3bef35a99cbcaf" [label="sha256:272831c21841f38dfe6393c9d32b117b3052d0f3be08eda1eb3bef35a99cbcaf" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:d4f7980344f54c9e696b31a831974166205b590cebad27770b6cc25b12826177" [label=""];
  "sha256:bf9e05123e5496fe547a63db3bdf92daba9d5c26a271c5eb66fdcb03f8e9baa9" -> "sha256:d4f7980344f54c9e696b31a831974166205b590cebad27770b6cc25b12826177" [label=""];
  "sha256:d4f7980344f54c9e696b31a831974166205b590cebad27770b6cc25b12826177" -> "sha256:272831c21841f38dfe6393c9d32b117b3052d0f3be08eda1eb3bef35a99cbcaf" [label=""];
}

