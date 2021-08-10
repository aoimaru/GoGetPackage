[app/sources/224072247.Dockerfile]
digraph {
  "sha256:259cd0dde6c142309be0ffeac5e5c0deaa3b58f12718ecb81a14a5237b9f30f7" [label="local://context" shape="ellipse"];
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" [label="docker-image://docker.io/library/python:alpine" shape="ellipse"];
  "sha256:053a583a8c328327464f170e38fd2c4f0586641afea283205c39c1bd41717784" [label="/bin/sh -c pip3 install tornado" shape="box"];
  "sha256:b4fba9e173eee18cfaa4b2ab2dd1edebb6058df4075e7ab45ec3902942c94a0d" [label="/bin/sh -c mkdir -p /service" shape="box"];
  "sha256:d78bd7a1e4014a2a58ccfbd69674ac63eedf3e9a29fab61c7e34af6b7d732d9e" [label="mkdir{path=/service}" shape="note"];
  "sha256:4fbeaf959f997ecffd5569fb1131f97619807c0921e03e5318f1b0cc14921e00" [label="/bin/sh -c apk update && apk add ca-certificates wget && update-ca-certificates" shape="box"];
  "sha256:8b8c0c52953198702edf081b640324534f1abd90b6d88ca5184e59dd3c0388dc" [label="/bin/sh -c apk add --no-cache \t\tautoconf \t\tautomake \t\tbuild-base \t\tfile \t\tfile-dev \t\tlibtool \t\tlibmagic \t\topenssl-dev \t&& wget https://github.com/VirusTotal/yara/archive/v3.5.0.tar.gz \t&& tar xf v3.5.0.tar.gz \t&& rm -rf /var/cache/apk/* yara-3.5.0.tar.gz" shape="box"];
  "sha256:ee9e7d042b2f4d5d8a25676411574be666eb1ee5007f7d91ee45829a2419a558" [label="mkdir{path=/service/yara-3.5.0}" shape="note"];
  "sha256:575a8fd88f217c9621958752b66e3aff5ea73794e22c9a0f3f8d8409ec750638" [label="/bin/sh -c ./bootstrap.sh \t&& ./configure \t\t--with-crypto \t\t--enable-magic \t&& make \t&& make install" shape="box"];
  "sha256:9c785626e608328e017147b2b537c3a1effb03d885565a68db8325c88e77ea10" [label="mkdir{path=/service}" shape="note"];
  "sha256:90dd11ad56f73ef2c68291b598b030bfff8553e09b7714df8a9e088c40ce3d4a" [label="/bin/sh -c pip3 install yara-python requests" shape="box"];
  "sha256:6e63d5fa121f7deb4498a18a043c9a91988172f4d62b2b03a614fe2a4a47a127" [label="/bin/sh -c apk del --purge \t\tautoconf \t\tautomake \t\tbuild-base \t&& rm -rf /var/cache/apk/* yara-3.5.0" shape="box"];
  "sha256:feb3176b5fe68bd49a778980cc3e6e2b31d2cd12060ceca8dd1424b6a0cba165" [label="copy{src=/LICENSE, dest=/service}" shape="note"];
  "sha256:67565d492b3808d9fdaf07c39a1518295b283b3f0ea5a198ddfdad2b9eae608e" [label="copy{src=/README.md, dest=/service}" shape="note"];
  "sha256:72ed99bc2a5415c497cb32f815033e513562fc14893d7140d66b62b7f70f92e2" [label="copy{src=/getrules.py, dest=/service}" shape="note"];
  "sha256:67f361e785f8f37a3c1ef16a672013bdf5414b19c2357d3b32d4852cee338c1c" [label="copy{src=/yara_worker.py, dest=/service}" shape="note"];
  "sha256:6bc42fa1f421f608c4b2a68913c3d29377091589f87aa53d24a6bdff239b1e25" [label="copy{src=/rules.yar, dest=/service}" shape="note"];
  "sha256:273fc08933767be36fa1a225352c35cd29986b85b0af76fd49e9074ce9428801" [label="/bin/sh -c python3 getrules.py" shape="box"];
  "sha256:50fb8b901d2383820d3a465574e4ba48ab6c5739704b0539bae8f85532e00756" [label="copy{src=/service.conf, dest=/service/service.conf}" shape="note"];
  "sha256:9488058510294e57ac44180247748b924a5645c462ae19f0d75354ddc822249d" [label="sha256:9488058510294e57ac44180247748b924a5645c462ae19f0d75354ddc822249d" shape="plaintext"];
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" -> "sha256:053a583a8c328327464f170e38fd2c4f0586641afea283205c39c1bd41717784" [label=""];
  "sha256:053a583a8c328327464f170e38fd2c4f0586641afea283205c39c1bd41717784" -> "sha256:b4fba9e173eee18cfaa4b2ab2dd1edebb6058df4075e7ab45ec3902942c94a0d" [label=""];
  "sha256:b4fba9e173eee18cfaa4b2ab2dd1edebb6058df4075e7ab45ec3902942c94a0d" -> "sha256:d78bd7a1e4014a2a58ccfbd69674ac63eedf3e9a29fab61c7e34af6b7d732d9e" [label=""];
  "sha256:d78bd7a1e4014a2a58ccfbd69674ac63eedf3e9a29fab61c7e34af6b7d732d9e" -> "sha256:4fbeaf959f997ecffd5569fb1131f97619807c0921e03e5318f1b0cc14921e00" [label=""];
  "sha256:4fbeaf959f997ecffd5569fb1131f97619807c0921e03e5318f1b0cc14921e00" -> "sha256:8b8c0c52953198702edf081b640324534f1abd90b6d88ca5184e59dd3c0388dc" [label=""];
  "sha256:8b8c0c52953198702edf081b640324534f1abd90b6d88ca5184e59dd3c0388dc" -> "sha256:ee9e7d042b2f4d5d8a25676411574be666eb1ee5007f7d91ee45829a2419a558" [label=""];
  "sha256:ee9e7d042b2f4d5d8a25676411574be666eb1ee5007f7d91ee45829a2419a558" -> "sha256:575a8fd88f217c9621958752b66e3aff5ea73794e22c9a0f3f8d8409ec750638" [label=""];
  "sha256:575a8fd88f217c9621958752b66e3aff5ea73794e22c9a0f3f8d8409ec750638" -> "sha256:9c785626e608328e017147b2b537c3a1effb03d885565a68db8325c88e77ea10" [label=""];
  "sha256:9c785626e608328e017147b2b537c3a1effb03d885565a68db8325c88e77ea10" -> "sha256:90dd11ad56f73ef2c68291b598b030bfff8553e09b7714df8a9e088c40ce3d4a" [label=""];
  "sha256:90dd11ad56f73ef2c68291b598b030bfff8553e09b7714df8a9e088c40ce3d4a" -> "sha256:6e63d5fa121f7deb4498a18a043c9a91988172f4d62b2b03a614fe2a4a47a127" [label=""];
  "sha256:6e63d5fa121f7deb4498a18a043c9a91988172f4d62b2b03a614fe2a4a47a127" -> "sha256:feb3176b5fe68bd49a778980cc3e6e2b31d2cd12060ceca8dd1424b6a0cba165" [label=""];
  "sha256:259cd0dde6c142309be0ffeac5e5c0deaa3b58f12718ecb81a14a5237b9f30f7" -> "sha256:feb3176b5fe68bd49a778980cc3e6e2b31d2cd12060ceca8dd1424b6a0cba165" [label=""];
  "sha256:feb3176b5fe68bd49a778980cc3e6e2b31d2cd12060ceca8dd1424b6a0cba165" -> "sha256:67565d492b3808d9fdaf07c39a1518295b283b3f0ea5a198ddfdad2b9eae608e" [label=""];
  "sha256:259cd0dde6c142309be0ffeac5e5c0deaa3b58f12718ecb81a14a5237b9f30f7" -> "sha256:67565d492b3808d9fdaf07c39a1518295b283b3f0ea5a198ddfdad2b9eae608e" [label=""];
  "sha256:67565d492b3808d9fdaf07c39a1518295b283b3f0ea5a198ddfdad2b9eae608e" -> "sha256:72ed99bc2a5415c497cb32f815033e513562fc14893d7140d66b62b7f70f92e2" [label=""];
  "sha256:259cd0dde6c142309be0ffeac5e5c0deaa3b58f12718ecb81a14a5237b9f30f7" -> "sha256:72ed99bc2a5415c497cb32f815033e513562fc14893d7140d66b62b7f70f92e2" [label=""];
  "sha256:72ed99bc2a5415c497cb32f815033e513562fc14893d7140d66b62b7f70f92e2" -> "sha256:67f361e785f8f37a3c1ef16a672013bdf5414b19c2357d3b32d4852cee338c1c" [label=""];
  "sha256:259cd0dde6c142309be0ffeac5e5c0deaa3b58f12718ecb81a14a5237b9f30f7" -> "sha256:67f361e785f8f37a3c1ef16a672013bdf5414b19c2357d3b32d4852cee338c1c" [label=""];
  "sha256:67f361e785f8f37a3c1ef16a672013bdf5414b19c2357d3b32d4852cee338c1c" -> "sha256:6bc42fa1f421f608c4b2a68913c3d29377091589f87aa53d24a6bdff239b1e25" [label=""];
  "sha256:259cd0dde6c142309be0ffeac5e5c0deaa3b58f12718ecb81a14a5237b9f30f7" -> "sha256:6bc42fa1f421f608c4b2a68913c3d29377091589f87aa53d24a6bdff239b1e25" [label=""];
  "sha256:6bc42fa1f421f608c4b2a68913c3d29377091589f87aa53d24a6bdff239b1e25" -> "sha256:273fc08933767be36fa1a225352c35cd29986b85b0af76fd49e9074ce9428801" [label=""];
  "sha256:273fc08933767be36fa1a225352c35cd29986b85b0af76fd49e9074ce9428801" -> "sha256:50fb8b901d2383820d3a465574e4ba48ab6c5739704b0539bae8f85532e00756" [label=""];
  "sha256:259cd0dde6c142309be0ffeac5e5c0deaa3b58f12718ecb81a14a5237b9f30f7" -> "sha256:50fb8b901d2383820d3a465574e4ba48ab6c5739704b0539bae8f85532e00756" [label=""];
  "sha256:50fb8b901d2383820d3a465574e4ba48ab6c5739704b0539bae8f85532e00756" -> "sha256:9488058510294e57ac44180247748b924a5645c462ae19f0d75354ddc822249d" [label=""];
}

