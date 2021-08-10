[app/sources/470541769.Dockerfile]
digraph {
  "sha256:d8797e836d7fd0a319b2b13cf2a9cb650d07bfc4da51208810f857d9ebf664c9" [label="docker-image://quay.io/pires/docker-jre:8u45-2@sha256:b3ceb683ba7c97c934185a7782cb98666954bc9a9bc330ea7bcd6df7078d2dae" shape="ellipse"];
  "sha256:6722b292dbbde95a69e23341b555f06dfa531abfc1b1ef0dda2bc4395cdc7323" [label="/bin/sh -c curl -Lskj https://github.com/pires/hazelcast-kubernetes-bootstrapper/releases/download/0.5/hazelcast-kubernetes-bootstrapper-0.5.jar   -o /bootstrapper.jar" shape="box"];
  "sha256:72e7f24a5e4b70bdc0458639f56725d6366c21680de4dfc67bc3310125e053ef" [label="sha256:72e7f24a5e4b70bdc0458639f56725d6366c21680de4dfc67bc3310125e053ef" shape="plaintext"];
  "sha256:d8797e836d7fd0a319b2b13cf2a9cb650d07bfc4da51208810f857d9ebf664c9" -> "sha256:6722b292dbbde95a69e23341b555f06dfa531abfc1b1ef0dda2bc4395cdc7323" [label=""];
  "sha256:6722b292dbbde95a69e23341b555f06dfa531abfc1b1ef0dda2bc4395cdc7323" -> "sha256:72e7f24a5e4b70bdc0458639f56725d6366c21680de4dfc67bc3310125e053ef" [label=""];
}

