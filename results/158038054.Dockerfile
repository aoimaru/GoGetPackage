[app/sources/158038054.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:ecddd7d82ba7b2f6dde6784fcfdbc8066341981d2386e7a109ecfd7991d56af9" [label="/bin/sh -c dpkg --add-architecture i386 &&   apt-get update && apt-get -y --no-install-recommends install     ca-certificates     build-essential clang libc6:i386     bzip2     git     cmake make     python     vim-common astyle     wget     &&   apt-get clean &&   rm -rf /var/lib/apt/lists/* &&   mkdir -p /usr/local/bin/ &&   wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 &&   tar -xf gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 -C /usr/local/bin/ && rm *.tar.bz2 &&   wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 &&   tar -xf gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 -C /usr/local/bin/ && rm *.tar.bz2 &&   apt-get clean" shape="box"];
  "sha256:eb36ffba9d2ca35bd79598330d4595673ece8c49c62096c4c87dd42c38ab8ae3" [label="local://context" shape="ellipse"];
  "sha256:2498522b135afb6da1dd9db6a48498d6e40488e943a66c252314352d9b3ef478" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:8f9a2bbbbdb4e2fedb3e343f96cfcce0245e1f04ff4665762e50b73f2acd1471" [label="sha256:8f9a2bbbbdb4e2fedb3e343f96cfcce0245e1f04ff4665762e50b73f2acd1471" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:ecddd7d82ba7b2f6dde6784fcfdbc8066341981d2386e7a109ecfd7991d56af9" [label=""];
  "sha256:ecddd7d82ba7b2f6dde6784fcfdbc8066341981d2386e7a109ecfd7991d56af9" -> "sha256:2498522b135afb6da1dd9db6a48498d6e40488e943a66c252314352d9b3ef478" [label=""];
  "sha256:eb36ffba9d2ca35bd79598330d4595673ece8c49c62096c4c87dd42c38ab8ae3" -> "sha256:2498522b135afb6da1dd9db6a48498d6e40488e943a66c252314352d9b3ef478" [label=""];
  "sha256:2498522b135afb6da1dd9db6a48498d6e40488e943a66c252314352d9b3ef478" -> "sha256:8f9a2bbbbdb4e2fedb3e343f96cfcce0245e1f04ff4665762e50b73f2acd1471" [label=""];
}

