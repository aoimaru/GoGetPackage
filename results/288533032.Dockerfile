[app/sources/288533032.Dockerfile]
digraph {
  "sha256:18b7c2cc53865e472a3d0b145f5c6feafbadb82e512d763613c0a3693804a8a4" [label="docker-image://docker.io/library/alpine:3.5@sha256:66952b313e51c3bd1987d7c4ddf5dba9bc0fb6e524eed2448fa660246b3e76ec" shape="ellipse"];
  "sha256:7e4fb1e0ab746cfa601cc764a7024dcd57cbf82b79eca09873ed31cf294dadbb" [label="/bin/sh -c apk add --no-cache redis" shape="box"];
  "sha256:bb9ad6d3719c1bee6259353eca76c8dbb4322118e91a5350e85e45d754a5c24f" [label="local://context" shape="ellipse"];
  "sha256:7421a51a7d5848bca33111ef04754ac946e27273ea14afd8da33e2a5dde46d23" [label="copy{src=/redis.conf, dest=/etc/redis.conf}" shape="note"];
  "sha256:471e495cfad6dfe8ac3cf28e801fa33742ef189bfec021dcd5873a15c3770356" [label="sha256:471e495cfad6dfe8ac3cf28e801fa33742ef189bfec021dcd5873a15c3770356" shape="plaintext"];
  "sha256:18b7c2cc53865e472a3d0b145f5c6feafbadb82e512d763613c0a3693804a8a4" -> "sha256:7e4fb1e0ab746cfa601cc764a7024dcd57cbf82b79eca09873ed31cf294dadbb" [label=""];
  "sha256:7e4fb1e0ab746cfa601cc764a7024dcd57cbf82b79eca09873ed31cf294dadbb" -> "sha256:7421a51a7d5848bca33111ef04754ac946e27273ea14afd8da33e2a5dde46d23" [label=""];
  "sha256:bb9ad6d3719c1bee6259353eca76c8dbb4322118e91a5350e85e45d754a5c24f" -> "sha256:7421a51a7d5848bca33111ef04754ac946e27273ea14afd8da33e2a5dde46d23" [label=""];
  "sha256:7421a51a7d5848bca33111ef04754ac946e27273ea14afd8da33e2a5dde46d23" -> "sha256:471e495cfad6dfe8ac3cf28e801fa33742ef189bfec021dcd5873a15c3770356" [label=""];
}

