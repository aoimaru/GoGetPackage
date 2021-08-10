[app/sources/341019864.Dockerfile]
digraph {
  "sha256:cb280ba057e49750511fa4107f5b5d59b35e44f0a2210db3f552364e0e186b69" [label="docker-image://docker.io/resin/armv7hf-debian:stretch" shape="ellipse"];
  "sha256:22588f006b924780e12dc529930e1084b422614a176cc7dd8d7d7c47d97d9b38" [label="/bin/sh -c [ ${CROSS_BUILD_START} ]" shape="box"];
  "sha256:a57e1da94428d2044e786015f8ba973603083e61531dabeb328323df0678e5f0" [label="/bin/sh -c apt-get update  && apt-get install -y --no-install-recommends             ca-certificates             ruby             dumb-init=${DUMB_INIT_VERSION}             gosu=${GOSU_VERSION}  && buildDeps=\"       make gcc g++ libc-dev       ruby-dev       wget bzip2 gnupg dirmngr     \"  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.1.0  && gem install fluentd -v 1.2.6  && gosu nobody true  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem" shape="box"];
  "sha256:19fa1f5cb98add2be806f979595cd920f623e1f04700e9f7fee9e347cb495260" [label="/bin/sh -c mkdir -p /fluentd/log" shape="box"];
  "sha256:bb31bf57790aa4fe7e07183edb6eb3185a0b0f3ad98bfff8c3f1d492b6a2df68" [label="/bin/sh -c mkdir -p /fluentd/etc /fluentd/plugins" shape="box"];
  "sha256:0b09cf689615f5a735c842181230133a71bc4aa4c8b3feda1cacacabdb72719f" [label="local://context" shape="ellipse"];
  "sha256:9c910d0df519d4d247bbe7629134231fa5346142379ee4fd8d0ab6407da4c193" [label="copy{src=/fluent.conf, dest=/fluentd/etc/}" shape="note"];
  "sha256:8a0cbcb49781c1d04dcbcb9f8ac7df6a3c67ab3fb42888c413bfbaf5abd3e3ff" [label="copy{src=/entrypoint.sh, dest=/bin/}" shape="note"];
  "sha256:f9998f7e02b341723b19c5266092839152908c148a3c3a5af1986e32115836ea" [label="/bin/sh -c [ ${CROSS_BUILD_END} ]" shape="box"];
  "sha256:9404afcdbdd7599d0fb974cbd434d5af68eee60b8f1357d881df0193d2be7e53" [label="sha256:9404afcdbdd7599d0fb974cbd434d5af68eee60b8f1357d881df0193d2be7e53" shape="plaintext"];
  "sha256:cb280ba057e49750511fa4107f5b5d59b35e44f0a2210db3f552364e0e186b69" -> "sha256:22588f006b924780e12dc529930e1084b422614a176cc7dd8d7d7c47d97d9b38" [label=""];
  "sha256:22588f006b924780e12dc529930e1084b422614a176cc7dd8d7d7c47d97d9b38" -> "sha256:a57e1da94428d2044e786015f8ba973603083e61531dabeb328323df0678e5f0" [label=""];
  "sha256:a57e1da94428d2044e786015f8ba973603083e61531dabeb328323df0678e5f0" -> "sha256:19fa1f5cb98add2be806f979595cd920f623e1f04700e9f7fee9e347cb495260" [label=""];
  "sha256:19fa1f5cb98add2be806f979595cd920f623e1f04700e9f7fee9e347cb495260" -> "sha256:bb31bf57790aa4fe7e07183edb6eb3185a0b0f3ad98bfff8c3f1d492b6a2df68" [label=""];
  "sha256:bb31bf57790aa4fe7e07183edb6eb3185a0b0f3ad98bfff8c3f1d492b6a2df68" -> "sha256:9c910d0df519d4d247bbe7629134231fa5346142379ee4fd8d0ab6407da4c193" [label=""];
  "sha256:0b09cf689615f5a735c842181230133a71bc4aa4c8b3feda1cacacabdb72719f" -> "sha256:9c910d0df519d4d247bbe7629134231fa5346142379ee4fd8d0ab6407da4c193" [label=""];
  "sha256:9c910d0df519d4d247bbe7629134231fa5346142379ee4fd8d0ab6407da4c193" -> "sha256:8a0cbcb49781c1d04dcbcb9f8ac7df6a3c67ab3fb42888c413bfbaf5abd3e3ff" [label=""];
  "sha256:0b09cf689615f5a735c842181230133a71bc4aa4c8b3feda1cacacabdb72719f" -> "sha256:8a0cbcb49781c1d04dcbcb9f8ac7df6a3c67ab3fb42888c413bfbaf5abd3e3ff" [label=""];
  "sha256:8a0cbcb49781c1d04dcbcb9f8ac7df6a3c67ab3fb42888c413bfbaf5abd3e3ff" -> "sha256:f9998f7e02b341723b19c5266092839152908c148a3c3a5af1986e32115836ea" [label=""];
  "sha256:f9998f7e02b341723b19c5266092839152908c148a3c3a5af1986e32115836ea" -> "sha256:9404afcdbdd7599d0fb974cbd434d5af68eee60b8f1357d881df0193d2be7e53" [label=""];
}

