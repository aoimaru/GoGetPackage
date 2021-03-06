[app/sources/347993311.Dockerfile]
digraph {
  "sha256:7d854031f651f8e6d60f2a682587486f3250a26ca97d866ea9c5397c05a611f6" [label="docker-image://docker.io/linagora/james-rabbitmq-project:latest" shape="ellipse"];
  "sha256:1ec4f0f641ee6ed38a3114eae708bdd960bc7be37069e46eb23d832258dacbe3" [label="docker-image://docker.io/library/debian:8.11" shape="ellipse"];
  "sha256:a3286941ee7be5c37f6781eff8b46189f7a8fecf7e15a341f74076b8eca006bc" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:725acaeff5970dae0dea47add36b272e38c7c53740ce5977fbe255462a69d4b7" [label="/bin/sh -c apt-get install -y ruby-dev ruby build-essential" shape="box"];
  "sha256:c3f9712b2ae60a81ebd1d4b1bf1329e71e5931510c796f569ad35bbed8d2b8ad" [label="/bin/sh -c gem install fpm" shape="box"];
  "sha256:e502821f92ed46bc60e68080dbb169112b6221bcdde515073c33a06b44107262" [label="/bin/sh -c apt-get install -y rpm" shape="box"];
  "sha256:5f09380cb1ac3a45c392b37e5a4c206db6862c95be820d1032bb6f595ac9223b" [label="local://context" shape="ellipse"];
  "sha256:a2875c63af7d87e18339516b1b8349776f6432bc0ec188be411f08d59af7f9a2" [label="copy{src=/scripts, dest=/packages}" shape="note"];
  "sha256:f2dea67758dba76f3d5269f5a2050cb5db216ef096f4a177219a90fbc1473072" [label="copy{src=/scripts/james.service, dest=/packages/package/usr/share/james/}" shape="note"];
  "sha256:41ed0510d29ba06f5fef549258be1b920c588442e8fae63b8629aabda4763a67" [label="docker-image://docker.io/linagora/james-project:latest" shape="ellipse"];
  "sha256:fc740e7515b05e7183afb69678204e42cafafb8dcf9b4e4db52fbe79e67d5bca" [label="copy{src=/root/james-server.jar, dest=/packages/package/usr/share/james/james-withoutldap-server.jar}" shape="note"];
  "sha256:4c4a026bf0d9097b32e3f3f9d19a636f15c4a60cbe6ca9f2d7dd203be1020ca9" [label="copy{src=/root/james-cli.jar, dest=/packages/package/usr/share/james/james-cli.jar}" shape="note"];
  "sha256:21875c37e28ca2113d1a3abfa92b0e6bcd6a8b52cac094229698cf387b6c8e93" [label="docker-image://docker.io/linagora/james-ldap-project:latest" shape="ellipse"];
  "sha256:60f70c79073aacbb1c2e74dbd259c9c97367812cf4ad47aa31e9a3aacd2aa933" [label="copy{src=/root/james-server.jar, dest=/packages/package/usr/share/james/james-ldap-server.jar}" shape="note"];
  "sha256:a41d19d283aacf0a6039afa34416f50297de21f1b65f28bf08a8b247259f3691" [label="copy{src=/root/james-server.jar, dest=/packages/package/usr/share/james/james-rabbitmq-withoutldap-server.jar}" shape="note"];
  "sha256:4f8d456aeea106d349f1b37636e9c2d26b39f0a6c3b849740d836f3e179c6f3d" [label="docker-image://docker.io/linagora/james-cassandra-rabbitmq-ldap-project:latest" shape="ellipse"];
  "sha256:fbaa2cc6d7fa14b587fb85c248d7d688a80992d6df141fc8773b5e9dd261442b" [label="copy{src=/root/james-server.jar, dest=/packages/package/usr/share/james/james-rabbitmq-ldap-server.jar}" shape="note"];
  "sha256:09c6fc3ec5f8fbde6b0619d904b93a880148d87cb43cd68005e73d51fd7fdc5b" [label="copy{src=/root/james-server-cassandra-guice.lib, dest=/packages/package/usr/share/james/james-server-cassandra-guice.lib/}" shape="note"];
  "sha256:ed1f1f17b72fe6055e3eb698da2c4b490a62f4d4c06e0e7b285d41de7b412ebd" [label="copy{src=/root/james-server-cassandra-ldap-guice.lib, dest=/packages/package/usr/share/james/james-server-cassandra-ldap-guice.lib/}" shape="note"];
  "sha256:ceb202f80da8562cefa6f7606d128ac59db6e4135e9a34282c75d010ea9c4bbb" [label="copy{src=/root/james-server-cassandra-rabbitmq-guice.lib, dest=/packages/package/usr/share/james/james-server-cassandra-rabbitmq-guice.lib/}" shape="note"];
  "sha256:2b81aad25fe9839d5df314e7aaeeaba6f83bbff82fdd3ba7628db92539621a5d" [label="copy{src=/root/james-server-cassandra-rabbitmq-ldap-guice.lib, dest=/packages/package/usr/share/james/james-server-cassandra-rabbitmq-ldap-guice.lib}" shape="note"];
  "sha256:5d3b832e8845aef85098df57d20673e5ecfd2b5882fd0bc7f68c29ce4b8db401" [label="copy{src=/root/james-server-cli.lib, dest=/packages/package/usr/share/james/james-server-cli.lib/}" shape="note"];
  "sha256:11d5f94aeee94fd5cf7add242c409dcc6cae097d109298987f0b9627ab0761ad" [label="/bin/sh -c mkdir -p /packages/package/var/lib/james" shape="box"];
  "sha256:202619867950d9be0d1c8129e046ac8cbd9ecc5cec34300920d81451878268da" [label="/bin/sh -c mkdir -p /packages/package/var/log/james" shape="box"];
  "sha256:fa952c04ad15d52bc6c35c30280aefd77c8234fb4c1bb86c3731e98ce0c5ba18" [label="mkdir{path=/packages}" shape="note"];
  "sha256:a8eb76d2176c250a772592cbfdd43bf94444a3c54311da0c0f03b28a64e000a1" [label="sha256:a8eb76d2176c250a772592cbfdd43bf94444a3c54311da0c0f03b28a64e000a1" shape="plaintext"];
  "sha256:1ec4f0f641ee6ed38a3114eae708bdd960bc7be37069e46eb23d832258dacbe3" -> "sha256:a3286941ee7be5c37f6781eff8b46189f7a8fecf7e15a341f74076b8eca006bc" [label=""];
  "sha256:a3286941ee7be5c37f6781eff8b46189f7a8fecf7e15a341f74076b8eca006bc" -> "sha256:725acaeff5970dae0dea47add36b272e38c7c53740ce5977fbe255462a69d4b7" [label=""];
  "sha256:725acaeff5970dae0dea47add36b272e38c7c53740ce5977fbe255462a69d4b7" -> "sha256:c3f9712b2ae60a81ebd1d4b1bf1329e71e5931510c796f569ad35bbed8d2b8ad" [label=""];
  "sha256:c3f9712b2ae60a81ebd1d4b1bf1329e71e5931510c796f569ad35bbed8d2b8ad" -> "sha256:e502821f92ed46bc60e68080dbb169112b6221bcdde515073c33a06b44107262" [label=""];
  "sha256:e502821f92ed46bc60e68080dbb169112b6221bcdde515073c33a06b44107262" -> "sha256:a2875c63af7d87e18339516b1b8349776f6432bc0ec188be411f08d59af7f9a2" [label=""];
  "sha256:5f09380cb1ac3a45c392b37e5a4c206db6862c95be820d1032bb6f595ac9223b" -> "sha256:a2875c63af7d87e18339516b1b8349776f6432bc0ec188be411f08d59af7f9a2" [label=""];
  "sha256:a2875c63af7d87e18339516b1b8349776f6432bc0ec188be411f08d59af7f9a2" -> "sha256:f2dea67758dba76f3d5269f5a2050cb5db216ef096f4a177219a90fbc1473072" [label=""];
  "sha256:5f09380cb1ac3a45c392b37e5a4c206db6862c95be820d1032bb6f595ac9223b" -> "sha256:f2dea67758dba76f3d5269f5a2050cb5db216ef096f4a177219a90fbc1473072" [label=""];
  "sha256:f2dea67758dba76f3d5269f5a2050cb5db216ef096f4a177219a90fbc1473072" -> "sha256:fc740e7515b05e7183afb69678204e42cafafb8dcf9b4e4db52fbe79e67d5bca" [label=""];
  "sha256:41ed0510d29ba06f5fef549258be1b920c588442e8fae63b8629aabda4763a67" -> "sha256:fc740e7515b05e7183afb69678204e42cafafb8dcf9b4e4db52fbe79e67d5bca" [label=""];
  "sha256:fc740e7515b05e7183afb69678204e42cafafb8dcf9b4e4db52fbe79e67d5bca" -> "sha256:4c4a026bf0d9097b32e3f3f9d19a636f15c4a60cbe6ca9f2d7dd203be1020ca9" [label=""];
  "sha256:41ed0510d29ba06f5fef549258be1b920c588442e8fae63b8629aabda4763a67" -> "sha256:4c4a026bf0d9097b32e3f3f9d19a636f15c4a60cbe6ca9f2d7dd203be1020ca9" [label=""];
  "sha256:4c4a026bf0d9097b32e3f3f9d19a636f15c4a60cbe6ca9f2d7dd203be1020ca9" -> "sha256:60f70c79073aacbb1c2e74dbd259c9c97367812cf4ad47aa31e9a3aacd2aa933" [label=""];
  "sha256:21875c37e28ca2113d1a3abfa92b0e6bcd6a8b52cac094229698cf387b6c8e93" -> "sha256:60f70c79073aacbb1c2e74dbd259c9c97367812cf4ad47aa31e9a3aacd2aa933" [label=""];
  "sha256:60f70c79073aacbb1c2e74dbd259c9c97367812cf4ad47aa31e9a3aacd2aa933" -> "sha256:a41d19d283aacf0a6039afa34416f50297de21f1b65f28bf08a8b247259f3691" [label=""];
  "sha256:7d854031f651f8e6d60f2a682587486f3250a26ca97d866ea9c5397c05a611f6" -> "sha256:a41d19d283aacf0a6039afa34416f50297de21f1b65f28bf08a8b247259f3691" [label=""];
  "sha256:a41d19d283aacf0a6039afa34416f50297de21f1b65f28bf08a8b247259f3691" -> "sha256:fbaa2cc6d7fa14b587fb85c248d7d688a80992d6df141fc8773b5e9dd261442b" [label=""];
  "sha256:4f8d456aeea106d349f1b37636e9c2d26b39f0a6c3b849740d836f3e179c6f3d" -> "sha256:fbaa2cc6d7fa14b587fb85c248d7d688a80992d6df141fc8773b5e9dd261442b" [label=""];
  "sha256:fbaa2cc6d7fa14b587fb85c248d7d688a80992d6df141fc8773b5e9dd261442b" -> "sha256:09c6fc3ec5f8fbde6b0619d904b93a880148d87cb43cd68005e73d51fd7fdc5b" [label=""];
  "sha256:41ed0510d29ba06f5fef549258be1b920c588442e8fae63b8629aabda4763a67" -> "sha256:09c6fc3ec5f8fbde6b0619d904b93a880148d87cb43cd68005e73d51fd7fdc5b" [label=""];
  "sha256:09c6fc3ec5f8fbde6b0619d904b93a880148d87cb43cd68005e73d51fd7fdc5b" -> "sha256:ed1f1f17b72fe6055e3eb698da2c4b490a62f4d4c06e0e7b285d41de7b412ebd" [label=""];
  "sha256:21875c37e28ca2113d1a3abfa92b0e6bcd6a8b52cac094229698cf387b6c8e93" -> "sha256:ed1f1f17b72fe6055e3eb698da2c4b490a62f4d4c06e0e7b285d41de7b412ebd" [label=""];
  "sha256:ed1f1f17b72fe6055e3eb698da2c4b490a62f4d4c06e0e7b285d41de7b412ebd" -> "sha256:ceb202f80da8562cefa6f7606d128ac59db6e4135e9a34282c75d010ea9c4bbb" [label=""];
  "sha256:7d854031f651f8e6d60f2a682587486f3250a26ca97d866ea9c5397c05a611f6" -> "sha256:ceb202f80da8562cefa6f7606d128ac59db6e4135e9a34282c75d010ea9c4bbb" [label=""];
  "sha256:ceb202f80da8562cefa6f7606d128ac59db6e4135e9a34282c75d010ea9c4bbb" -> "sha256:2b81aad25fe9839d5df314e7aaeeaba6f83bbff82fdd3ba7628db92539621a5d" [label=""];
  "sha256:4f8d456aeea106d349f1b37636e9c2d26b39f0a6c3b849740d836f3e179c6f3d" -> "sha256:2b81aad25fe9839d5df314e7aaeeaba6f83bbff82fdd3ba7628db92539621a5d" [label=""];
  "sha256:2b81aad25fe9839d5df314e7aaeeaba6f83bbff82fdd3ba7628db92539621a5d" -> "sha256:5d3b832e8845aef85098df57d20673e5ecfd2b5882fd0bc7f68c29ce4b8db401" [label=""];
  "sha256:41ed0510d29ba06f5fef549258be1b920c588442e8fae63b8629aabda4763a67" -> "sha256:5d3b832e8845aef85098df57d20673e5ecfd2b5882fd0bc7f68c29ce4b8db401" [label=""];
  "sha256:5d3b832e8845aef85098df57d20673e5ecfd2b5882fd0bc7f68c29ce4b8db401" -> "sha256:11d5f94aeee94fd5cf7add242c409dcc6cae097d109298987f0b9627ab0761ad" [label=""];
  "sha256:11d5f94aeee94fd5cf7add242c409dcc6cae097d109298987f0b9627ab0761ad" -> "sha256:202619867950d9be0d1c8129e046ac8cbd9ecc5cec34300920d81451878268da" [label=""];
  "sha256:202619867950d9be0d1c8129e046ac8cbd9ecc5cec34300920d81451878268da" -> "sha256:fa952c04ad15d52bc6c35c30280aefd77c8234fb4c1bb86c3731e98ce0c5ba18" [label=""];
  "sha256:fa952c04ad15d52bc6c35c30280aefd77c8234fb4c1bb86c3731e98ce0c5ba18" -> "sha256:a8eb76d2176c250a772592cbfdd43bf94444a3c54311da0c0f03b28a64e000a1" [label=""];
}

