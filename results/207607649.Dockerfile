[app/sources/207607649.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:3fc3556c3794ac6b7b40b94ba393cdce432835cb0ec9a92cd232b399fa2bc55f" [label="local://context" shape="ellipse"];
  "sha256:6e300d224c6d1bc6d17dd8c397fdfb793ca2f0eec8d3a4093bc6f28b77b866de" [label="copy{src=/, dest=/tmp/aomi}" shape="note"];
  "sha256:3c4a2da6c6fa25bc3aecd518dabc50824ccb07e0ea95baf93c8a6f9b881174ed" [label="copy{src=/scripts/docker-entrypoint, dest=/usr/local/bin/docker-entrypoint}" shape="note"];
  "sha256:2043ec62806f1ec96d7382a9a8385ef279ea5abfaa6a6264600ce3247a77a3b4" [label="/bin/sh -c cd /tmp/aomi && python setup.py install && cd /tmp && rm -rf /tmp/aomi" shape="box"];
  "sha256:db153d17225db88a36680c74de09605ca9a8bc12b4b70d8c78bd8df61c375f07" [label="sha256:db153d17225db88a36680c74de09605ca9a8bc12b4b70d8c78bd8df61c375f07" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:6e300d224c6d1bc6d17dd8c397fdfb793ca2f0eec8d3a4093bc6f28b77b866de" [label=""];
  "sha256:3fc3556c3794ac6b7b40b94ba393cdce432835cb0ec9a92cd232b399fa2bc55f" -> "sha256:6e300d224c6d1bc6d17dd8c397fdfb793ca2f0eec8d3a4093bc6f28b77b866de" [label=""];
  "sha256:6e300d224c6d1bc6d17dd8c397fdfb793ca2f0eec8d3a4093bc6f28b77b866de" -> "sha256:3c4a2da6c6fa25bc3aecd518dabc50824ccb07e0ea95baf93c8a6f9b881174ed" [label=""];
  "sha256:3fc3556c3794ac6b7b40b94ba393cdce432835cb0ec9a92cd232b399fa2bc55f" -> "sha256:3c4a2da6c6fa25bc3aecd518dabc50824ccb07e0ea95baf93c8a6f9b881174ed" [label=""];
  "sha256:3c4a2da6c6fa25bc3aecd518dabc50824ccb07e0ea95baf93c8a6f9b881174ed" -> "sha256:2043ec62806f1ec96d7382a9a8385ef279ea5abfaa6a6264600ce3247a77a3b4" [label=""];
  "sha256:2043ec62806f1ec96d7382a9a8385ef279ea5abfaa6a6264600ce3247a77a3b4" -> "sha256:db153d17225db88a36680c74de09605ca9a8bc12b4b70d8c78bd8df61c375f07" [label=""];
}

