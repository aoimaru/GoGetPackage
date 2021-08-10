[app/sources/283266066.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:6b1c93ea2ccedbe180b1e5ad4a9cf0d46b0a5149b61a466aed9a46e9017dd06c" [label="/bin/sh -c apk add --update git cmake make gcc g++ libc-dev boost-dev" shape="box"];
  "sha256:b44ef07fb56dd32f2008f197ac3114a6913dc4c73e81c3cdafdc79d4705f33fc" [label="/bin/sh -c git clone --recursive https://github.com/kost/nheqminer.git" shape="box"];
  "sha256:2ed33edb4d1aa245e69193ca1a90d286d796633babde8022ae1e36ee3ba149f6" [label="mkdir{path=/nheqminer/nheqminer}" shape="note"];
  "sha256:9f26d0d29a439faa77f710daa2bfe4ff5e028bcd6e71fc4658240b43644c71c5" [label="/bin/sh -c mkdir build" shape="box"];
  "sha256:52696d61606678a04f0cf520616d6259d2438880aaa15f1fe093c9386bcf7cae" [label="mkdir{path=/nheqminer/nheqminer/build}" shape="note"];
  "sha256:cb374dd22bbb66c58a0afaf8424dc223570b85c0fc639bf30be14d9c86c06b41" [label="/bin/sh -c cmake -DSTATIC_BUILD=1 -DXENON=2 -DMARCH=\"-m64\" .." shape="box"];
  "sha256:11bc167cdd9cba13544a8897f5816d825372e940c9ae07ccef433422f53af44c" [label="/bin/sh -c make" shape="box"];
  "sha256:de24ca3e84e455406335dfcd6d6bf193e716aba2ff5c7a3280f263c5d332f841" [label="/bin/sh -c apk remove git cmake gcc g++ libc-dev boost-dev" shape="box"];
  "sha256:d838471db889b28031b04eeee303bcf23a449b2b9e58f13550833662e911c30c" [label="sha256:d838471db889b28031b04eeee303bcf23a449b2b9e58f13550833662e911c30c" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:6b1c93ea2ccedbe180b1e5ad4a9cf0d46b0a5149b61a466aed9a46e9017dd06c" [label=""];
  "sha256:6b1c93ea2ccedbe180b1e5ad4a9cf0d46b0a5149b61a466aed9a46e9017dd06c" -> "sha256:b44ef07fb56dd32f2008f197ac3114a6913dc4c73e81c3cdafdc79d4705f33fc" [label=""];
  "sha256:b44ef07fb56dd32f2008f197ac3114a6913dc4c73e81c3cdafdc79d4705f33fc" -> "sha256:2ed33edb4d1aa245e69193ca1a90d286d796633babde8022ae1e36ee3ba149f6" [label=""];
  "sha256:2ed33edb4d1aa245e69193ca1a90d286d796633babde8022ae1e36ee3ba149f6" -> "sha256:9f26d0d29a439faa77f710daa2bfe4ff5e028bcd6e71fc4658240b43644c71c5" [label=""];
  "sha256:9f26d0d29a439faa77f710daa2bfe4ff5e028bcd6e71fc4658240b43644c71c5" -> "sha256:52696d61606678a04f0cf520616d6259d2438880aaa15f1fe093c9386bcf7cae" [label=""];
  "sha256:52696d61606678a04f0cf520616d6259d2438880aaa15f1fe093c9386bcf7cae" -> "sha256:cb374dd22bbb66c58a0afaf8424dc223570b85c0fc639bf30be14d9c86c06b41" [label=""];
  "sha256:cb374dd22bbb66c58a0afaf8424dc223570b85c0fc639bf30be14d9c86c06b41" -> "sha256:11bc167cdd9cba13544a8897f5816d825372e940c9ae07ccef433422f53af44c" [label=""];
  "sha256:11bc167cdd9cba13544a8897f5816d825372e940c9ae07ccef433422f53af44c" -> "sha256:de24ca3e84e455406335dfcd6d6bf193e716aba2ff5c7a3280f263c5d332f841" [label=""];
  "sha256:de24ca3e84e455406335dfcd6d6bf193e716aba2ff5c7a3280f263c5d332f841" -> "sha256:d838471db889b28031b04eeee303bcf23a449b2b9e58f13550833662e911c30c" [label=""];
}

