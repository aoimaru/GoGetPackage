[app/sources/247326566.Dockerfile]
digraph {
  "sha256:6eaac422d5e9e26a254b9eb2d999a3e96c30e8a06fa37bffe68e55c00879e2d5" [label="local://context" shape="ellipse"];
  "sha256:1d701270a0b03660945faa269a9dbe080080d0ea61bf42018d187ed0e4fc791d" [label="docker-image://docker.io/dhoer/flyway:4.1.2" shape="ellipse"];
  "sha256:999b2c700f4806e9487124aa76ffae450227058796156db0e87726f3052f53d2" [label="/bin/sh -c apt-get update -y && apt-get install -y mysql-client" shape="box"];
  "sha256:f07fe8d3b15e3671bc7ba13c447d899292b8457025e699ceb157a7a0a0306f07" [label="copy{src=/db, dest=/flyway/sql/db}" shape="note"];
  "sha256:d77c218f4a66264e264388349892dbabb7733f23724e0dddc465c0921808a746" [label="copy{src=/*.sh, dest=/}" shape="note"];
  "sha256:b4a2ac261f9c8faa015ba311077607fa783f3cac7ea14c9d26c0340f434ae77d" [label="/bin/sh -c touch /flyway/flyway.conf && chgrp -R 0 /flyway/flyway.conf && chmod -R g+rwX /flyway/flyway.conf" shape="box"];
  "sha256:b19db9b4ce7abca7f542017487335c85e14f881c7d38c90cf2a69aeb24642431" [label="/bin/sh -c chgrp -R 0 /*.sh && chmod -R g+rwX /*.sh &&     chgrp -R 0 /usr/local/bin/flyway && chmod -R g+rwX /usr/local/bin/flyway &&     chgrp -R 0 /flyway && chmod -R g+rwX /flyway" shape="box"];
  "sha256:3564809a244f63a9d70a19dae0c3189c297652716e48da4a71958c6f31b52416" [label="sha256:3564809a244f63a9d70a19dae0c3189c297652716e48da4a71958c6f31b52416" shape="plaintext"];
  "sha256:1d701270a0b03660945faa269a9dbe080080d0ea61bf42018d187ed0e4fc791d" -> "sha256:999b2c700f4806e9487124aa76ffae450227058796156db0e87726f3052f53d2" [label=""];
  "sha256:999b2c700f4806e9487124aa76ffae450227058796156db0e87726f3052f53d2" -> "sha256:f07fe8d3b15e3671bc7ba13c447d899292b8457025e699ceb157a7a0a0306f07" [label=""];
  "sha256:6eaac422d5e9e26a254b9eb2d999a3e96c30e8a06fa37bffe68e55c00879e2d5" -> "sha256:f07fe8d3b15e3671bc7ba13c447d899292b8457025e699ceb157a7a0a0306f07" [label=""];
  "sha256:f07fe8d3b15e3671bc7ba13c447d899292b8457025e699ceb157a7a0a0306f07" -> "sha256:d77c218f4a66264e264388349892dbabb7733f23724e0dddc465c0921808a746" [label=""];
  "sha256:6eaac422d5e9e26a254b9eb2d999a3e96c30e8a06fa37bffe68e55c00879e2d5" -> "sha256:d77c218f4a66264e264388349892dbabb7733f23724e0dddc465c0921808a746" [label=""];
  "sha256:d77c218f4a66264e264388349892dbabb7733f23724e0dddc465c0921808a746" -> "sha256:b4a2ac261f9c8faa015ba311077607fa783f3cac7ea14c9d26c0340f434ae77d" [label=""];
  "sha256:b4a2ac261f9c8faa015ba311077607fa783f3cac7ea14c9d26c0340f434ae77d" -> "sha256:b19db9b4ce7abca7f542017487335c85e14f881c7d38c90cf2a69aeb24642431" [label=""];
  "sha256:b19db9b4ce7abca7f542017487335c85e14f881c7d38c90cf2a69aeb24642431" -> "sha256:3564809a244f63a9d70a19dae0c3189c297652716e48da4a71958c6f31b52416" [label=""];
}

