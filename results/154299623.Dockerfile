[app/sources/154299623.Dockerfile]
digraph {
  "sha256:8bcf786a632d0e76fb7ba59a2149061665b21b979d991e8094a121dcac10139e" [label="docker-image://docker.io/runnable/base:1.0.0" shape="ellipse"];
  "sha256:cdc2fb566dd1a51d6b37bcc1890f779353056b874a5362c74d63d74e0f7f524a" [label="/bin/sh -c groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq" shape="box"];
  "sha256:91ba6a4cca8a8210d39c660378c17c068a2336978cf8eb0e629261e4ff6861be" [label="/bin/sh -c set -ex;   key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA';   export GNUPGHOME=\"$(mktemp -d)\";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\";   gpg --export \"$key\" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg;   rm -r \"$GNUPGHOME\";   apt-key list" shape="box"];
  "sha256:b18c97866895c82a0c6f56c26c77c569f1b07205501a11c24026d1607da3f8c9" [label="/bin/sh -c echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list" shape="box"];
  "sha256:002c37939231ec752dc4c99b55242888e224825e5d4e6fa51512f6dc5f9fd975" [label="/bin/sh -c apt-get update   && apt-get install -y --no-install-recommends     erlang-asn1     erlang-base-hipe     erlang-crypto     erlang-eldap     erlang-inets     erlang-mnesia     erlang-nox     erlang-os-mon     erlang-public-key     erlang-ssl     erlang-xmerl   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ecefe8c452004b2b25a21cf5d042fb59398f82cdd44e276f3714868ea0e2c228" [label="/bin/sh -c set -ex;   key='0A9AF2115F4687BD29803A206B73A36E6026DFCA';   export GNUPGHOME=\"$(mktemp -d)\";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\";   gpg --export \"$key\" > /etc/apt/trusted.gpg.d/rabbitmq.gpg;   rm -r \"$GNUPGHOME\";   apt-key list" shape="box"];
  "sha256:52e9012f412d91b133099dae3dd8c60f8138ed1be06cf51e69441bb9d079436e" [label="/bin/sh -c echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list" shape="box"];
  "sha256:f797e6b2616a4ae0f79d95a0002b755a662555e1daba3eee9d8a56bd105e13f7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     rabbitmq-server=$RABBITMQ_DEBIAN_VERSION   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:36a9e296fe098a257e7aa6af5a5e4d4e5f6015732683e77deabd863a1f6089cc" [label="/bin/sh -c mkdir -p /var/lib/rabbitmq /etc/rabbitmq   && echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config   && chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq   && chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq" shape="box"];
  "sha256:98d2054d41d115758a72259b79b08c0ed537521dd8b5f65b39e9c52f474b1190" [label="/bin/sh -c ln -sf /var/lib/rabbitmq/.erlang.cookie /root/" shape="box"];
  "sha256:94d6615486b5523504514e0b52c727479f6a6798af13aed265b8cdf9a95820be" [label="/bin/sh -c ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins" shape="box"];
  "sha256:b39ffbd1d4ea19f012cc7e3a4767fa2d7c0c6a743d23fda662b2a8c2b6776146" [label="/bin/sh -c rabbitmq-plugins enable --offline rabbitmq_management" shape="box"];
  "sha256:02c460f4fd89e64ca55bae50c9d1cd1c168cc1f0fbe762aa5ad2b480a48e8bc4" [label="local://context" shape="ellipse"];
  "sha256:0184397a3aa1b8f06dca5d3e937d1e51da8818506ff7e762a0205c5c2eebd620" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:91880b59bd3bede6b3c4eb4178237ff55c8203c1c0efb27c15b4a3840556602a" [label="/bin/sh -c chmod +x /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:081ec5fecb680b63dd88ccd6d11a7cebb5f0371a56dbcea551bd83285e93855a" [label="sha256:081ec5fecb680b63dd88ccd6d11a7cebb5f0371a56dbcea551bd83285e93855a" shape="plaintext"];
  "sha256:8bcf786a632d0e76fb7ba59a2149061665b21b979d991e8094a121dcac10139e" -> "sha256:cdc2fb566dd1a51d6b37bcc1890f779353056b874a5362c74d63d74e0f7f524a" [label=""];
  "sha256:cdc2fb566dd1a51d6b37bcc1890f779353056b874a5362c74d63d74e0f7f524a" -> "sha256:91ba6a4cca8a8210d39c660378c17c068a2336978cf8eb0e629261e4ff6861be" [label=""];
  "sha256:91ba6a4cca8a8210d39c660378c17c068a2336978cf8eb0e629261e4ff6861be" -> "sha256:b18c97866895c82a0c6f56c26c77c569f1b07205501a11c24026d1607da3f8c9" [label=""];
  "sha256:b18c97866895c82a0c6f56c26c77c569f1b07205501a11c24026d1607da3f8c9" -> "sha256:002c37939231ec752dc4c99b55242888e224825e5d4e6fa51512f6dc5f9fd975" [label=""];
  "sha256:002c37939231ec752dc4c99b55242888e224825e5d4e6fa51512f6dc5f9fd975" -> "sha256:ecefe8c452004b2b25a21cf5d042fb59398f82cdd44e276f3714868ea0e2c228" [label=""];
  "sha256:ecefe8c452004b2b25a21cf5d042fb59398f82cdd44e276f3714868ea0e2c228" -> "sha256:52e9012f412d91b133099dae3dd8c60f8138ed1be06cf51e69441bb9d079436e" [label=""];
  "sha256:52e9012f412d91b133099dae3dd8c60f8138ed1be06cf51e69441bb9d079436e" -> "sha256:f797e6b2616a4ae0f79d95a0002b755a662555e1daba3eee9d8a56bd105e13f7" [label=""];
  "sha256:f797e6b2616a4ae0f79d95a0002b755a662555e1daba3eee9d8a56bd105e13f7" -> "sha256:36a9e296fe098a257e7aa6af5a5e4d4e5f6015732683e77deabd863a1f6089cc" [label=""];
  "sha256:36a9e296fe098a257e7aa6af5a5e4d4e5f6015732683e77deabd863a1f6089cc" -> "sha256:98d2054d41d115758a72259b79b08c0ed537521dd8b5f65b39e9c52f474b1190" [label=""];
  "sha256:98d2054d41d115758a72259b79b08c0ed537521dd8b5f65b39e9c52f474b1190" -> "sha256:94d6615486b5523504514e0b52c727479f6a6798af13aed265b8cdf9a95820be" [label=""];
  "sha256:94d6615486b5523504514e0b52c727479f6a6798af13aed265b8cdf9a95820be" -> "sha256:b39ffbd1d4ea19f012cc7e3a4767fa2d7c0c6a743d23fda662b2a8c2b6776146" [label=""];
  "sha256:b39ffbd1d4ea19f012cc7e3a4767fa2d7c0c6a743d23fda662b2a8c2b6776146" -> "sha256:0184397a3aa1b8f06dca5d3e937d1e51da8818506ff7e762a0205c5c2eebd620" [label=""];
  "sha256:02c460f4fd89e64ca55bae50c9d1cd1c168cc1f0fbe762aa5ad2b480a48e8bc4" -> "sha256:0184397a3aa1b8f06dca5d3e937d1e51da8818506ff7e762a0205c5c2eebd620" [label=""];
  "sha256:0184397a3aa1b8f06dca5d3e937d1e51da8818506ff7e762a0205c5c2eebd620" -> "sha256:91880b59bd3bede6b3c4eb4178237ff55c8203c1c0efb27c15b4a3840556602a" [label=""];
  "sha256:91880b59bd3bede6b3c4eb4178237ff55c8203c1c0efb27c15b4a3840556602a" -> "sha256:081ec5fecb680b63dd88ccd6d11a7cebb5f0371a56dbcea551bd83285e93855a" [label=""];
}

