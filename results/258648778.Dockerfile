[app/sources/258648778.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:ddba87186ed9e69ad1a7bdd3027956103fd6cf9d42065891d6794fe813122cb8" [label="mkdir{path=/data}" shape="note"];
  "sha256:52403c6e852fa28dfbcc3b46884eecb801349a0823d55e089a5bab22dbc778cb" [label="local://context" shape="ellipse"];
  "sha256:eec893de7a4a98314ce2d425743322e2740f062aed4d73459e7d157cfe84a794" [label="copy{src=/etc_redis_redis.conf, dest=/etc/redis/redis.conf}" shape="note"];
  "sha256:0d852b41e7fffc211ef0491f4ef2ec724a44c10e29f1eb0e18a015513def11a5" [label="sha256:0d852b41e7fffc211ef0491f4ef2ec724a44c10e29f1eb0e18a015513def11a5" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:ddba87186ed9e69ad1a7bdd3027956103fd6cf9d42065891d6794fe813122cb8" [label=""];
  "sha256:ddba87186ed9e69ad1a7bdd3027956103fd6cf9d42065891d6794fe813122cb8" -> "sha256:eec893de7a4a98314ce2d425743322e2740f062aed4d73459e7d157cfe84a794" [label=""];
  "sha256:52403c6e852fa28dfbcc3b46884eecb801349a0823d55e089a5bab22dbc778cb" -> "sha256:eec893de7a4a98314ce2d425743322e2740f062aed4d73459e7d157cfe84a794" [label=""];
  "sha256:eec893de7a4a98314ce2d425743322e2740f062aed4d73459e7d157cfe84a794" -> "sha256:0d852b41e7fffc211ef0491f4ef2ec724a44c10e29f1eb0e18a015513def11a5" [label=""];
}

