[app/sources/247685349.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:154b0605ce1498303974b28a864f29c80a4ff831e54d511da77963d108943dbd" [label="/bin/sh -c apk add --update sudo" shape="box"];
  "sha256:4ca9f5c6d8ed00db504e4615a4e502f73da42de01276cedb1743b1c3636619bf" [label="/bin/sh -c adduser -G abuild -g \"Alpine Package Builder\" -s /bin/sh -D builder   && echo \"builder ALL=(ALL) NOPASSWD:ALL\" >> /etc/sudoers" shape="box"];
  "sha256:6a7a90e82186e36584b4844b27027c337238f6716b71133c377d537eb43a66a5" [label="/bin/sh -c sudo apk add --update alpine-sdk   && abuild-keygen -i -a   && git clone git://dev.alpinelinux.org/aports   && cd aports/community/tor   && sed -i 's/--enable-transparent/--enable-transparent --enable-tor2web-mode/g' APKBUILD   && abuild verify && abuild -r   && cd ~/packages/community/x86_64   && sudo apk add --allow-untrusted tor-0.*.apk   && rm -Rf /aports   && sudo apk del alpine-sdk" shape="box"];
  "sha256:3c549ee4fa05926497e60f49fbb48cb500f31df26fa8560f31c11af596e5aea0" [label="local://context" shape="ellipse"];
  "sha256:eca4c618ba3012e7e05ed90ed3db935a05fd1fc667f5b8407f837a22048082ed" [label="copy{src=/tor2web-torrc, dest=/etc/tor/torrc}" shape="note"];
  "sha256:3cb3cf2e656a10cc601b648b630bb9eecbcebcd4c675038db6a68c550f27f32d" [label="sha256:3cb3cf2e656a10cc601b648b630bb9eecbcebcd4c675038db6a68c550f27f32d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:154b0605ce1498303974b28a864f29c80a4ff831e54d511da77963d108943dbd" [label=""];
  "sha256:154b0605ce1498303974b28a864f29c80a4ff831e54d511da77963d108943dbd" -> "sha256:4ca9f5c6d8ed00db504e4615a4e502f73da42de01276cedb1743b1c3636619bf" [label=""];
  "sha256:4ca9f5c6d8ed00db504e4615a4e502f73da42de01276cedb1743b1c3636619bf" -> "sha256:6a7a90e82186e36584b4844b27027c337238f6716b71133c377d537eb43a66a5" [label=""];
  "sha256:6a7a90e82186e36584b4844b27027c337238f6716b71133c377d537eb43a66a5" -> "sha256:eca4c618ba3012e7e05ed90ed3db935a05fd1fc667f5b8407f837a22048082ed" [label=""];
  "sha256:3c549ee4fa05926497e60f49fbb48cb500f31df26fa8560f31c11af596e5aea0" -> "sha256:eca4c618ba3012e7e05ed90ed3db935a05fd1fc667f5b8407f837a22048082ed" [label=""];
  "sha256:eca4c618ba3012e7e05ed90ed3db935a05fd1fc667f5b8407f837a22048082ed" -> "sha256:3cb3cf2e656a10cc601b648b630bb9eecbcebcd4c675038db6a68c550f27f32d" [label=""];
}

