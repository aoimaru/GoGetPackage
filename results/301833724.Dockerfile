[app/sources/301833724.Dockerfile]
digraph {
  "sha256:4a9d6daca930d986f6e929b5f8d13a6cba6348bf37eb0054f28e32877e54c0e1" [label="docker-image://docker.io/datakit/ci:latest" shape="ellipse"];
  "sha256:6bad1a041bf43aa37178901da788da0a4d2df5dd6e00cb28abf07badb3be3530" [label="local://context" shape="ellipse"];
  "sha256:4b2d97f8c67f6dd7def51116075f6f887c6db8852513168d041f9fec385fd80f" [label="copy{src=/, dest=/datakit-ci}" shape="note"];
  "sha256:5adbce5d69d6c2c8f85973ec6eb9846a82f90e51523c944ee279a48d4fbadf16" [label="mkdir{path=/datakit-ci}" shape="note"];
  "sha256:fdf4247fbf9b631e2eddb7cb008f3fb25f28dc77d454648f60ce28f73ef5b13a" [label="/bin/sh -c sudo chown opam ." shape="box"];
  "sha256:2b070ca3e7e4e307982e4e78c72ab57be0d7d77748f037dfa70df8ab810db1e1" [label="/bin/sh -c opam config exec make $CONFIG && ln _build/$CONFIG.native /datakit-ci/datakit-ci && rm -rf _build" shape="box"];
  "sha256:c25e25670a59360af6e1ea597cf6176378df5cc73608e58c010f80465a3069d0" [label="sha256:c25e25670a59360af6e1ea597cf6176378df5cc73608e58c010f80465a3069d0" shape="plaintext"];
  "sha256:4a9d6daca930d986f6e929b5f8d13a6cba6348bf37eb0054f28e32877e54c0e1" -> "sha256:4b2d97f8c67f6dd7def51116075f6f887c6db8852513168d041f9fec385fd80f" [label=""];
  "sha256:6bad1a041bf43aa37178901da788da0a4d2df5dd6e00cb28abf07badb3be3530" -> "sha256:4b2d97f8c67f6dd7def51116075f6f887c6db8852513168d041f9fec385fd80f" [label=""];
  "sha256:4b2d97f8c67f6dd7def51116075f6f887c6db8852513168d041f9fec385fd80f" -> "sha256:5adbce5d69d6c2c8f85973ec6eb9846a82f90e51523c944ee279a48d4fbadf16" [label=""];
  "sha256:5adbce5d69d6c2c8f85973ec6eb9846a82f90e51523c944ee279a48d4fbadf16" -> "sha256:fdf4247fbf9b631e2eddb7cb008f3fb25f28dc77d454648f60ce28f73ef5b13a" [label=""];
  "sha256:fdf4247fbf9b631e2eddb7cb008f3fb25f28dc77d454648f60ce28f73ef5b13a" -> "sha256:2b070ca3e7e4e307982e4e78c72ab57be0d7d77748f037dfa70df8ab810db1e1" [label=""];
  "sha256:2b070ca3e7e4e307982e4e78c72ab57be0d7d77748f037dfa70df8ab810db1e1" -> "sha256:c25e25670a59360af6e1ea597cf6176378df5cc73608e58c010f80465a3069d0" [label=""];
}

