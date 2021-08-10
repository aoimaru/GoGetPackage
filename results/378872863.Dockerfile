[app/sources/378872863.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:f80a5c06d0e59372b2d20d94917b55acea6688bcc2bb664cad38bfbd46a69234" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:97dc2aa194c1e13530b16d39c8b823025cddc138132ef373c04aebc849001075" [label="/bin/sh -c apt-get update && apt-get install -y git" shape="box"];
  "sha256:f7c05982085db414939b578ca7e9f3021ea504c3ec53eff98e97ba62410a4f23" [label="/bin/sh -c apt-get update && apt-get install -y g++" shape="box"];
  "sha256:aeac97b82033e3f04b9449fe8b2fc3fffc3ef150bef2a89be676d7cf87042350" [label="/bin/sh -c apt-get update && apt-get install -y autotools-dev libtool m4 automake autoconf pkg-config" shape="box"];
  "sha256:1bc1515e44ae038381055b7fa1c054b1dfa6059086ead4cb0470ead6e9ab4527" [label="/bin/sh -c apt-get update && apt-get install -y zlib1g-dev libssl1.0-dev curl ccache bsdmainutils cmake" shape="box"];
  "sha256:3a74bf8c68d732037cc1a731370bb0bb76bd9ea5ce9b9623683d521d8ae3cb4b" [label="/bin/sh -c apt-get update && apt-get install -y python3 python3-dev" shape="box"];
  "sha256:7ed5bec8ce9290dffbd5fc5e34b26f4a29f80b73bb1e420830722f2cdaa8c93c" [label="/bin/sh -c apt-get update && apt-get install -y python3-pip" shape="box"];
  "sha256:151f220ef0635b1eb5c5674ed6bc41e3d6a01c4ecc42c96c761a24dee0bb4a0b" [label="/bin/sh -c pip3 install pyzmq # really needed?" shape="box"];
  "sha256:d6b3bb179295fbce4ef38a8c8d78bd4127215099be495d15048fa8e34578fe75" [label="/bin/sh -c git clone https://github.com/dashpay/dash_hash" shape="box"];
  "sha256:541e4a0fcfa92f141beb2608099b4271e053010311f97a01a3359e2b03a82169" [label="/bin/sh -c cd dash_hash && python3 setup.py install" shape="box"];
  "sha256:b013d441f3ba8a9a19085f4ab8e825f8d95b28a7451ebd1715c34f51fafb2701" [label="/bin/sh -c groupadd -g ${GROUP_ID} dash" shape="box"];
  "sha256:6f92d735c6aee4c0999bf6e446ce96924a9edffec1b49d42792442f5b241f217" [label="/bin/sh -c useradd -u ${USER_ID} -g dash -s /bin/bash -m -d /dash dash" shape="box"];
  "sha256:7aa2b2ffe92ae705d9740fbe8e0f779c4bcf76de3fed3f7232289bebd7b1785f" [label="local://context" shape="ellipse"];
  "sha256:8f59794ce4543e5395d3790a4966a02b1d945485c1034768551c15e98c46acc2" [label="copy{src=/matrix.sh, dest=/tmp/matrix.sh}" shape="note"];
  "sha256:d4cdda34cf65917afaf9d92b514033d29735188899a1f5fcd9dc0e269c994e96" [label="/bin/sh -c . /tmp/matrix.sh &&   if [ -n \"$DPKG_ADD_ARCH\" ]; then dpkg --add-architecture \"$DPKG_ADD_ARCH\" ; fi &&   if [ -n \"$PACKAGES\" ]; then apt-get update && apt-get install -y --no-install-recommends --no-upgrade $PACKAGES; fi" shape="box"];
  "sha256:96405f7cdfef644cc352a47d828966100b3023bbdb0fdb149d152857cf4374d3" [label="/bin/sh -c update-alternatives --set i686-w64-mingw32-gcc /usr/bin/i686-w64-mingw32-gcc-posix;   update-alternatives --set i686-w64-mingw32-g++  /usr/bin/i686-w64-mingw32-g++-posix;   update-alternatives --set x86_64-w64-mingw32-gcc  /usr/bin/x86_64-w64-mingw32-gcc-posix;   update-alternatives --set x86_64-w64-mingw32-g++  /usr/bin/x86_64-w64-mingw32-g++-posix;   exit 0" shape="box"];
  "sha256:6a552d28d55bfc52fa7f7138da4316f8b38c3039677b4be89421ba8c4002dbe0" [label="/bin/sh -c mkdir /dash-src &&   mkdir -p /cache/ccache &&   mkdir /cache/depends &&   mkdir /cache/sdk-sources &&   chown $USER_ID:$GROUP_ID /dash-src &&   chown $USER_ID:$GROUP_ID /cache &&   chown $USER_ID:$GROUP_ID /cache -R" shape="box"];
  "sha256:221e482c7874fced13fc6077731d57a1727b39a566d3621fc10d03cf53cb88b4" [label="mkdir{path=/dash-src}" shape="note"];
  "sha256:53a09efdf6b3994fe2e9eeb7bddf7b1e1610225c87d7136fd66b64b1a2cd5799" [label="sha256:53a09efdf6b3994fe2e9eeb7bddf7b1e1610225c87d7136fd66b64b1a2cd5799" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:f80a5c06d0e59372b2d20d94917b55acea6688bcc2bb664cad38bfbd46a69234" [label=""];
  "sha256:f80a5c06d0e59372b2d20d94917b55acea6688bcc2bb664cad38bfbd46a69234" -> "sha256:97dc2aa194c1e13530b16d39c8b823025cddc138132ef373c04aebc849001075" [label=""];
  "sha256:97dc2aa194c1e13530b16d39c8b823025cddc138132ef373c04aebc849001075" -> "sha256:f7c05982085db414939b578ca7e9f3021ea504c3ec53eff98e97ba62410a4f23" [label=""];
  "sha256:f7c05982085db414939b578ca7e9f3021ea504c3ec53eff98e97ba62410a4f23" -> "sha256:aeac97b82033e3f04b9449fe8b2fc3fffc3ef150bef2a89be676d7cf87042350" [label=""];
  "sha256:aeac97b82033e3f04b9449fe8b2fc3fffc3ef150bef2a89be676d7cf87042350" -> "sha256:1bc1515e44ae038381055b7fa1c054b1dfa6059086ead4cb0470ead6e9ab4527" [label=""];
  "sha256:1bc1515e44ae038381055b7fa1c054b1dfa6059086ead4cb0470ead6e9ab4527" -> "sha256:3a74bf8c68d732037cc1a731370bb0bb76bd9ea5ce9b9623683d521d8ae3cb4b" [label=""];
  "sha256:3a74bf8c68d732037cc1a731370bb0bb76bd9ea5ce9b9623683d521d8ae3cb4b" -> "sha256:7ed5bec8ce9290dffbd5fc5e34b26f4a29f80b73bb1e420830722f2cdaa8c93c" [label=""];
  "sha256:7ed5bec8ce9290dffbd5fc5e34b26f4a29f80b73bb1e420830722f2cdaa8c93c" -> "sha256:151f220ef0635b1eb5c5674ed6bc41e3d6a01c4ecc42c96c761a24dee0bb4a0b" [label=""];
  "sha256:151f220ef0635b1eb5c5674ed6bc41e3d6a01c4ecc42c96c761a24dee0bb4a0b" -> "sha256:d6b3bb179295fbce4ef38a8c8d78bd4127215099be495d15048fa8e34578fe75" [label=""];
  "sha256:d6b3bb179295fbce4ef38a8c8d78bd4127215099be495d15048fa8e34578fe75" -> "sha256:541e4a0fcfa92f141beb2608099b4271e053010311f97a01a3359e2b03a82169" [label=""];
  "sha256:541e4a0fcfa92f141beb2608099b4271e053010311f97a01a3359e2b03a82169" -> "sha256:b013d441f3ba8a9a19085f4ab8e825f8d95b28a7451ebd1715c34f51fafb2701" [label=""];
  "sha256:b013d441f3ba8a9a19085f4ab8e825f8d95b28a7451ebd1715c34f51fafb2701" -> "sha256:6f92d735c6aee4c0999bf6e446ce96924a9edffec1b49d42792442f5b241f217" [label=""];
  "sha256:6f92d735c6aee4c0999bf6e446ce96924a9edffec1b49d42792442f5b241f217" -> "sha256:8f59794ce4543e5395d3790a4966a02b1d945485c1034768551c15e98c46acc2" [label=""];
  "sha256:7aa2b2ffe92ae705d9740fbe8e0f779c4bcf76de3fed3f7232289bebd7b1785f" -> "sha256:8f59794ce4543e5395d3790a4966a02b1d945485c1034768551c15e98c46acc2" [label=""];
  "sha256:8f59794ce4543e5395d3790a4966a02b1d945485c1034768551c15e98c46acc2" -> "sha256:d4cdda34cf65917afaf9d92b514033d29735188899a1f5fcd9dc0e269c994e96" [label=""];
  "sha256:d4cdda34cf65917afaf9d92b514033d29735188899a1f5fcd9dc0e269c994e96" -> "sha256:96405f7cdfef644cc352a47d828966100b3023bbdb0fdb149d152857cf4374d3" [label=""];
  "sha256:96405f7cdfef644cc352a47d828966100b3023bbdb0fdb149d152857cf4374d3" -> "sha256:6a552d28d55bfc52fa7f7138da4316f8b38c3039677b4be89421ba8c4002dbe0" [label=""];
  "sha256:6a552d28d55bfc52fa7f7138da4316f8b38c3039677b4be89421ba8c4002dbe0" -> "sha256:221e482c7874fced13fc6077731d57a1727b39a566d3621fc10d03cf53cb88b4" [label=""];
  "sha256:221e482c7874fced13fc6077731d57a1727b39a566d3621fc10d03cf53cb88b4" -> "sha256:53a09efdf6b3994fe2e9eeb7bddf7b1e1610225c87d7136fd66b64b1a2cd5799" [label=""];
}

