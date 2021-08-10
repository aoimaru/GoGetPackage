[app/sources/164000670.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:70686c5969f9a91be3ba743c99d7f8654b0d0d3c465c817f540f716b0b54d402" [label="/bin/sh -c echo \"deb http://us.archive.ubuntu.com/ubuntu/ precise universe\" >> /etc/apt/sources.list" shape="box"];
  "sha256:c0ad370c735027c7cd5ec52d1b5bcc4b604eaebd41a3b6450c48c1407c19089b" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:a9cb8175368ce6533f552f92773d6bda139d712422c4824c10aae96c56bd0c27" [label="/bin/sh -c apt-get install -y g++" shape="box"];
  "sha256:e255d9b8f12b0b526d0fc428e6e7334276b725926c8465921c2f97bdfe8a0df3" [label="/bin/sh -c apt-get install -y erlang-dev erlang-manpages erlang-base-hipe erlang-eunit erlang-nox erlang-xmerl erlang-inets" shape="box"];
  "sha256:f156c97cafc0b70fa31f24e85c4c65646c9c8cf7a8041ebd34cdf5a702daa2cc" [label="/bin/sh -c apt-get install -y libmozjs185-dev libicu-dev libcurl4-gnutls-dev libtool wget" shape="box"];
  "sha256:a6554c9cd25277c79125f90de5fe8b7122786ecea5d9338750f9278a02c18b98" [label="/bin/sh -c cd /tmp ; wget http://www.bizdirusa.com/mirrors/apache/couchdb/source/1.3.1/apache-couchdb-1.3.1.tar.gz" shape="box"];
  "sha256:bb5269ba9ebe1a8098a6cbf88cda7e99f3ca81cc861e1a5d1a2a1ebe86c55d61" [label="/bin/sh -c cd /tmp && tar xvzf apache-couchdb-1.3.1.tar.gz" shape="box"];
  "sha256:9484858824dc1d3dc609f370fbaa11bf16d71a5cd0a7faddad192e51d20ceec5" [label="/bin/sh -c apt-get install -y make" shape="box"];
  "sha256:4e50be89af3a8be469abd2a0f538fb6bbc9a1726241b1835810b7fb14aaa2f7a" [label="/bin/sh -c cd /tmp/apache-couchdb-* ; ./configure && make install" shape="box"];
  "sha256:a9d5a0d543925c9487925536a1ffdfac79c0939f048bea97c2e7b99e87bb0ec9" [label="/bin/sh -c printf \"[httpd]\\nport = 8101\\nbind_address = 0.0.0.0\" > /usr/local/etc/couchdb/local.d/docker.ini" shape="box"];
  "sha256:f0333b7495ce71f012f81997cc1a307755bf5d505018e6b02e0ff1bf9f8dd9cf" [label="sha256:f0333b7495ce71f012f81997cc1a307755bf5d505018e6b02e0ff1bf9f8dd9cf" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:70686c5969f9a91be3ba743c99d7f8654b0d0d3c465c817f540f716b0b54d402" [label=""];
  "sha256:70686c5969f9a91be3ba743c99d7f8654b0d0d3c465c817f540f716b0b54d402" -> "sha256:c0ad370c735027c7cd5ec52d1b5bcc4b604eaebd41a3b6450c48c1407c19089b" [label=""];
  "sha256:c0ad370c735027c7cd5ec52d1b5bcc4b604eaebd41a3b6450c48c1407c19089b" -> "sha256:a9cb8175368ce6533f552f92773d6bda139d712422c4824c10aae96c56bd0c27" [label=""];
  "sha256:a9cb8175368ce6533f552f92773d6bda139d712422c4824c10aae96c56bd0c27" -> "sha256:e255d9b8f12b0b526d0fc428e6e7334276b725926c8465921c2f97bdfe8a0df3" [label=""];
  "sha256:e255d9b8f12b0b526d0fc428e6e7334276b725926c8465921c2f97bdfe8a0df3" -> "sha256:f156c97cafc0b70fa31f24e85c4c65646c9c8cf7a8041ebd34cdf5a702daa2cc" [label=""];
  "sha256:f156c97cafc0b70fa31f24e85c4c65646c9c8cf7a8041ebd34cdf5a702daa2cc" -> "sha256:a6554c9cd25277c79125f90de5fe8b7122786ecea5d9338750f9278a02c18b98" [label=""];
  "sha256:a6554c9cd25277c79125f90de5fe8b7122786ecea5d9338750f9278a02c18b98" -> "sha256:bb5269ba9ebe1a8098a6cbf88cda7e99f3ca81cc861e1a5d1a2a1ebe86c55d61" [label=""];
  "sha256:bb5269ba9ebe1a8098a6cbf88cda7e99f3ca81cc861e1a5d1a2a1ebe86c55d61" -> "sha256:9484858824dc1d3dc609f370fbaa11bf16d71a5cd0a7faddad192e51d20ceec5" [label=""];
  "sha256:9484858824dc1d3dc609f370fbaa11bf16d71a5cd0a7faddad192e51d20ceec5" -> "sha256:4e50be89af3a8be469abd2a0f538fb6bbc9a1726241b1835810b7fb14aaa2f7a" [label=""];
  "sha256:4e50be89af3a8be469abd2a0f538fb6bbc9a1726241b1835810b7fb14aaa2f7a" -> "sha256:a9d5a0d543925c9487925536a1ffdfac79c0939f048bea97c2e7b99e87bb0ec9" [label=""];
  "sha256:a9d5a0d543925c9487925536a1ffdfac79c0939f048bea97c2e7b99e87bb0ec9" -> "sha256:f0333b7495ce71f012f81997cc1a307755bf5d505018e6b02e0ff1bf9f8dd9cf" [label=""];
}

