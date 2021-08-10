[app/sources/236466614.Dockerfile]
digraph {
  "sha256:61247a8e8e7a396756082326436e3b28285cc4762e2299de873a5e881a182020" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:4a00218a95e6a8cf7cfaf724742af1d382e54cdb4849f2a10dc3b51d7881495d" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     ca-certificates     cmake     gcc     libc6-dev     make     pkg-config     git     automake     libtool     m4     autoconf     make     file     binutils" shape="box"];
  "sha256:df389da3605263283a112536764e4666b7eb98f6ef23056848e8c4f4d3325ca0" [label="copy{src=/xargo.sh, dest=/}" shape="note"];
  "sha256:eed370151f2174254348589be9b596c0611fb76d5f86d08554c8f4a463665db1" [label="/bin/sh -c bash /xargo.sh" shape="box"];
  "sha256:0615178c892c6c7cf3040ee19eb22f0422bfa2dedd5ac97045c61e03819bcdb5" [label="/bin/sh -c apt-get install -y --no-install-recommends     g++-sparc64-linux-gnu     libc6-dev-sparc64-cross" shape="box"];
  "sha256:7e3a1d0893c6b8f86ee867bc6588e7a2e02e420cbae427e84735caf6fedc1adc" [label="copy{src=/openssl.sh, dest=/}" shape="note"];
  "sha256:6efa29f7ae919b1df2cccb86290174a38da3063138239e6c878a029ef5cd6d32" [label="/bin/sh -c bash /openssl.sh linux64-sparcv9 sparc64-linux-gnu-" shape="box"];
  "sha256:4d802782cba572940d860c8cca06084b983f552245e2133b34e6dadb867bcb3d" [label="copy{src=/qemu.sh, dest=/}" shape="note"];
  "sha256:c39d811d613778244582d71b64127b1626a35049f8138f0df5c1facf696c5add" [label="/bin/sh -c bash /qemu.sh sparc64 linux softmmu" shape="box"];
  "sha256:4baede0640b65064dc6b0db35489f30e349f949bcfefa34a18b95ef378bc033f" [label="copy{src=/dropbear.sh, dest=/}" shape="note"];
  "sha256:8b517e3418f27450edcfa7ccabce8dce92c5d716c718b5780a77b6a43d4e2fd4" [label="/bin/sh -c bash /dropbear.sh" shape="box"];
  "sha256:406a35a44a660c2e9d5f5762258fc2cc5b976e3b5a531a5e36d2ec9b1c14b8e9" [label="copy{src=/linux-image.sh, dest=/}" shape="note"];
  "sha256:2db60983644e307910a8f717428e5fdb5e3c0ff88d837df7b5070785d40a22df" [label="/bin/sh -c bash /linux-image.sh sparc64" shape="box"];
  "sha256:e16e6351c5cb4cd075a52a6f065aa691706babe68ac479e0669474568fa2c927" [label="copy{src=/linux-runner, dest=/}" shape="note"];
  "sha256:1a7a4732ff162600646e3e1af69d7adab5b736c136252226485ea2ff02c4e140" [label="sha256:1a7a4732ff162600646e3e1af69d7adab5b736c136252226485ea2ff02c4e140" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:4a00218a95e6a8cf7cfaf724742af1d382e54cdb4849f2a10dc3b51d7881495d" [label=""];
  "sha256:4a00218a95e6a8cf7cfaf724742af1d382e54cdb4849f2a10dc3b51d7881495d" -> "sha256:df389da3605263283a112536764e4666b7eb98f6ef23056848e8c4f4d3325ca0" [label=""];
  "sha256:61247a8e8e7a396756082326436e3b28285cc4762e2299de873a5e881a182020" -> "sha256:df389da3605263283a112536764e4666b7eb98f6ef23056848e8c4f4d3325ca0" [label=""];
  "sha256:df389da3605263283a112536764e4666b7eb98f6ef23056848e8c4f4d3325ca0" -> "sha256:eed370151f2174254348589be9b596c0611fb76d5f86d08554c8f4a463665db1" [label=""];
  "sha256:eed370151f2174254348589be9b596c0611fb76d5f86d08554c8f4a463665db1" -> "sha256:0615178c892c6c7cf3040ee19eb22f0422bfa2dedd5ac97045c61e03819bcdb5" [label=""];
  "sha256:0615178c892c6c7cf3040ee19eb22f0422bfa2dedd5ac97045c61e03819bcdb5" -> "sha256:7e3a1d0893c6b8f86ee867bc6588e7a2e02e420cbae427e84735caf6fedc1adc" [label=""];
  "sha256:61247a8e8e7a396756082326436e3b28285cc4762e2299de873a5e881a182020" -> "sha256:7e3a1d0893c6b8f86ee867bc6588e7a2e02e420cbae427e84735caf6fedc1adc" [label=""];
  "sha256:7e3a1d0893c6b8f86ee867bc6588e7a2e02e420cbae427e84735caf6fedc1adc" -> "sha256:6efa29f7ae919b1df2cccb86290174a38da3063138239e6c878a029ef5cd6d32" [label=""];
  "sha256:6efa29f7ae919b1df2cccb86290174a38da3063138239e6c878a029ef5cd6d32" -> "sha256:4d802782cba572940d860c8cca06084b983f552245e2133b34e6dadb867bcb3d" [label=""];
  "sha256:61247a8e8e7a396756082326436e3b28285cc4762e2299de873a5e881a182020" -> "sha256:4d802782cba572940d860c8cca06084b983f552245e2133b34e6dadb867bcb3d" [label=""];
  "sha256:4d802782cba572940d860c8cca06084b983f552245e2133b34e6dadb867bcb3d" -> "sha256:c39d811d613778244582d71b64127b1626a35049f8138f0df5c1facf696c5add" [label=""];
  "sha256:c39d811d613778244582d71b64127b1626a35049f8138f0df5c1facf696c5add" -> "sha256:4baede0640b65064dc6b0db35489f30e349f949bcfefa34a18b95ef378bc033f" [label=""];
  "sha256:61247a8e8e7a396756082326436e3b28285cc4762e2299de873a5e881a182020" -> "sha256:4baede0640b65064dc6b0db35489f30e349f949bcfefa34a18b95ef378bc033f" [label=""];
  "sha256:4baede0640b65064dc6b0db35489f30e349f949bcfefa34a18b95ef378bc033f" -> "sha256:8b517e3418f27450edcfa7ccabce8dce92c5d716c718b5780a77b6a43d4e2fd4" [label=""];
  "sha256:8b517e3418f27450edcfa7ccabce8dce92c5d716c718b5780a77b6a43d4e2fd4" -> "sha256:406a35a44a660c2e9d5f5762258fc2cc5b976e3b5a531a5e36d2ec9b1c14b8e9" [label=""];
  "sha256:61247a8e8e7a396756082326436e3b28285cc4762e2299de873a5e881a182020" -> "sha256:406a35a44a660c2e9d5f5762258fc2cc5b976e3b5a531a5e36d2ec9b1c14b8e9" [label=""];
  "sha256:406a35a44a660c2e9d5f5762258fc2cc5b976e3b5a531a5e36d2ec9b1c14b8e9" -> "sha256:2db60983644e307910a8f717428e5fdb5e3c0ff88d837df7b5070785d40a22df" [label=""];
  "sha256:2db60983644e307910a8f717428e5fdb5e3c0ff88d837df7b5070785d40a22df" -> "sha256:e16e6351c5cb4cd075a52a6f065aa691706babe68ac479e0669474568fa2c927" [label=""];
  "sha256:61247a8e8e7a396756082326436e3b28285cc4762e2299de873a5e881a182020" -> "sha256:e16e6351c5cb4cd075a52a6f065aa691706babe68ac479e0669474568fa2c927" [label=""];
  "sha256:e16e6351c5cb4cd075a52a6f065aa691706babe68ac479e0669474568fa2c927" -> "sha256:1a7a4732ff162600646e3e1af69d7adab5b736c136252226485ea2ff02c4e140" [label=""];
}

