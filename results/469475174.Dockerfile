[app/sources/469475174.Dockerfile]
digraph {
  "sha256:060f50ce3396aea44749bae4573a7827d2e6a328e0c9718d3b6b7438cbaf30fe" [label="local://context" shape="ellipse"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label="/bin/sh -c apk add --no-cache redis sed bash" shape="box"];
  "sha256:91a862869baf6c44ccbdf442bc8ec8619accc7f726fce0dfed1d75ff430465b9" [label="copy{src=/redis-master.conf, dest=/redis-master/redis.conf}" shape="note"];
  "sha256:1c82d6183452dde74b11af84f7590f68edba4c3dc5fbd90c33bb681cb428996d" [label="copy{src=/redis-slave.conf, dest=/redis-slave/redis.conf}" shape="note"];
  "sha256:3884bed48ccc06109b8719e1cacb2ac9c75cd60ce3c6df66da850484b710451f" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:8675e2852628da8053477150b62db7c819b623f0a61a091bffd3ca133bd84798" [label="sha256:8675e2852628da8053477150b62db7c819b623f0a61a091bffd3ca133bd84798" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label=""];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" -> "sha256:91a862869baf6c44ccbdf442bc8ec8619accc7f726fce0dfed1d75ff430465b9" [label=""];
  "sha256:060f50ce3396aea44749bae4573a7827d2e6a328e0c9718d3b6b7438cbaf30fe" -> "sha256:91a862869baf6c44ccbdf442bc8ec8619accc7f726fce0dfed1d75ff430465b9" [label=""];
  "sha256:91a862869baf6c44ccbdf442bc8ec8619accc7f726fce0dfed1d75ff430465b9" -> "sha256:1c82d6183452dde74b11af84f7590f68edba4c3dc5fbd90c33bb681cb428996d" [label=""];
  "sha256:060f50ce3396aea44749bae4573a7827d2e6a328e0c9718d3b6b7438cbaf30fe" -> "sha256:1c82d6183452dde74b11af84f7590f68edba4c3dc5fbd90c33bb681cb428996d" [label=""];
  "sha256:1c82d6183452dde74b11af84f7590f68edba4c3dc5fbd90c33bb681cb428996d" -> "sha256:3884bed48ccc06109b8719e1cacb2ac9c75cd60ce3c6df66da850484b710451f" [label=""];
  "sha256:060f50ce3396aea44749bae4573a7827d2e6a328e0c9718d3b6b7438cbaf30fe" -> "sha256:3884bed48ccc06109b8719e1cacb2ac9c75cd60ce3c6df66da850484b710451f" [label=""];
  "sha256:3884bed48ccc06109b8719e1cacb2ac9c75cd60ce3c6df66da850484b710451f" -> "sha256:8675e2852628da8053477150b62db7c819b623f0a61a091bffd3ca133bd84798" [label=""];
}

