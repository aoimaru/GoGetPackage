[app/sources/455723628.Dockerfile]
digraph {
  "sha256:0023d4fd5de6d77faa5816a76df8a3e0f08d89e26c2fb7c98a046446033cd306" [label="docker-image://docker.io/library/ruby:2.6-alpine3.8" shape="ellipse"];
  "sha256:4c4e7a10fbfd3a6c63e72eaa28d5e17c22b996540c7f92dc3df71de07fda04c8" [label="mkdir{path=/mastodon}" shape="note"];
  "sha256:3858282778a592692fbda6d9cb41db0fc62cca56fe83d0366dc3bdf3ee21982e" [label="docker-image://docker.io/library/node:8.15-alpine" shape="ellipse"];
  "sha256:4c9d4a03dfb37829f3b9bb23570e9d1ffc0c361da449ab35286b59968daad215" [label="copy{src=/usr/local/bin/node, dest=/usr/local/bin/node}" shape="note"];
  "sha256:d78681c9346441a8adcdf43566fd4114a1f467086e910d27b39ae9c316e5a56b" [label="copy{src=/usr/local/lib/node_modules, dest=/usr/local/lib/node_modules}" shape="note"];
  "sha256:0a6a3f80444e9aa8f663c1b6c9d0df152cadb94b420b7c7661064c9196e158a3" [label="copy{src=/usr/local/bin/npm, dest=/usr/local/bin/npm}" shape="note"];
  "sha256:282d4758d706a07cb47a1a49cb512a47059557bb156d558eb76460f154b38a43" [label="copy{src=/opt/yarn-*, dest=/opt/yarn}" shape="note"];
  "sha256:1defb0d0bd3b9d1df1cf42a03e0a9757645539ee32252381fd89fab504414a34" [label="/bin/sh -c apk -U upgrade  && apk add -t build-dependencies     build-base     icu-dev     libidn-dev     libressl     libtool     libxml2-dev     libxslt-dev     postgresql-dev     protobuf-dev     python  && apk add     ca-certificates     ffmpeg     file     git     icu-libs     imagemagick     libidn     libpq     libxml2     libxslt     protobuf     tini     tzdata  && update-ca-certificates  && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn  && ln -s /opt/yarn/bin/yarnpkg /usr/local/bin/yarnpkg  && mkdir -p /tmp/src /opt  && wget -O libiconv.tar.gz \"https://ftp.gnu.org/pub/gnu/libiconv/libiconv-$LIBICONV_VERSION.tar.gz\"  && echo \"$LIBICONV_DOWNLOAD_SHA256 *libiconv.tar.gz\" | sha256sum -c -  && tar -xzf libiconv.tar.gz -C /tmp/src  && rm libiconv.tar.gz  && cd /tmp/src/libiconv-$LIBICONV_VERSION  && ./configure --prefix=/usr/local  && make -j$(getconf _NPROCESSORS_ONLN) && make install  && libtool --finish /usr/local/lib  && cd /mastodon  && rm -rf /tmp/* /var/cache/apk/*" shape="box"];
  "sha256:3ac7bc1347939e20a6ccb3ca62ef30ebbfc0a88b4fb69acf00e0994971f8ccbc" [label="local://context" shape="ellipse"];
  "sha256:6ac7d323abd1cfef33dfbd667044734526b7836dfc6b4d0198a221542cb5115f" [label="copy{src=/Gemfile, dest=/mastodon/},copy{src=/Gemfile.lock, dest=/mastodon/},copy{src=/package.json, dest=/mastodon/},copy{src=/yarn.lock, dest=/mastodon/},copy{src=/.yarnclean, dest=/mastodon/}" shape="note"];
  "sha256:61056471fef7ca481cbd50dd111cbffa84c8c3a9be50ecba061ccb73184823a6" [label="/bin/sh -c bundle config build.nokogiri --use-system-libraries --with-iconv-lib=/usr/local/lib --with-iconv-include=/usr/local/include  && bundle install -j$(getconf _NPROCESSORS_ONLN) --deployment --without test development  && yarn install --pure-lockfile --ignore-engines  && yarn cache clean" shape="box"];
  "sha256:f728aa273c67426b15a2e894b713678e0ee8afcf7613bcc1f44f95e206cbe4e0" [label="/bin/sh -c addgroup -g ${GID} mastodon && adduser -h /mastodon -s /bin/sh -D -G mastodon -u ${UID} mastodon  && mkdir -p /mastodon/public/system /mastodon/public/assets /mastodon/public/packs  && chown -R mastodon:mastodon /mastodon/public" shape="box"];
  "sha256:dfae1e82db32453751e78c92115c7343d76bd7d284611e373eed532443a65e84" [label="copy{src=/, dest=/mastodon}" shape="note"];
  "sha256:4cb8c2251adedc96541328e7dc034d8f5fe18551a8caf46719a0f99d120955f3" [label="/bin/sh -c chown -R mastodon:mastodon /mastodon" shape="box"];
  "sha256:440c42a8100508ac15aa7ffbdb83f9237f0a6e7f335033f7b15e4cd9ef71713b" [label="/bin/sh -c OTP_SECRET=precompile_placeholder SECRET_KEY_BASE=precompile_placeholder bundle exec rails assets:precompile" shape="box"];
  "sha256:4216b36219715a2796704beadb60aad522fa44b80e3ca0d67e3d0090691b24f3" [label="sha256:4216b36219715a2796704beadb60aad522fa44b80e3ca0d67e3d0090691b24f3" shape="plaintext"];
  "sha256:0023d4fd5de6d77faa5816a76df8a3e0f08d89e26c2fb7c98a046446033cd306" -> "sha256:4c4e7a10fbfd3a6c63e72eaa28d5e17c22b996540c7f92dc3df71de07fda04c8" [label=""];
  "sha256:4c4e7a10fbfd3a6c63e72eaa28d5e17c22b996540c7f92dc3df71de07fda04c8" -> "sha256:4c9d4a03dfb37829f3b9bb23570e9d1ffc0c361da449ab35286b59968daad215" [label=""];
  "sha256:3858282778a592692fbda6d9cb41db0fc62cca56fe83d0366dc3bdf3ee21982e" -> "sha256:4c9d4a03dfb37829f3b9bb23570e9d1ffc0c361da449ab35286b59968daad215" [label=""];
  "sha256:4c9d4a03dfb37829f3b9bb23570e9d1ffc0c361da449ab35286b59968daad215" -> "sha256:d78681c9346441a8adcdf43566fd4114a1f467086e910d27b39ae9c316e5a56b" [label=""];
  "sha256:3858282778a592692fbda6d9cb41db0fc62cca56fe83d0366dc3bdf3ee21982e" -> "sha256:d78681c9346441a8adcdf43566fd4114a1f467086e910d27b39ae9c316e5a56b" [label=""];
  "sha256:d78681c9346441a8adcdf43566fd4114a1f467086e910d27b39ae9c316e5a56b" -> "sha256:0a6a3f80444e9aa8f663c1b6c9d0df152cadb94b420b7c7661064c9196e158a3" [label=""];
  "sha256:3858282778a592692fbda6d9cb41db0fc62cca56fe83d0366dc3bdf3ee21982e" -> "sha256:0a6a3f80444e9aa8f663c1b6c9d0df152cadb94b420b7c7661064c9196e158a3" [label=""];
  "sha256:0a6a3f80444e9aa8f663c1b6c9d0df152cadb94b420b7c7661064c9196e158a3" -> "sha256:282d4758d706a07cb47a1a49cb512a47059557bb156d558eb76460f154b38a43" [label=""];
  "sha256:3858282778a592692fbda6d9cb41db0fc62cca56fe83d0366dc3bdf3ee21982e" -> "sha256:282d4758d706a07cb47a1a49cb512a47059557bb156d558eb76460f154b38a43" [label=""];
  "sha256:282d4758d706a07cb47a1a49cb512a47059557bb156d558eb76460f154b38a43" -> "sha256:1defb0d0bd3b9d1df1cf42a03e0a9757645539ee32252381fd89fab504414a34" [label=""];
  "sha256:1defb0d0bd3b9d1df1cf42a03e0a9757645539ee32252381fd89fab504414a34" -> "sha256:6ac7d323abd1cfef33dfbd667044734526b7836dfc6b4d0198a221542cb5115f" [label=""];
  "sha256:3ac7bc1347939e20a6ccb3ca62ef30ebbfc0a88b4fb69acf00e0994971f8ccbc" -> "sha256:6ac7d323abd1cfef33dfbd667044734526b7836dfc6b4d0198a221542cb5115f" [label=""];
  "sha256:6ac7d323abd1cfef33dfbd667044734526b7836dfc6b4d0198a221542cb5115f" -> "sha256:61056471fef7ca481cbd50dd111cbffa84c8c3a9be50ecba061ccb73184823a6" [label=""];
  "sha256:61056471fef7ca481cbd50dd111cbffa84c8c3a9be50ecba061ccb73184823a6" -> "sha256:f728aa273c67426b15a2e894b713678e0ee8afcf7613bcc1f44f95e206cbe4e0" [label=""];
  "sha256:f728aa273c67426b15a2e894b713678e0ee8afcf7613bcc1f44f95e206cbe4e0" -> "sha256:dfae1e82db32453751e78c92115c7343d76bd7d284611e373eed532443a65e84" [label=""];
  "sha256:3ac7bc1347939e20a6ccb3ca62ef30ebbfc0a88b4fb69acf00e0994971f8ccbc" -> "sha256:dfae1e82db32453751e78c92115c7343d76bd7d284611e373eed532443a65e84" [label=""];
  "sha256:dfae1e82db32453751e78c92115c7343d76bd7d284611e373eed532443a65e84" -> "sha256:4cb8c2251adedc96541328e7dc034d8f5fe18551a8caf46719a0f99d120955f3" [label=""];
  "sha256:4cb8c2251adedc96541328e7dc034d8f5fe18551a8caf46719a0f99d120955f3" -> "sha256:440c42a8100508ac15aa7ffbdb83f9237f0a6e7f335033f7b15e4cd9ef71713b" [label=""];
  "sha256:440c42a8100508ac15aa7ffbdb83f9237f0a6e7f335033f7b15e4cd9ef71713b" -> "sha256:4216b36219715a2796704beadb60aad522fa44b80e3ca0d67e3d0090691b24f3" [label=""];
}

