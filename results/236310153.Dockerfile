[app/sources/236310153.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:ddba87186ed9e69ad1a7bdd3027956103fd6cf9d42065891d6794fe813122cb8" [label="mkdir{path=/data}" shape="note"];
  "sha256:15f23d6f51552804f2df3d582087822f3e3ff32588f0bce95bca2882b121fce3" [label="local://context" shape="ellipse"];
  "sha256:238162e266019081a5b86acd44026fa410a55c5275d8e428aea5bcc3c98ade28" [label="copy{src=/etc_redis_redis.conf, dest=/etc/redis/redis.conf}" shape="note"];
  "sha256:7bd39afb5344fd788191a057f076e75eb05f94f43e81109f8f512d340add4575" [label="sha256:7bd39afb5344fd788191a057f076e75eb05f94f43e81109f8f512d340add4575" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:ddba87186ed9e69ad1a7bdd3027956103fd6cf9d42065891d6794fe813122cb8" [label=""];
  "sha256:ddba87186ed9e69ad1a7bdd3027956103fd6cf9d42065891d6794fe813122cb8" -> "sha256:238162e266019081a5b86acd44026fa410a55c5275d8e428aea5bcc3c98ade28" [label=""];
  "sha256:15f23d6f51552804f2df3d582087822f3e3ff32588f0bce95bca2882b121fce3" -> "sha256:238162e266019081a5b86acd44026fa410a55c5275d8e428aea5bcc3c98ade28" [label=""];
  "sha256:238162e266019081a5b86acd44026fa410a55c5275d8e428aea5bcc3c98ade28" -> "sha256:7bd39afb5344fd788191a057f076e75eb05f94f43e81109f8f512d340add4575" [label=""];
}

