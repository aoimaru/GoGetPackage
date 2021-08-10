[app/sources/473135159.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:9c907c0181dcf48bf8c7ff1d00c1112df6eb4572c1a777f3d4259e8bd4e5ff27" [label="/bin/sh -c yum -y update" shape="box"];
  "sha256:ce2dfec97a2422f1006287f90c455cf2adbbd2c4b49841d3110472735cceda32" [label="/bin/sh -c yum -y install wget" shape="box"];
  "sha256:d19af9328f7b95c85667a30e2f8f07e21864c494c64d19668d5bf8663a1caf7a" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:b55fd36f9fd045a9ccf9e71b1ef89f051cf3cfbdaa19445313a0db6f0b6ae0ea" [label="/bin/sh -c yum -y install gcc gcc-c++" shape="box"];
  "sha256:2d2972f0ae6e7487546024b41ec02af3267c93b8e9ce50c8e68a79b97a63b79e" [label="/bin/sh -c yum -y install make" shape="box"];
  "sha256:04c9dd84fe58244f68c169ddd53937d55e87a816e42103c13a8d21538edaf96d" [label="/bin/sh -c yum -y install mongodb" shape="box"];
  "sha256:79e1665d4421ae8d4376b32d21a77c3996270d695837cda2e24744a28ffbb200" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:ce699244623532efd3134f0d28ac4c6f505d240d391400dfb4f1d9a9451ecb8d" [label="/bin/sh -c mkdir node-latest" shape="box"];
  "sha256:220cd7758f6eedefb3ca353042a5f13d15da06b72b52e9a546dd146a91aad831" [label="/bin/sh -c cd node-latest && wget http://nodejs.org/dist/v6.9.2/node-v6.9.2.tar.gz" shape="box"];
  "sha256:dafcc16e5ac08575a433b64cf39d0ebb004ddbf272523cd9bf31f820f3f0b94f" [label="/bin/sh -c cd node-latest && tar xvf node-v6.9.2.tar.gz && rm node-v6.9.2.tar.gz" shape="box"];
  "sha256:89aa0b7a979e1f2fa7196a5f240d29a191c38950b05890d808030a9f80450eb7" [label="/bin/sh -c cd node-latest && cd * && ./configure" shape="box"];
  "sha256:9b2b5ddb5daf0f54cd23c59144c9c0b3253014c340d65f96daca7a35579d4a03" [label="/bin/sh -c cd node-latest && cd * && make" shape="box"];
  "sha256:5b82204ee3b18df6959d648d7ff3732500feae241137f32a37bbe6db0056ed5f" [label="/bin/sh -c cd node-latest && cd * && make install" shape="box"];
  "sha256:24ec95c74e91dfd13892cb44fea15ff7d14ceb94c0556ba9453ebfd1c22da312" [label="/bin/sh -c ln -s /usr/local/bin/node /usr/bin/node" shape="box"];
  "sha256:80d85ce81d64aff4b86b1b35287c666de7b7defb6a5cd30d5b30c915c919c51b" [label="/bin/sh -c ln -s /usr/local/bin/npm /usr/bin/npm" shape="box"];
  "sha256:1b04d3c6c5cc4a08c0c614c3cacd4a20096bccf46552cebd288fe7d6e4326556" [label="/bin/sh -c cd ../../ && rm node-latest/ -r -f" shape="box"];
  "sha256:1b5c71b2ed0aa6e860a6f715a2c71b5ff7ece38ab6ebb750935d02de258fcc58" [label="/bin/sh -c npm install -g node-inspector supervisor forever" shape="box"];
  "sha256:67df7b66c7e31d24c613e2315c81c2a9297c81446f5ade978b2c4fe713487590" [label="local://context" shape="ellipse"];
  "sha256:f575286979fd184030e61fb9414aad2177205e68d5d962f12b3c47879543d6c9" [label="copy{src=/package.json, dest=/opt/package.json}" shape="note"];
  "sha256:caf7e76b14c2795b2a0d1922c5e540d95c4245378ddaf6ad7d2fc3acc915a050" [label="/bin/sh -c cd /opt/ && npm install" shape="box"];
  "sha256:2a7eceac143560eb9921f24a2ed56d5849cf8a9d1faec980513f448bc4928a77" [label="/bin/sh -c rm -f /opt/package.json" shape="box"];
  "sha256:69c70cd70996816f9b11f36f5bea570e96924fc92a12c7c77a11e1b361571151" [label="sha256:69c70cd70996816f9b11f36f5bea570e96924fc92a12c7c77a11e1b361571151" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:9c907c0181dcf48bf8c7ff1d00c1112df6eb4572c1a777f3d4259e8bd4e5ff27" [label=""];
  "sha256:9c907c0181dcf48bf8c7ff1d00c1112df6eb4572c1a777f3d4259e8bd4e5ff27" -> "sha256:ce2dfec97a2422f1006287f90c455cf2adbbd2c4b49841d3110472735cceda32" [label=""];
  "sha256:ce2dfec97a2422f1006287f90c455cf2adbbd2c4b49841d3110472735cceda32" -> "sha256:d19af9328f7b95c85667a30e2f8f07e21864c494c64d19668d5bf8663a1caf7a" [label=""];
  "sha256:d19af9328f7b95c85667a30e2f8f07e21864c494c64d19668d5bf8663a1caf7a" -> "sha256:b55fd36f9fd045a9ccf9e71b1ef89f051cf3cfbdaa19445313a0db6f0b6ae0ea" [label=""];
  "sha256:b55fd36f9fd045a9ccf9e71b1ef89f051cf3cfbdaa19445313a0db6f0b6ae0ea" -> "sha256:2d2972f0ae6e7487546024b41ec02af3267c93b8e9ce50c8e68a79b97a63b79e" [label=""];
  "sha256:2d2972f0ae6e7487546024b41ec02af3267c93b8e9ce50c8e68a79b97a63b79e" -> "sha256:04c9dd84fe58244f68c169ddd53937d55e87a816e42103c13a8d21538edaf96d" [label=""];
  "sha256:04c9dd84fe58244f68c169ddd53937d55e87a816e42103c13a8d21538edaf96d" -> "sha256:79e1665d4421ae8d4376b32d21a77c3996270d695837cda2e24744a28ffbb200" [label=""];
  "sha256:79e1665d4421ae8d4376b32d21a77c3996270d695837cda2e24744a28ffbb200" -> "sha256:ce699244623532efd3134f0d28ac4c6f505d240d391400dfb4f1d9a9451ecb8d" [label=""];
  "sha256:ce699244623532efd3134f0d28ac4c6f505d240d391400dfb4f1d9a9451ecb8d" -> "sha256:220cd7758f6eedefb3ca353042a5f13d15da06b72b52e9a546dd146a91aad831" [label=""];
  "sha256:220cd7758f6eedefb3ca353042a5f13d15da06b72b52e9a546dd146a91aad831" -> "sha256:dafcc16e5ac08575a433b64cf39d0ebb004ddbf272523cd9bf31f820f3f0b94f" [label=""];
  "sha256:dafcc16e5ac08575a433b64cf39d0ebb004ddbf272523cd9bf31f820f3f0b94f" -> "sha256:89aa0b7a979e1f2fa7196a5f240d29a191c38950b05890d808030a9f80450eb7" [label=""];
  "sha256:89aa0b7a979e1f2fa7196a5f240d29a191c38950b05890d808030a9f80450eb7" -> "sha256:9b2b5ddb5daf0f54cd23c59144c9c0b3253014c340d65f96daca7a35579d4a03" [label=""];
  "sha256:9b2b5ddb5daf0f54cd23c59144c9c0b3253014c340d65f96daca7a35579d4a03" -> "sha256:5b82204ee3b18df6959d648d7ff3732500feae241137f32a37bbe6db0056ed5f" [label=""];
  "sha256:5b82204ee3b18df6959d648d7ff3732500feae241137f32a37bbe6db0056ed5f" -> "sha256:24ec95c74e91dfd13892cb44fea15ff7d14ceb94c0556ba9453ebfd1c22da312" [label=""];
  "sha256:24ec95c74e91dfd13892cb44fea15ff7d14ceb94c0556ba9453ebfd1c22da312" -> "sha256:80d85ce81d64aff4b86b1b35287c666de7b7defb6a5cd30d5b30c915c919c51b" [label=""];
  "sha256:80d85ce81d64aff4b86b1b35287c666de7b7defb6a5cd30d5b30c915c919c51b" -> "sha256:1b04d3c6c5cc4a08c0c614c3cacd4a20096bccf46552cebd288fe7d6e4326556" [label=""];
  "sha256:1b04d3c6c5cc4a08c0c614c3cacd4a20096bccf46552cebd288fe7d6e4326556" -> "sha256:1b5c71b2ed0aa6e860a6f715a2c71b5ff7ece38ab6ebb750935d02de258fcc58" [label=""];
  "sha256:1b5c71b2ed0aa6e860a6f715a2c71b5ff7ece38ab6ebb750935d02de258fcc58" -> "sha256:f575286979fd184030e61fb9414aad2177205e68d5d962f12b3c47879543d6c9" [label=""];
  "sha256:67df7b66c7e31d24c613e2315c81c2a9297c81446f5ade978b2c4fe713487590" -> "sha256:f575286979fd184030e61fb9414aad2177205e68d5d962f12b3c47879543d6c9" [label=""];
  "sha256:f575286979fd184030e61fb9414aad2177205e68d5d962f12b3c47879543d6c9" -> "sha256:caf7e76b14c2795b2a0d1922c5e540d95c4245378ddaf6ad7d2fc3acc915a050" [label=""];
  "sha256:caf7e76b14c2795b2a0d1922c5e540d95c4245378ddaf6ad7d2fc3acc915a050" -> "sha256:2a7eceac143560eb9921f24a2ed56d5849cf8a9d1faec980513f448bc4928a77" [label=""];
  "sha256:2a7eceac143560eb9921f24a2ed56d5849cf8a9d1faec980513f448bc4928a77" -> "sha256:69c70cd70996816f9b11f36f5bea570e96924fc92a12c7c77a11e1b361571151" [label=""];
}

