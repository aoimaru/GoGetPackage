[app/sources/364164116.Dockerfile]
digraph {
  "sha256:b3fc0b8fe148df6fa0f3fcbccbc8200de4538445a89ae46f24d6b405a5f5062e" [label="docker-image://docker.io/gobysoft/dccl-debian-build-base:9.1@sha256:940523cd5294a37675d925b570bf0572534dc1a0627451cd711f0571eb11fefc" shape="ellipse"];
  "sha256:8cc56e96f6c50e1bfdc33b2ac798beba807e80a548d319e7d7fdfef8b832b643" [label="/bin/bash -c apt-get update &&     apt-get -y install libcrypto++-dev:armhf &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:730a12168017affa490de4b9d78b35b066ade92b1bd5bb1eaae1f3731195ee36" [label="sha256:730a12168017affa490de4b9d78b35b066ade92b1bd5bb1eaae1f3731195ee36" shape="plaintext"];
  "sha256:b3fc0b8fe148df6fa0f3fcbccbc8200de4538445a89ae46f24d6b405a5f5062e" -> "sha256:8cc56e96f6c50e1bfdc33b2ac798beba807e80a548d319e7d7fdfef8b832b643" [label=""];
  "sha256:8cc56e96f6c50e1bfdc33b2ac798beba807e80a548d319e7d7fdfef8b832b643" -> "sha256:730a12168017affa490de4b9d78b35b066ade92b1bd5bb1eaae1f3731195ee36" [label=""];
}

