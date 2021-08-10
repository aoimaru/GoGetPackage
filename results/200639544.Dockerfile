[app/sources/200639544.Dockerfile]
digraph {
  "sha256:bba5ad8c754f0f544b270eecbeb742f18f92d560e9d14c5abc46eceb0a6ff08a" [label="local://context" shape="ellipse"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:6970cfe165a43ce8e5552571b4baaf57b89c003a55735fbf51e96aaf7c58b6d4" [label="/bin/sh -c apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends upgrade  && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install squid3" shape="box"];
  "sha256:e6cf41dad7e02938748d9b29839d83f8e21ff11c03ef9261dbc29b4795e5eee6" [label="copy{src=/squid.conf.bin, dest=/etc/squid3/squid.conf}" shape="note"];
  "sha256:f8b9e9a3aeb251f11f8148f7d54b43b84dc420dd194261a8fdfdb2ee0ad68347" [label="/bin/sh -c cat /etc/hosts" shape="box"];
  "sha256:738eafd2d993e6067d460d4230f5856c93579526f71e0ab1b855e1de48c9adf5" [label="sha256:738eafd2d993e6067d460d4230f5856c93579526f71e0ab1b855e1de48c9adf5" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:6970cfe165a43ce8e5552571b4baaf57b89c003a55735fbf51e96aaf7c58b6d4" [label=""];
  "sha256:6970cfe165a43ce8e5552571b4baaf57b89c003a55735fbf51e96aaf7c58b6d4" -> "sha256:e6cf41dad7e02938748d9b29839d83f8e21ff11c03ef9261dbc29b4795e5eee6" [label=""];
  "sha256:bba5ad8c754f0f544b270eecbeb742f18f92d560e9d14c5abc46eceb0a6ff08a" -> "sha256:e6cf41dad7e02938748d9b29839d83f8e21ff11c03ef9261dbc29b4795e5eee6" [label=""];
  "sha256:e6cf41dad7e02938748d9b29839d83f8e21ff11c03ef9261dbc29b4795e5eee6" -> "sha256:f8b9e9a3aeb251f11f8148f7d54b43b84dc420dd194261a8fdfdb2ee0ad68347" [label=""];
  "sha256:f8b9e9a3aeb251f11f8148f7d54b43b84dc420dd194261a8fdfdb2ee0ad68347" -> "sha256:738eafd2d993e6067d460d4230f5856c93579526f71e0ab1b855e1de48c9adf5" [label=""];
}

