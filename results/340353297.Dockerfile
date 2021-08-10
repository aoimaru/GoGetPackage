[app/sources/340353297.Dockerfile]
digraph {
  "sha256:1c5862296be1b8c177b1a54dd14214035e81e29b4e85c10071beacb88b9eb904" [label="docker-image://docker.io/library/ros:crystal-ros-core-bionic" shape="ellipse"];
  "sha256:dabda473920682fa1821ce8bf9ef0345019d7ee2482f6ede9c095a6d9323d765" [label="/bin/sh -c apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:daefda6cacf41db50cf1ec1d064ff9e2c16758e5d197d92010da41759443e10e" [label="sha256:daefda6cacf41db50cf1ec1d064ff9e2c16758e5d197d92010da41759443e10e" shape="plaintext"];
  "sha256:1c5862296be1b8c177b1a54dd14214035e81e29b4e85c10071beacb88b9eb904" -> "sha256:dabda473920682fa1821ce8bf9ef0345019d7ee2482f6ede9c095a6d9323d765" [label=""];
  "sha256:dabda473920682fa1821ce8bf9ef0345019d7ee2482f6ede9c095a6d9323d765" -> "sha256:daefda6cacf41db50cf1ec1d064ff9e2c16758e5d197d92010da41759443e10e" [label=""];
}

