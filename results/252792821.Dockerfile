[app/sources/252792821.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4a224fa7a6cb77f008b503abd0ce1575c12ed771d048806621d2ece35d6bfd06" [label="/bin/sh -c apk --no-cache add python py-pip" shape="box"];
  "sha256:f14325c5cef621ad6dbecb0845761bbd11a5a7a6778d6100495120e7d078f368" [label="/bin/sh -c pip install awscli" shape="box"];
  "sha256:640b4a2e650ee237cebfdedd593a4106f0801d33149fc7fadef3a1dcc0be70a0" [label="/bin/sh -c rm -rf /tmp/pip_build_root/" shape="box"];
  "sha256:4b673e548c1852dfa5009176db2d8642b0ed29b1a080a2926b59344e922a66d3" [label="/bin/sh -c mkdir -p /data" shape="box"];
  "sha256:27eb38a949e0819f4db6fd54c6e93f3b7bd77b0b110acae7ca4c07aa4785cdb9" [label="local://context" shape="ellipse"];
  "sha256:fdc49746787cafa4ab99b512969e6353bc106bb47294063cbbe34c7624e1ab05" [label="copy{src=/s3backup.sh, dest=/}" shape="note"];
  "sha256:faaf9e6568804a145d44b4d90939944a239e6b41a73b8ff2fadebf7210b33ce4" [label="sha256:faaf9e6568804a145d44b4d90939944a239e6b41a73b8ff2fadebf7210b33ce4" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4a224fa7a6cb77f008b503abd0ce1575c12ed771d048806621d2ece35d6bfd06" [label=""];
  "sha256:4a224fa7a6cb77f008b503abd0ce1575c12ed771d048806621d2ece35d6bfd06" -> "sha256:f14325c5cef621ad6dbecb0845761bbd11a5a7a6778d6100495120e7d078f368" [label=""];
  "sha256:f14325c5cef621ad6dbecb0845761bbd11a5a7a6778d6100495120e7d078f368" -> "sha256:640b4a2e650ee237cebfdedd593a4106f0801d33149fc7fadef3a1dcc0be70a0" [label=""];
  "sha256:640b4a2e650ee237cebfdedd593a4106f0801d33149fc7fadef3a1dcc0be70a0" -> "sha256:4b673e548c1852dfa5009176db2d8642b0ed29b1a080a2926b59344e922a66d3" [label=""];
  "sha256:4b673e548c1852dfa5009176db2d8642b0ed29b1a080a2926b59344e922a66d3" -> "sha256:fdc49746787cafa4ab99b512969e6353bc106bb47294063cbbe34c7624e1ab05" [label=""];
  "sha256:27eb38a949e0819f4db6fd54c6e93f3b7bd77b0b110acae7ca4c07aa4785cdb9" -> "sha256:fdc49746787cafa4ab99b512969e6353bc106bb47294063cbbe34c7624e1ab05" [label=""];
  "sha256:fdc49746787cafa4ab99b512969e6353bc106bb47294063cbbe34c7624e1ab05" -> "sha256:faaf9e6568804a145d44b4d90939944a239e6b41a73b8ff2fadebf7210b33ce4" [label=""];
}

