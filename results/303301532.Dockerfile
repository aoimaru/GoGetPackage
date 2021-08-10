[app/sources/303301532.Dockerfile]
digraph {
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" [label="docker-image://docker.io/library/python:3.7-slim" shape="ellipse"];
  "sha256:f38248d039353c7e5329c0801544c3fbb6872e721cfc2459a371b7a6f023a931" [label="/bin/sh -c pip install ansible-lint" shape="box"];
  "sha256:736113e1a9a48ee0f5ba586da280ebb4dea0c730ab54f1cde68a31d841d31a94" [label="local://context" shape="ellipse"];
  "sha256:3119fbc732b8d85730812791c6e314aedf4a87db2038a03f7721f7f25a7dc5df" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:3d0e452dd3adb44054a63c81a36c1b87f4833bb6974a6994fd4acc3a1bc86d1c" [label="sha256:3d0e452dd3adb44054a63c81a36c1b87f4833bb6974a6994fd4acc3a1bc86d1c" shape="plaintext"];
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" -> "sha256:f38248d039353c7e5329c0801544c3fbb6872e721cfc2459a371b7a6f023a931" [label=""];
  "sha256:f38248d039353c7e5329c0801544c3fbb6872e721cfc2459a371b7a6f023a931" -> "sha256:3119fbc732b8d85730812791c6e314aedf4a87db2038a03f7721f7f25a7dc5df" [label=""];
  "sha256:736113e1a9a48ee0f5ba586da280ebb4dea0c730ab54f1cde68a31d841d31a94" -> "sha256:3119fbc732b8d85730812791c6e314aedf4a87db2038a03f7721f7f25a7dc5df" [label=""];
  "sha256:3119fbc732b8d85730812791c6e314aedf4a87db2038a03f7721f7f25a7dc5df" -> "sha256:3d0e452dd3adb44054a63c81a36c1b87f4833bb6974a6994fd4acc3a1bc86d1c" [label=""];
}

