[app/sources/448608647.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:18c96e9494f0800bfc3b22bb4449a328b675b92e28dcc89d8f73f40ad619d964" [label="/bin/sh -c dpkg --add-architecture i386" shape="box"];
  "sha256:6eefc01c6c6155f2f975f4dd1a4f844754867ff0db104328aa9a9e96c5c38431" [label="/bin/sh -c apt-get update &&   apt-get install -y g++-7-multilib &&   update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 60" shape="box"];
  "sha256:ee256aa9b2e32f8388bb83355294585acfa990f2bc6ba278b7c7648642519a49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d1a5d7ec56b3257fae32a8cba5f017da8b429248c4735a640d3b9ce7c8a683b2" [label="/bin/sh -c apt-get -y upgrade" shape="box"];
  "sha256:7003734bdb983fe329ec72928fc3e3b60f77f81e3e2f21c11fa90070049eb2a3" [label="/bin/sh -c apt-get install --no-install-recommends -y ccache cmake curl ca-certificates libsdl2-dev:i386 libsdl2-ttf-dev:i386  pkg-config:i386  libjansson-dev:i386 libspeex-dev:i386 libspeexdsp-dev:i386 libcurl4-openssl-dev:i386 libcrypto++-dev:i386 libfontconfig1-dev:i386 libfreetype6-dev:i386 libpng-dev:i386 libzip-dev:i386 libssl-dev:i386 ninja-build libicu-dev:i386" shape="box"];
  "sha256:d50d4a202ab6a8773a961dbdc72e79ac3b6aefec3afe92396588e1e4da5bedb9" [label="sha256:d50d4a202ab6a8773a961dbdc72e79ac3b6aefec3afe92396588e1e4da5bedb9" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:18c96e9494f0800bfc3b22bb4449a328b675b92e28dcc89d8f73f40ad619d964" [label=""];
  "sha256:18c96e9494f0800bfc3b22bb4449a328b675b92e28dcc89d8f73f40ad619d964" -> "sha256:6eefc01c6c6155f2f975f4dd1a4f844754867ff0db104328aa9a9e96c5c38431" [label=""];
  "sha256:6eefc01c6c6155f2f975f4dd1a4f844754867ff0db104328aa9a9e96c5c38431" -> "sha256:ee256aa9b2e32f8388bb83355294585acfa990f2bc6ba278b7c7648642519a49" [label=""];
  "sha256:ee256aa9b2e32f8388bb83355294585acfa990f2bc6ba278b7c7648642519a49" -> "sha256:d1a5d7ec56b3257fae32a8cba5f017da8b429248c4735a640d3b9ce7c8a683b2" [label=""];
  "sha256:d1a5d7ec56b3257fae32a8cba5f017da8b429248c4735a640d3b9ce7c8a683b2" -> "sha256:7003734bdb983fe329ec72928fc3e3b60f77f81e3e2f21c11fa90070049eb2a3" [label=""];
  "sha256:7003734bdb983fe329ec72928fc3e3b60f77f81e3e2f21c11fa90070049eb2a3" -> "sha256:d50d4a202ab6a8773a961dbdc72e79ac3b6aefec3afe92396588e1e4da5bedb9" [label=""];
}

