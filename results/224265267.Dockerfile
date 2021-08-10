[app/sources/224265267.Dockerfile]
digraph {
  "sha256:b7c0223adbd724f50b4717bdbbb0e5e8413975c03fee47bb33053a4f8d844159" [label="docker-image://docker.io/library/rabbitmq:management" shape="ellipse"];
  "sha256:ca83cfaccbcf9249e22f57c1193781aae1601d17a291d05424594437d806c67a" [label="/bin/sh -c rabbitmq-plugins enable --offline     rabbitmq_federation     rabbitmq_federation_management     rabbitmq_shovel     rabbitmq_shovel_management     rabbitmq_mqtt     rabbitmq_auth_backend_ldap     rabbitmq_management" shape="box"];
  "sha256:8c651f9390a605f151789345539bbb9bb1d51159cc6753a18a5892c4cb67a040" [label="/bin/sh -c echo \"deb http://http.us.debian.org/debian sid main non-free contrib\" >> /etc/apt/sources.list" shape="box"];
  "sha256:1b18712a60702cdec4a3fe7bc7bcbfde22cb9fbfe896ef889873d3a72614dac5" [label="/bin/sh -c apt-get update && apt-get dist-upgrade -fy" shape="box"];
  "sha256:7ad562aa116e5d190a2a1e21483453967acb43da7773c08830b1743345fb030d" [label="/bin/sh -c apt-get install -fy build-essential zip wget git python xsltproc erlang-dev erlang-src" shape="box"];
  "sha256:a753afd808db7ace34a767fa5bf997d06885829865f4882a2eff2e2be9d2cfe6" [label="/bin/sh -c mkdir /rabbitmq" shape="box"];
  "sha256:27712be2107835cc9a2d878c2bf25914ec55d4e00450d5bf105cdcbdc5e02a3d" [label="mkdir{path=/rabbitmq}" shape="note"];
  "sha256:37e301a19f9c87ee847e15e7d63a1923acc63594313f3f47ac95cef88a6fd08a" [label="/bin/sh -c git clone https://github.com/rabbitmq/rabbitmq-public-umbrella.git" shape="box"];
  "sha256:7973555af69feb0ecc68838ae73f09e02fd653ed18a1defc375b002a6b5f6ee4" [label="mkdir{path=/rabbitmq/rabbitmq-public-umbrella}" shape="note"];
  "sha256:71016c77ec99bc0deeb196a53a63fc3e1ac985628cace034a23382d0c2d049a4" [label="/bin/sh -c make co" shape="box"];
  "sha256:18b5440c85bfc85865d3c0c976874d5219b255a902ad5a8cc2401d1ddc2bc43d" [label="mkdir{path=/rabbitmq/rabbitmq-public-umbrella/deps}" shape="note"];
  "sha256:2e4e86e014dea23a2314c9441d5d5a34dbb3bbd4c5ac629a4240742362ab5764" [label="/bin/sh -c git clone https://github.com/tonyg/udp-exchange.git" shape="box"];
  "sha256:1e1187b53b31ce14b337b18f8cd07a0e3f8a65da551ca2b5d301920737a32cb1" [label="mkdir{path=/rabbitmq/rabbitmq-public-umbrella/deps/udp-exchange}" shape="note"];
  "sha256:cef188ea374222198fb8f98ea6d3edcd472d26b6ca40f3feabd310543dd84a74" [label="/bin/sh -c cat ../rabbitmq_metronome/Makefile | sed 's/rabbitmq_metronome/rabbitmq_udp_exchange/' > Makefile &&     cp ../rabbitmq_metronome/erlang.mk . &&     cp ../rabbitmq_metronome/rabbitmq-components.mk . &&     make && make dist" shape="box"];
  "sha256:436a0383631b4be5153ff3ccba04e0937f47befb8fe625fa513a2aaa96bcdc1a" [label="/bin/sh -c cp plugins/*.ez /usr/lib/rabbitmq/lib/rabbitmq_server-*/plugins/ &&     rm -rf /usr/lib/rabbitmq/lib/rabbitmq_server-*/plugins/amqp_client.ez" shape="box"];
  "sha256:9e28a70de1e493aa0b6104de109ddc6439ea33f6942ab21f0715c9300d380ba8" [label="/bin/sh -c rabbitmq-plugins enable --offline rabbitmq_udp_exchange" shape="box"];
  "sha256:aca8c365d2d6c678ad12c9f062dbf0c7edd4f89a6007f3272a828d117ca6baa2" [label="sha256:aca8c365d2d6c678ad12c9f062dbf0c7edd4f89a6007f3272a828d117ca6baa2" shape="plaintext"];
  "sha256:b7c0223adbd724f50b4717bdbbb0e5e8413975c03fee47bb33053a4f8d844159" -> "sha256:ca83cfaccbcf9249e22f57c1193781aae1601d17a291d05424594437d806c67a" [label=""];
  "sha256:ca83cfaccbcf9249e22f57c1193781aae1601d17a291d05424594437d806c67a" -> "sha256:8c651f9390a605f151789345539bbb9bb1d51159cc6753a18a5892c4cb67a040" [label=""];
  "sha256:8c651f9390a605f151789345539bbb9bb1d51159cc6753a18a5892c4cb67a040" -> "sha256:1b18712a60702cdec4a3fe7bc7bcbfde22cb9fbfe896ef889873d3a72614dac5" [label=""];
  "sha256:1b18712a60702cdec4a3fe7bc7bcbfde22cb9fbfe896ef889873d3a72614dac5" -> "sha256:7ad562aa116e5d190a2a1e21483453967acb43da7773c08830b1743345fb030d" [label=""];
  "sha256:7ad562aa116e5d190a2a1e21483453967acb43da7773c08830b1743345fb030d" -> "sha256:a753afd808db7ace34a767fa5bf997d06885829865f4882a2eff2e2be9d2cfe6" [label=""];
  "sha256:a753afd808db7ace34a767fa5bf997d06885829865f4882a2eff2e2be9d2cfe6" -> "sha256:27712be2107835cc9a2d878c2bf25914ec55d4e00450d5bf105cdcbdc5e02a3d" [label=""];
  "sha256:27712be2107835cc9a2d878c2bf25914ec55d4e00450d5bf105cdcbdc5e02a3d" -> "sha256:37e301a19f9c87ee847e15e7d63a1923acc63594313f3f47ac95cef88a6fd08a" [label=""];
  "sha256:37e301a19f9c87ee847e15e7d63a1923acc63594313f3f47ac95cef88a6fd08a" -> "sha256:7973555af69feb0ecc68838ae73f09e02fd653ed18a1defc375b002a6b5f6ee4" [label=""];
  "sha256:7973555af69feb0ecc68838ae73f09e02fd653ed18a1defc375b002a6b5f6ee4" -> "sha256:71016c77ec99bc0deeb196a53a63fc3e1ac985628cace034a23382d0c2d049a4" [label=""];
  "sha256:71016c77ec99bc0deeb196a53a63fc3e1ac985628cace034a23382d0c2d049a4" -> "sha256:18b5440c85bfc85865d3c0c976874d5219b255a902ad5a8cc2401d1ddc2bc43d" [label=""];
  "sha256:18b5440c85bfc85865d3c0c976874d5219b255a902ad5a8cc2401d1ddc2bc43d" -> "sha256:2e4e86e014dea23a2314c9441d5d5a34dbb3bbd4c5ac629a4240742362ab5764" [label=""];
  "sha256:2e4e86e014dea23a2314c9441d5d5a34dbb3bbd4c5ac629a4240742362ab5764" -> "sha256:1e1187b53b31ce14b337b18f8cd07a0e3f8a65da551ca2b5d301920737a32cb1" [label=""];
  "sha256:1e1187b53b31ce14b337b18f8cd07a0e3f8a65da551ca2b5d301920737a32cb1" -> "sha256:cef188ea374222198fb8f98ea6d3edcd472d26b6ca40f3feabd310543dd84a74" [label=""];
  "sha256:cef188ea374222198fb8f98ea6d3edcd472d26b6ca40f3feabd310543dd84a74" -> "sha256:436a0383631b4be5153ff3ccba04e0937f47befb8fe625fa513a2aaa96bcdc1a" [label=""];
  "sha256:436a0383631b4be5153ff3ccba04e0937f47befb8fe625fa513a2aaa96bcdc1a" -> "sha256:9e28a70de1e493aa0b6104de109ddc6439ea33f6942ab21f0715c9300d380ba8" [label=""];
  "sha256:9e28a70de1e493aa0b6104de109ddc6439ea33f6942ab21f0715c9300d380ba8" -> "sha256:aca8c365d2d6c678ad12c9f062dbf0c7edd4f89a6007f3272a828d117ca6baa2" [label=""];
}

