[app/sources/353586321.Dockerfile]
digraph {
  "sha256:6228d63c537f1dddebf069f911462d6004c06bdbdabc99300fad3a04bebb6d08" [label="local://context" shape="ellipse"];
  "sha256:7e30cc676c77b6b570f02288c56213245982130b588d57d2d84debdd8fc003f7" [label="docker-image://docker.io/mesoscope/common:latest" shape="ellipse"];
  "sha256:20aae1b2a55fc45099177f02c7195a0e27d723b717eb39a8b3cd58f4f672cc34" [label="/bin/sh -c apt-get update && \tapt-get install -y --no-install-recommends build-essential \t\tpython-boto libcurl4-nss-dev libsasl2-dev libapr1-dev libsvn-dev \t\tautoconf automake libtool libsasl2-modules && \tapt-get install -y --no-install-recommends rpm && \tapt-get clean" shape="box"];
  "sha256:e80315f0f9ace50c8cce64bfb4c60b55cfa06e9d68ca0c0b3cbe0719000b4bab" [label="/bin/sh -c wget ftp://ftp.cyrusimap.org/cyrus-sasl/cyrus-sasl-2.1.26.tar.gz" shape="box"];
  "sha256:4e9cee1e5844702bda4a9340abad375fd572fcf35b380479f0887b8fe9a9c9fa" [label="/bin/sh -c tar zxf cyrus-sasl-2.1.26.tar.gz && cd cyrus-sasl-2.1.26 && \t./configure CC=gcc-4.8 CPPFLAGS=-I/usr/include/openssl --enable-cram && \tmake && \tmake install" shape="box"];
  "sha256:92396e92337f08a7c55eb275924a2fe60a85da5002dc100e7088dd775599c1c6" [label="/bin/sh -c rm -f cyrus-sasl-2.1.26.tar.gz" shape="box"];
  "sha256:b30e919a8d8084e2e01bfcad6caf85d24eb21ff841daee00038219b430f1c828" [label="/bin/sh -c rm -rf cyrus-sasl-2.1.26" shape="box"];
  "sha256:681ff1f7007c7205024f090993a3464a5a9e8b77c48faa2377b21a0148a326c6" [label="/bin/sh -c cd /usr/lib/x86_64-linux-gnu && \tln -s libsvn_delta-1.so.1.0.0 libsvn_delta-1.so.0 && \tln -s libsvn_subr-1.so.1.0.0 libsvn_subr-1.so.0 && \tln -s libcurl-nss.so libcurl.so.4" shape="box"];
  "sha256:41d9a8b9f7d4b5b4b0057eb7b86960f4fd672b351edcca787a5e4a1633200167" [label="copy{src=/mesos-0.27.1-1.x86_64.rpm, dest=/}" shape="note"];
  "sha256:9ddebcc22dd27078847ec425b36a05923355ad60a28b9bcc1f5f45d085385d94" [label="/bin/sh -c rpm -ivh --nodeps ${MESOS_PACKAGE} &&  rm -f ${MESOS_PACKAGE}" shape="box"];
  "sha256:89443162d66bf6c74953cdc3c41c82f73b111ec945d081064459439e5f3b5eee" [label="sha256:89443162d66bf6c74953cdc3c41c82f73b111ec945d081064459439e5f3b5eee" shape="plaintext"];
  "sha256:7e30cc676c77b6b570f02288c56213245982130b588d57d2d84debdd8fc003f7" -> "sha256:20aae1b2a55fc45099177f02c7195a0e27d723b717eb39a8b3cd58f4f672cc34" [label=""];
  "sha256:20aae1b2a55fc45099177f02c7195a0e27d723b717eb39a8b3cd58f4f672cc34" -> "sha256:e80315f0f9ace50c8cce64bfb4c60b55cfa06e9d68ca0c0b3cbe0719000b4bab" [label=""];
  "sha256:e80315f0f9ace50c8cce64bfb4c60b55cfa06e9d68ca0c0b3cbe0719000b4bab" -> "sha256:4e9cee1e5844702bda4a9340abad375fd572fcf35b380479f0887b8fe9a9c9fa" [label=""];
  "sha256:4e9cee1e5844702bda4a9340abad375fd572fcf35b380479f0887b8fe9a9c9fa" -> "sha256:92396e92337f08a7c55eb275924a2fe60a85da5002dc100e7088dd775599c1c6" [label=""];
  "sha256:92396e92337f08a7c55eb275924a2fe60a85da5002dc100e7088dd775599c1c6" -> "sha256:b30e919a8d8084e2e01bfcad6caf85d24eb21ff841daee00038219b430f1c828" [label=""];
  "sha256:b30e919a8d8084e2e01bfcad6caf85d24eb21ff841daee00038219b430f1c828" -> "sha256:681ff1f7007c7205024f090993a3464a5a9e8b77c48faa2377b21a0148a326c6" [label=""];
  "sha256:681ff1f7007c7205024f090993a3464a5a9e8b77c48faa2377b21a0148a326c6" -> "sha256:41d9a8b9f7d4b5b4b0057eb7b86960f4fd672b351edcca787a5e4a1633200167" [label=""];
  "sha256:6228d63c537f1dddebf069f911462d6004c06bdbdabc99300fad3a04bebb6d08" -> "sha256:41d9a8b9f7d4b5b4b0057eb7b86960f4fd672b351edcca787a5e4a1633200167" [label=""];
  "sha256:41d9a8b9f7d4b5b4b0057eb7b86960f4fd672b351edcca787a5e4a1633200167" -> "sha256:9ddebcc22dd27078847ec425b36a05923355ad60a28b9bcc1f5f45d085385d94" [label=""];
  "sha256:9ddebcc22dd27078847ec425b36a05923355ad60a28b9bcc1f5f45d085385d94" -> "sha256:89443162d66bf6c74953cdc3c41c82f73b111ec945d081064459439e5f3b5eee" [label=""];
}

