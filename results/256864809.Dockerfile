[app/sources/256864809.Dockerfile]
digraph {
  "sha256:d9ac6c8d820b1f67151aa6bcc5d674ae7de06434e6bcd68f4c023ed278a84ce1" [label="docker-image://gcr.io/gcp-runtimes/ubuntu_16_0_4:latest@sha256:3fe32887e3f2f7d4100745aecad3dc07118e0e441900d5d706000d4cc7dc3821" shape="ellipse"];
  "sha256:c3cdb05d4f518a7cfdfe27fa93c826f1e9f62b97736e5cd6c83790bfd4938a3a" [label="/bin/sh -c echo \"deb http://packages.cloud.google.com/apt cloud-sdk-xenial main\" >>     /etc/apt/sources.list" shape="box"];
  "sha256:6daaa3997c40cc9e886e930de421de4a5be9d6acb68c1c654f64ed0f29d46ecb" [label="/bin/sh -c curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -" shape="box"];
  "sha256:5f6e8d841cd04476e97a0064ff385d09b404aa38fe066defd1e839225407b1ee" [label="/bin/sh -c apt-get update -y && apt-get install -y google-cloud-sdk libarchive13     libglib2.0-0 libgss3" shape="box"];
  "sha256:2b5359f6ad143a1639926b27c4d92e07b9df883c3e19ea3c8cb16ab347fc422d" [label="mkdir{path=/work}" shape="note"];
  "sha256:235c8ec7d9d5d66b1b1835f87d463636d4f6a868cf0be559ab7cc15b933970d8" [label="local://context" shape="ellipse"];
  "sha256:586321f6b5b6963a04482e456594212d210721f254701856ea4523c8d2f0274e" [label="copy{src=/startup-runner.sh, dest=/work/}" shape="note"];
  "sha256:5b26eb6682302de601822d4410b687f619c3816ce5b0eae97da0214449243b31" [label="sha256:5b26eb6682302de601822d4410b687f619c3816ce5b0eae97da0214449243b31" shape="plaintext"];
  "sha256:d9ac6c8d820b1f67151aa6bcc5d674ae7de06434e6bcd68f4c023ed278a84ce1" -> "sha256:c3cdb05d4f518a7cfdfe27fa93c826f1e9f62b97736e5cd6c83790bfd4938a3a" [label=""];
  "sha256:c3cdb05d4f518a7cfdfe27fa93c826f1e9f62b97736e5cd6c83790bfd4938a3a" -> "sha256:6daaa3997c40cc9e886e930de421de4a5be9d6acb68c1c654f64ed0f29d46ecb" [label=""];
  "sha256:6daaa3997c40cc9e886e930de421de4a5be9d6acb68c1c654f64ed0f29d46ecb" -> "sha256:5f6e8d841cd04476e97a0064ff385d09b404aa38fe066defd1e839225407b1ee" [label=""];
  "sha256:5f6e8d841cd04476e97a0064ff385d09b404aa38fe066defd1e839225407b1ee" -> "sha256:2b5359f6ad143a1639926b27c4d92e07b9df883c3e19ea3c8cb16ab347fc422d" [label=""];
  "sha256:2b5359f6ad143a1639926b27c4d92e07b9df883c3e19ea3c8cb16ab347fc422d" -> "sha256:586321f6b5b6963a04482e456594212d210721f254701856ea4523c8d2f0274e" [label=""];
  "sha256:235c8ec7d9d5d66b1b1835f87d463636d4f6a868cf0be559ab7cc15b933970d8" -> "sha256:586321f6b5b6963a04482e456594212d210721f254701856ea4523c8d2f0274e" [label=""];
  "sha256:586321f6b5b6963a04482e456594212d210721f254701856ea4523c8d2f0274e" -> "sha256:5b26eb6682302de601822d4410b687f619c3816ce5b0eae97da0214449243b31" [label=""];
}

