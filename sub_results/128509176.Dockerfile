[app/sub_sources/128509176.Dockerfile]
digraph {
  "sha256:d022eefe587e7bd5520159cf63855430374159e3735dcb79b945bdc3afe6cd61" [label="local://context" shape="ellipse"];
  "sha256:ac8afaeda6cb4a6dcdbce95ad219c7a5c3efc6a78d30c798f90101057a21f82d" [label="docker-image://docker.io/balenalib/raspberrypi3-debian:stretch-run@sha256:4ce6906f7b025a67c59f9b1bcec3e4d7e274dc5e72fa61191c85f50d23f11181" shape="ellipse"];
  "sha256:b39d58e973cf04cccf06b8ac35968f8113c94f16e258316bce1e53dcfc780abc" [label="copy{src=/sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:651a6481829adb7529aa9da4cf96a755f7c71da3ed242257808655e394dbbb69" [label="copy{src=/raspi.list, dest=/etc/apt/sources.list.d/raspi.list}" shape="note"];
  "sha256:c0377e88cff6cd9aa10d125368f15a92f9212726560bc60f3f97d167c765b51b" [label="/bin/sh -c install_packages xserver-xorg     xinit lxsession desktop-file-utils     raspberrypi-ui-mods rpd-icons     gtk2-engines-clearlookspix     matchbox-keyboard" shape="box"];
  "sha256:148ac2a5f5481d36001917332ba4acfb45723e999e6e6092c0181641a220a14b" [label="/bin/sh -c mv /usr/bin/lxpolkit /usr/bin/lxpolkit.bak" shape="box"];
  "sha256:dfe945e19652a9a30e38c426548f45503e4a1f1fe3725a851790db9e65e9054a" [label="/bin/sh -c echo \"#!/bin/bash\" > /etc/X11/xinit/xserverrc   && echo \"\" >> /etc/X11/xinit/xserverrc   && echo 'exec /usr/bin/X -s 0 dpms -nolisten tcp \"$@\"' >> /etc/X11/xinit/xserverrc" shape="box"];
  "sha256:c6c21936696e76fab6b93e357eba49c385fc60e2d3ca1030d7aa15f53f770887" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:11d6304b650d6fb7f8e586666eb6d8187c2742c7b474e3dc3b0d943e03cc5c0d" [label="copy{src=/start.sh, dest=/usr/src/app/start.sh}" shape="note"];
  "sha256:70f8234770c4430c39f89d6f1b4e270b6b2d35f330dd898859acca75703ad3bc" [label="sha256:70f8234770c4430c39f89d6f1b4e270b6b2d35f330dd898859acca75703ad3bc" shape="plaintext"];
  "sha256:ac8afaeda6cb4a6dcdbce95ad219c7a5c3efc6a78d30c798f90101057a21f82d" -> "sha256:b39d58e973cf04cccf06b8ac35968f8113c94f16e258316bce1e53dcfc780abc" [label=""];
  "sha256:d022eefe587e7bd5520159cf63855430374159e3735dcb79b945bdc3afe6cd61" -> "sha256:b39d58e973cf04cccf06b8ac35968f8113c94f16e258316bce1e53dcfc780abc" [label=""];
  "sha256:b39d58e973cf04cccf06b8ac35968f8113c94f16e258316bce1e53dcfc780abc" -> "sha256:651a6481829adb7529aa9da4cf96a755f7c71da3ed242257808655e394dbbb69" [label=""];
  "sha256:d022eefe587e7bd5520159cf63855430374159e3735dcb79b945bdc3afe6cd61" -> "sha256:651a6481829adb7529aa9da4cf96a755f7c71da3ed242257808655e394dbbb69" [label=""];
  "sha256:651a6481829adb7529aa9da4cf96a755f7c71da3ed242257808655e394dbbb69" -> "sha256:c0377e88cff6cd9aa10d125368f15a92f9212726560bc60f3f97d167c765b51b" [label=""];
  "sha256:c0377e88cff6cd9aa10d125368f15a92f9212726560bc60f3f97d167c765b51b" -> "sha256:148ac2a5f5481d36001917332ba4acfb45723e999e6e6092c0181641a220a14b" [label=""];
  "sha256:148ac2a5f5481d36001917332ba4acfb45723e999e6e6092c0181641a220a14b" -> "sha256:dfe945e19652a9a30e38c426548f45503e4a1f1fe3725a851790db9e65e9054a" [label=""];
  "sha256:dfe945e19652a9a30e38c426548f45503e4a1f1fe3725a851790db9e65e9054a" -> "sha256:c6c21936696e76fab6b93e357eba49c385fc60e2d3ca1030d7aa15f53f770887" [label=""];
  "sha256:c6c21936696e76fab6b93e357eba49c385fc60e2d3ca1030d7aa15f53f770887" -> "sha256:11d6304b650d6fb7f8e586666eb6d8187c2742c7b474e3dc3b0d943e03cc5c0d" [label=""];
  "sha256:d022eefe587e7bd5520159cf63855430374159e3735dcb79b945bdc3afe6cd61" -> "sha256:11d6304b650d6fb7f8e586666eb6d8187c2742c7b474e3dc3b0d943e03cc5c0d" [label=""];
  "sha256:11d6304b650d6fb7f8e586666eb6d8187c2742c7b474e3dc3b0d943e03cc5c0d" -> "sha256:70f8234770c4430c39f89d6f1b4e270b6b2d35f330dd898859acca75703ad3bc" [label=""];
}

