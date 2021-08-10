[app/sources/345362499.Dockerfile]
digraph {
  "sha256:3d9e051a567e7e41565a5392ea24d6d37e6f336b5a542efa3596bbbf2336a9fc" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:xenial-run" shape="ellipse"];
  "sha256:4e397166cf75d7aa9b9d3037aa1ec4d230f231b92a30a1623d26c5aa4a32b141" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:38ca3f0107853e232aec8587b5342d187c071c9905a870706fefbd8b00c2f3b0" [label="sha256:38ca3f0107853e232aec8587b5342d187c071c9905a870706fefbd8b00c2f3b0" shape="plaintext"];
  "sha256:3d9e051a567e7e41565a5392ea24d6d37e6f336b5a542efa3596bbbf2336a9fc" -> "sha256:4e397166cf75d7aa9b9d3037aa1ec4d230f231b92a30a1623d26c5aa4a32b141" [label=""];
  "sha256:4e397166cf75d7aa9b9d3037aa1ec4d230f231b92a30a1623d26c5aa4a32b141" -> "sha256:38ca3f0107853e232aec8587b5342d187c071c9905a870706fefbd8b00c2f3b0" [label=""];
}

