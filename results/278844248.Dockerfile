[app/sources/278844248.Dockerfile]
digraph {
  "sha256:d6d15a6fedf0c03668e17435f6a6fec1de8830468e7ef7b23844203cf19d0a45" [label="docker-image://docker.io/library/pai.build.base:hadoop2.7.2-cuda8.0-cudnn6-devel-ubuntu16.04" shape="ellipse"];
  "sha256:fe18610c779b553a2fa762afe6ceb473816537a694e5c6571728c995807023a0" [label="/bin/sh -c pip install tensorflow-gpu==${TENSORFLOW_VERSION} &&     pip3 install tensorflow-gpu==${TENSORFLOW_VERSION}" shape="box"];
  "sha256:d2dc46903f97875399fd2103c364654419ec50959e19ad8415f3289a83259c14" [label="/bin/sh -c ln -s /usr/local/cuda/targets/x86_64-linux/lib/stubs/libcuda.so           /usr/local/cuda/targets/x86_64-linux/lib/stubs/libcuda.so.1" shape="box"];
  "sha256:9e9b1c9e27287b4172372c17d313a24e9b78dd4834066366fedd0e500e2e7135" [label="mkdir{path=/root}" shape="note"];
  "sha256:bcef7c8ba3e840f103a43a69ee989af0bcfe2dbb3c7b48accfc01b9afc7c771a" [label="sha256:bcef7c8ba3e840f103a43a69ee989af0bcfe2dbb3c7b48accfc01b9afc7c771a" shape="plaintext"];
  "sha256:d6d15a6fedf0c03668e17435f6a6fec1de8830468e7ef7b23844203cf19d0a45" -> "sha256:fe18610c779b553a2fa762afe6ceb473816537a694e5c6571728c995807023a0" [label=""];
  "sha256:fe18610c779b553a2fa762afe6ceb473816537a694e5c6571728c995807023a0" -> "sha256:d2dc46903f97875399fd2103c364654419ec50959e19ad8415f3289a83259c14" [label=""];
  "sha256:d2dc46903f97875399fd2103c364654419ec50959e19ad8415f3289a83259c14" -> "sha256:9e9b1c9e27287b4172372c17d313a24e9b78dd4834066366fedd0e500e2e7135" [label=""];
  "sha256:9e9b1c9e27287b4172372c17d313a24e9b78dd4834066366fedd0e500e2e7135" -> "sha256:bcef7c8ba3e840f103a43a69ee989af0bcfe2dbb3c7b48accfc01b9afc7c771a" [label=""];
}

