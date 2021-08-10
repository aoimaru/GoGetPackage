[app/sources/345361870.Dockerfile]
digraph {
  "sha256:11b08d6cfd8831e9a755f1c1493e4b98022e15bd948b320c79bbc4880cb7779b" [label="docker-image://docker.io/balenalib/armv7hf-fedora:29-build" shape="ellipse"];
  "sha256:6eb2c7fd81e3aa1b11f88bd5fffee27909e3588324433b18438a72cd8593294d" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:ee410dd4528c37f68accd9a7321e0e2d453edff43c8d7e1f7b0fa824c7efc537" [label="sha256:ee410dd4528c37f68accd9a7321e0e2d453edff43c8d7e1f7b0fa824c7efc537" shape="plaintext"];
  "sha256:11b08d6cfd8831e9a755f1c1493e4b98022e15bd948b320c79bbc4880cb7779b" -> "sha256:6eb2c7fd81e3aa1b11f88bd5fffee27909e3588324433b18438a72cd8593294d" [label=""];
  "sha256:6eb2c7fd81e3aa1b11f88bd5fffee27909e3588324433b18438a72cd8593294d" -> "sha256:ee410dd4528c37f68accd9a7321e0e2d453edff43c8d7e1f7b0fa824c7efc537" [label=""];
}

