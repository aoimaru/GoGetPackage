[app/sources/275082071.Dockerfile]
digraph {
  "sha256:d9ac6c8d820b1f67151aa6bcc5d674ae7de06434e6bcd68f4c023ed278a84ce1" [label="docker-image://gcr.io/gcp-runtimes/ubuntu_16_0_4:latest@sha256:3fe32887e3f2f7d4100745aecad3dc07118e0e441900d5d706000d4cc7dc3821" shape="ellipse"];
  "sha256:5e23b1b3426843a4040c62709bdff9c22d5dea45d41ee6ea5114950a4c762a70" [label="/bin/sh -c apt-get update -y && apt-get install openjdk-8-jdk -y" shape="box"];
  "sha256:ab5bc9848e51c353a0323a69efeb629f766606a6b3cc791e5f0515d4605971a4" [label="/bin/sh -c echo \"deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8\" | tee /etc/apt/sources.list.d/bazel.list" shape="box"];
  "sha256:774759bed3dc1d78d2c3cdc1ec4025d047b9fc5c022e8440fb16297133197bd7" [label="/bin/sh -c curl https://bazel.build/bazel-release.pub.gpg | apt-key add -" shape="box"];
  "sha256:16a7c831afe947231732151832838e052c6e656040c875a55851ba1034dd157a" [label="/bin/sh -c apt-get update -y && apt-get install bazel -y" shape="box"];
  "sha256:c75221ff0e6ffbda2e991b268b108f642d8138aa7bb927600c501e3bb5f9fa8c" [label="/bin/sh -c bazel help info >/dev/null 2>&1" shape="box"];
  "sha256:137221eb7f8b4e1896d38b77cf47af98d5f6d099e7f2b72421944727f389d5af" [label="/bin/sh -c apt-get install python -y" shape="box"];
  "sha256:66f4f381b0b239c3d0d93ead9aa0daf7fe88ba6a3a561aeee9a22b7d9040cfe8" [label="sha256:66f4f381b0b239c3d0d93ead9aa0daf7fe88ba6a3a561aeee9a22b7d9040cfe8" shape="plaintext"];
  "sha256:d9ac6c8d820b1f67151aa6bcc5d674ae7de06434e6bcd68f4c023ed278a84ce1" -> "sha256:5e23b1b3426843a4040c62709bdff9c22d5dea45d41ee6ea5114950a4c762a70" [label=""];
  "sha256:5e23b1b3426843a4040c62709bdff9c22d5dea45d41ee6ea5114950a4c762a70" -> "sha256:ab5bc9848e51c353a0323a69efeb629f766606a6b3cc791e5f0515d4605971a4" [label=""];
  "sha256:ab5bc9848e51c353a0323a69efeb629f766606a6b3cc791e5f0515d4605971a4" -> "sha256:774759bed3dc1d78d2c3cdc1ec4025d047b9fc5c022e8440fb16297133197bd7" [label=""];
  "sha256:774759bed3dc1d78d2c3cdc1ec4025d047b9fc5c022e8440fb16297133197bd7" -> "sha256:16a7c831afe947231732151832838e052c6e656040c875a55851ba1034dd157a" [label=""];
  "sha256:16a7c831afe947231732151832838e052c6e656040c875a55851ba1034dd157a" -> "sha256:c75221ff0e6ffbda2e991b268b108f642d8138aa7bb927600c501e3bb5f9fa8c" [label=""];
  "sha256:c75221ff0e6ffbda2e991b268b108f642d8138aa7bb927600c501e3bb5f9fa8c" -> "sha256:137221eb7f8b4e1896d38b77cf47af98d5f6d099e7f2b72421944727f389d5af" [label=""];
  "sha256:137221eb7f8b4e1896d38b77cf47af98d5f6d099e7f2b72421944727f389d5af" -> "sha256:66f4f381b0b239c3d0d93ead9aa0daf7fe88ba6a3a561aeee9a22b7d9040cfe8" [label=""];
}

