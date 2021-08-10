[app/sources/319940432.Dockerfile]
digraph {
  "sha256:47f5586982edbe3fd76c7c41f302ba3592d493fdf6d3867613c2bd1f4f170b91" [label="docker-image://docker.io/library/debian:buster-slim@sha256:c8152821b158dd171b4acf92afb0a58fc2faa179a7e0af8ace358fbe1668e99d" shape="ellipse"];
  "sha256:36ef258568382476a1df4b7b8ffa2d467661c45689a1d43fabfac5fd35fd679f" [label="/bin/sh -c apt-get update && apt-get install -y   build-essential   cmake   curl   doxygen   git   graphviz   libgdal-dev   libgeos-dev   lcov   unzip   valgrind   wget" shape="box"];
  "sha256:6fcc021044cbd6ae11ab1089db39cbd75fc05c015c35e5b949ccd4c2293d8d2e" [label="sha256:6fcc021044cbd6ae11ab1089db39cbd75fc05c015c35e5b949ccd4c2293d8d2e" shape="plaintext"];
  "sha256:47f5586982edbe3fd76c7c41f302ba3592d493fdf6d3867613c2bd1f4f170b91" -> "sha256:36ef258568382476a1df4b7b8ffa2d467661c45689a1d43fabfac5fd35fd679f" [label=""];
  "sha256:36ef258568382476a1df4b7b8ffa2d467661c45689a1d43fabfac5fd35fd679f" -> "sha256:6fcc021044cbd6ae11ab1089db39cbd75fc05c015c35e5b949ccd4c2293d8d2e" [label=""];
}

