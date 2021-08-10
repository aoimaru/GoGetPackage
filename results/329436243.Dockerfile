[app/sources/329436243.Dockerfile]
digraph {
  "sha256:5e41627648bf59eae90ff2ab20bb178ccfa23249345651acb7e8350c571a7190" [label="docker-image://docker.io/jakubsacha/symfony-docker:php7.1-dev" shape="ellipse"];
  "sha256:8d6210ed84043abe7e8d38cc97dc4ebfa78c53ad68b71034d3618441df852b09" [label="/bin/sh -c apt-get update && apt-get install -y" shape="box"];
  "sha256:ba352a4a91e409ba04ce35a623359d3ff87615bc73e793304783ab78a139fea3" [label="/bin/sh -c apt-get install -y zlib1g-dev libsasl2-dev libssl-dev" shape="box"];
  "sha256:0db971b85d0ac0bd86adffcfc0e85a05a1d800dfb3f8ee9072309ee0424b3ac7" [label="/bin/sh -c docker-php-ext-install zip" shape="box"];
  "sha256:209ce1c54519b07e5a31e638ede94e3ce4e7dc16d9c668d5cd4e344ada3f43a3" [label="/bin/sh -c mkdir -p /usr/local/openssl/include/openssl/ &&     ln -s /usr/include/openssl/evp.h /usr/local/openssl/include/openssl/evp.h &&     mkdir -p /usr/local/openssl/lib/ &&     ln -s /usr/lib/x86_64-linux-gnu/libssl.a /usr/local/openssl/lib/libssl.a &&     ln -s /usr/lib/x86_64-linux-gnu/libssl.so /usr/local/openssl/lib/" shape="box"];
  "sha256:a36321b6e6302793ae18afb543a48463bdf39ad31c01facdc349484c2537e562" [label="/bin/sh -c pecl install mongodb" shape="box"];
  "sha256:58d8a8bc448a8def2b066eb5d1fb709908ce61480acd87c7f8b0748cf561bee6" [label="/bin/sh -c echo \"extension=mongodb.so\" > /usr/local/etc/php/conf.d/20-mongodb.ini && \techo \"extension=mongodb.so\" > /usr/local/etc/php/conf.d/20-mongodb.ini" shape="box"];
  "sha256:9111acd45374624356ed0b89993c146e82b886333326336c9eb3fdf1808409b8" [label="sha256:9111acd45374624356ed0b89993c146e82b886333326336c9eb3fdf1808409b8" shape="plaintext"];
  "sha256:5e41627648bf59eae90ff2ab20bb178ccfa23249345651acb7e8350c571a7190" -> "sha256:8d6210ed84043abe7e8d38cc97dc4ebfa78c53ad68b71034d3618441df852b09" [label=""];
  "sha256:8d6210ed84043abe7e8d38cc97dc4ebfa78c53ad68b71034d3618441df852b09" -> "sha256:ba352a4a91e409ba04ce35a623359d3ff87615bc73e793304783ab78a139fea3" [label=""];
  "sha256:ba352a4a91e409ba04ce35a623359d3ff87615bc73e793304783ab78a139fea3" -> "sha256:0db971b85d0ac0bd86adffcfc0e85a05a1d800dfb3f8ee9072309ee0424b3ac7" [label=""];
  "sha256:0db971b85d0ac0bd86adffcfc0e85a05a1d800dfb3f8ee9072309ee0424b3ac7" -> "sha256:209ce1c54519b07e5a31e638ede94e3ce4e7dc16d9c668d5cd4e344ada3f43a3" [label=""];
  "sha256:209ce1c54519b07e5a31e638ede94e3ce4e7dc16d9c668d5cd4e344ada3f43a3" -> "sha256:a36321b6e6302793ae18afb543a48463bdf39ad31c01facdc349484c2537e562" [label=""];
  "sha256:a36321b6e6302793ae18afb543a48463bdf39ad31c01facdc349484c2537e562" -> "sha256:58d8a8bc448a8def2b066eb5d1fb709908ce61480acd87c7f8b0748cf561bee6" [label=""];
  "sha256:58d8a8bc448a8def2b066eb5d1fb709908ce61480acd87c7f8b0748cf561bee6" -> "sha256:9111acd45374624356ed0b89993c146e82b886333326336c9eb3fdf1808409b8" [label=""];
}

