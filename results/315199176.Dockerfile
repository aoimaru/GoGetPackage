[app/sources/315199176.Dockerfile]
digraph {
  "sha256:d7e16516eb163f0bbd7ceb4db4739e065275eb7df910b487cb189da167251f18" [label="local://context" shape="ellipse"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:f4f76ab2037bdd6b5d60aeaa4c8ffd83d07221123a692c99e0ca3ba20c9d06a0" [label="/bin/sh -c apk add --no-cache $DNSCYPT_RUN_DEPS" shape="box"];
  "sha256:ebd374b29956866b39bb80b919c6e738ebd3ab5fb24338f93ddbb1d92c56b2ec" [label="/bin/sh -c apk add --no-cache $DNSCRYPT_BUILD_DEPS" shape="box"];
  "sha256:566ea3e2c692c141322a2126f1acb57feb3dca6defd1b55e309a96a0f73be8e0" [label="/bin/sh -c set -x &&     mkdir -p /tmp/src &&     cd /tmp/src &&     wget -O libsodium.tar.gz $LIBSODIUM_DOWNLOAD_URL &&     echo \"${LIBSODIUM_SHA256} *libsodium.tar.gz\" | sha256sum -c - &&     tar xzf libsodium.tar.gz &&     cd libsodium-${LIBSODIUM_VERSION} &&     ./configure CFLAGS=-Ofast --disable-dependency-tracking &&     make check && make install &&     ldconfig /usr/local/lib" shape="box"];
  "sha256:26504a364ed008c848e6627a509fdb46b098e6886dc5ff4ff64af1b1fba70cc0" [label="/bin/sh -c set -x &&     cd /tmp/src &&     git clone --branch=${DNSCRYPT_WRAPPER_GIT_BRANCH} ${DNSCRYPT_WRAPPER_GIT_URL} &&     cd dnscrypt-wrapper &&     make configure &&     ./configure CFLAGS=\"-Ofast -flto -fPIE -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -fstack-protector-strong -Wformat -Werror=format-security\"     LDFLAGS=\"-Wl,-z,now -Wl,-z,relro\" &&     make install" shape="box"];
  "sha256:69796d5b610d276ffa52566707c66a4450096b83358b39ac6759f24982595212" [label="copy{src=/usr/local/sbin/dnscrypt-wrapper, dest=/usr/local/sbin/dnscrypt-wrapper}" shape="note"];
  "sha256:1568a9b515d95e1e143f462ba0bd8667d41afa499057ebe276e7b13931bad59f" [label="copy{src=/usr/local/lib/libsodium.a, dest=/usr/local/lib/libsodium.a}" shape="note"];
  "sha256:29bc99522a0083c5dd676fd20079cf55e5f65fca1b7e3e5a569eee153d8a12ef" [label="copy{src=/usr/local/lib/libsodium.la, dest=/usr/local/lib/libsodium.la}" shape="note"];
  "sha256:a1ad0b56d4a333d4c815443dcaebe9a0bd0b3a471526f9f54ea86207504c7136" [label="copy{src=/usr/local/lib/libsodium.so.23.2.0, dest=/usr/local/lib/libsodium.so.23.2.0}" shape="note"];
  "sha256:0d14912a2bcae1168da1550094df1fc381c8ee74cfaa472b8820da180457d246" [label="/bin/sh -c set -x &&     cd /usr/local/lib/ &&     ln -sf libsodium.so.$SODIUM_LIB_VERSION libsodium.so.$SODIUM_LIB_VERSION_MAJOR &&     ln -sf libsodium.so.$SODIUM_LIB_VERSION libsodium.so &&     cd &&     mkdir -p /opt/dnscrypt/empty         /etc/service/watchdog         /etc/service/key-rotation         /etc/service/dnscrypt-wrapper &&     groupadd _dnscrypt-wrapper &&     useradd -g _dnscrypt-wrapper -s /dev/null -d /opt/dnscrypt/empty _dnscrypt-wrapper &&     groupadd _dnscrypt-signer &&     useradd -g _dnscrypt-signer -s /dev/null -d /dev/null _dnscrypt-signer &&     chown -R _dnscrypt-wrapper:_dnscrypt-wrapper /opt/dnscrypt" shape="box"];
  "sha256:8aee42cd8f6ae7c49e0de9b7ca9049f4173bc3287f2ddb275d8f9e75dbe26ba4" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:12965ea5dee5836111838971c3e7816e6ec7b00e09bbb8cb78c5f1452456ba41" [label="copy{src=/dnscrypt-wrapper.sh, dest=/etc/service/dnscrypt-wrapper/run}" shape="note"];
  "sha256:ecdb7c181e0cc31e6a06d8e5126ca61c22b9760248079a557130ecc2ec4b290c" [label="copy{src=/key-rotation.sh, dest=/etc/service/key-rotation/run}" shape="note"];
  "sha256:7171bacebe61ba0bed4aebbea60ae0e37f3c6082f983cc032ca661c7b2c87fe4" [label="copy{src=/watchdog.sh, dest=/etc/service/watchdog/run}" shape="note"];
  "sha256:430094007adc79821779ca150ddf7be6223fc685ec0f8bf67b39377849b2982f" [label="/bin/sh -c dnscrypt-wrapper -v" shape="box"];
  "sha256:61eea2ffb8ac83b8884300f07b7a5a46b887f802c539c2346d29db5edef1c19e" [label="sha256:61eea2ffb8ac83b8884300f07b7a5a46b887f802c539c2346d29db5edef1c19e" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:f4f76ab2037bdd6b5d60aeaa4c8ffd83d07221123a692c99e0ca3ba20c9d06a0" [label=""];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:ebd374b29956866b39bb80b919c6e738ebd3ab5fb24338f93ddbb1d92c56b2ec" [label=""];
  "sha256:ebd374b29956866b39bb80b919c6e738ebd3ab5fb24338f93ddbb1d92c56b2ec" -> "sha256:566ea3e2c692c141322a2126f1acb57feb3dca6defd1b55e309a96a0f73be8e0" [label=""];
  "sha256:566ea3e2c692c141322a2126f1acb57feb3dca6defd1b55e309a96a0f73be8e0" -> "sha256:26504a364ed008c848e6627a509fdb46b098e6886dc5ff4ff64af1b1fba70cc0" [label=""];
  "sha256:f4f76ab2037bdd6b5d60aeaa4c8ffd83d07221123a692c99e0ca3ba20c9d06a0" -> "sha256:69796d5b610d276ffa52566707c66a4450096b83358b39ac6759f24982595212" [label=""];
  "sha256:26504a364ed008c848e6627a509fdb46b098e6886dc5ff4ff64af1b1fba70cc0" -> "sha256:69796d5b610d276ffa52566707c66a4450096b83358b39ac6759f24982595212" [label=""];
  "sha256:69796d5b610d276ffa52566707c66a4450096b83358b39ac6759f24982595212" -> "sha256:1568a9b515d95e1e143f462ba0bd8667d41afa499057ebe276e7b13931bad59f" [label=""];
  "sha256:26504a364ed008c848e6627a509fdb46b098e6886dc5ff4ff64af1b1fba70cc0" -> "sha256:1568a9b515d95e1e143f462ba0bd8667d41afa499057ebe276e7b13931bad59f" [label=""];
  "sha256:1568a9b515d95e1e143f462ba0bd8667d41afa499057ebe276e7b13931bad59f" -> "sha256:29bc99522a0083c5dd676fd20079cf55e5f65fca1b7e3e5a569eee153d8a12ef" [label=""];
  "sha256:26504a364ed008c848e6627a509fdb46b098e6886dc5ff4ff64af1b1fba70cc0" -> "sha256:29bc99522a0083c5dd676fd20079cf55e5f65fca1b7e3e5a569eee153d8a12ef" [label=""];
  "sha256:29bc99522a0083c5dd676fd20079cf55e5f65fca1b7e3e5a569eee153d8a12ef" -> "sha256:a1ad0b56d4a333d4c815443dcaebe9a0bd0b3a471526f9f54ea86207504c7136" [label=""];
  "sha256:26504a364ed008c848e6627a509fdb46b098e6886dc5ff4ff64af1b1fba70cc0" -> "sha256:a1ad0b56d4a333d4c815443dcaebe9a0bd0b3a471526f9f54ea86207504c7136" [label=""];
  "sha256:a1ad0b56d4a333d4c815443dcaebe9a0bd0b3a471526f9f54ea86207504c7136" -> "sha256:0d14912a2bcae1168da1550094df1fc381c8ee74cfaa472b8820da180457d246" [label=""];
  "sha256:0d14912a2bcae1168da1550094df1fc381c8ee74cfaa472b8820da180457d246" -> "sha256:8aee42cd8f6ae7c49e0de9b7ca9049f4173bc3287f2ddb275d8f9e75dbe26ba4" [label=""];
  "sha256:d7e16516eb163f0bbd7ceb4db4739e065275eb7df910b487cb189da167251f18" -> "sha256:8aee42cd8f6ae7c49e0de9b7ca9049f4173bc3287f2ddb275d8f9e75dbe26ba4" [label=""];
  "sha256:8aee42cd8f6ae7c49e0de9b7ca9049f4173bc3287f2ddb275d8f9e75dbe26ba4" -> "sha256:12965ea5dee5836111838971c3e7816e6ec7b00e09bbb8cb78c5f1452456ba41" [label=""];
  "sha256:d7e16516eb163f0bbd7ceb4db4739e065275eb7df910b487cb189da167251f18" -> "sha256:12965ea5dee5836111838971c3e7816e6ec7b00e09bbb8cb78c5f1452456ba41" [label=""];
  "sha256:12965ea5dee5836111838971c3e7816e6ec7b00e09bbb8cb78c5f1452456ba41" -> "sha256:ecdb7c181e0cc31e6a06d8e5126ca61c22b9760248079a557130ecc2ec4b290c" [label=""];
  "sha256:d7e16516eb163f0bbd7ceb4db4739e065275eb7df910b487cb189da167251f18" -> "sha256:ecdb7c181e0cc31e6a06d8e5126ca61c22b9760248079a557130ecc2ec4b290c" [label=""];
  "sha256:ecdb7c181e0cc31e6a06d8e5126ca61c22b9760248079a557130ecc2ec4b290c" -> "sha256:7171bacebe61ba0bed4aebbea60ae0e37f3c6082f983cc032ca661c7b2c87fe4" [label=""];
  "sha256:d7e16516eb163f0bbd7ceb4db4739e065275eb7df910b487cb189da167251f18" -> "sha256:7171bacebe61ba0bed4aebbea60ae0e37f3c6082f983cc032ca661c7b2c87fe4" [label=""];
  "sha256:7171bacebe61ba0bed4aebbea60ae0e37f3c6082f983cc032ca661c7b2c87fe4" -> "sha256:430094007adc79821779ca150ddf7be6223fc685ec0f8bf67b39377849b2982f" [label=""];
  "sha256:430094007adc79821779ca150ddf7be6223fc685ec0f8bf67b39377849b2982f" -> "sha256:61eea2ffb8ac83b8884300f07b7a5a46b887f802c539c2346d29db5edef1c19e" [label=""];
}

