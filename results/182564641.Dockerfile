[app/sources/182564641.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:cc76c3379b2a5438b0ebdbab41386c6a6124c05ca5e007947a9283fd4df3f041" [label="/bin/sh -c groupadd -r jetty && useradd -r -g jetty jetty" shape="box"];
  "sha256:77e502412f3973cecb8fbbd53c2045012d54c8932268d75f4d69303416898237" [label="/bin/sh -c mkdir -p \"$JETTY_HOME\"" shape="box"];
  "sha256:51370e8b09f43026de0312bbdfa34e78429f0e1bd60a4ca9663a30794433e97b" [label="mkdir{path=/usr/local/jetty}" shape="note"];
  "sha256:bb9c3b93819d166b6d7ccf0c0238651d811113e8010268b343c0125958c6d34d" [label="/bin/sh -c set -xe \t&& curl -SL \"$JETTY_TGZ_URL\" -o jetty.tar.gz \t&& curl -SL \"$JETTY_TGZ_URL.asc\" -o jetty.tar.gz.asc \t&& export GNUPGHOME=\"$(mktemp -d)\" \t&& for key in $JETTY_GPG_KEYS; do \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\"; done \t&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz \t&& gpgconf --kill all \t&& rm -rf \"$GNUPGHOME\" \t&& tar -xvf jetty.tar.gz --strip-components=1 \t&& sed -i '/jetty-logging/d' etc/jetty.conf \t&& rm jetty.tar.gz* \t&& rm -rf /tmp/hsperfdata_root" shape="box"];
  "sha256:e5823b9b052a387ed867505de0250a08c7dd585464402250dcbe1d21ff49efcd" [label="/bin/sh -c mkdir -p \"$JETTY_BASE\"" shape="box"];
  "sha256:f526b6c7c02b6e7b111c2ed7a8b0fc29a2e53868e0b556a884995b4d4a1e1be7" [label="mkdir{path=/var/lib/jetty}" shape="note"];
  "sha256:4d7183b6ccde1d267b301d3e8a4704eb1f4641ccdb1e81aa094a647c4f50393d" [label="/bin/sh -c set -xe \t&& java -jar \"$JETTY_HOME/start.jar\" --create-startd --add-to-start=\"server,http,deploy,jsp,jstl,ext,resources,websocket\" \t&& chown -R jetty:jetty \"$JETTY_BASE\" \t&& rm -rf /tmp/hsperfdata_root" shape="box"];
  "sha256:9aeae5e877b25e87da0a2a363257da9220bc7c0e4c112cfefa00ff86be2abad5" [label="/bin/sh -c set -xe \t&& mkdir -p \"$TMPDIR\" \t&& chown -R jetty:jetty \"$TMPDIR\"" shape="box"];
  "sha256:018f579577c4fb02351aefc3353272c02509a846b1d49f4c67561b798575c1aa" [label="local://context" shape="ellipse"];
  "sha256:cb9fcb9f2cb673cccc629ef080ff7e53cee8e3f33742ee69e4e022bb3d7a7266" [label="copy{src=/docker-entrypoint.sh, dest=/},copy{src=/generate-jetty-start.sh, dest=/}" shape="note"];
  "sha256:63ae80c3d1d0d2bed98faa55a99bed9a51ff1f0a91a5ab6e1ba2d7392aa5e52b" [label="sha256:63ae80c3d1d0d2bed98faa55a99bed9a51ff1f0a91a5ab6e1ba2d7392aa5e52b" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:cc76c3379b2a5438b0ebdbab41386c6a6124c05ca5e007947a9283fd4df3f041" [label=""];
  "sha256:cc76c3379b2a5438b0ebdbab41386c6a6124c05ca5e007947a9283fd4df3f041" -> "sha256:77e502412f3973cecb8fbbd53c2045012d54c8932268d75f4d69303416898237" [label=""];
  "sha256:77e502412f3973cecb8fbbd53c2045012d54c8932268d75f4d69303416898237" -> "sha256:51370e8b09f43026de0312bbdfa34e78429f0e1bd60a4ca9663a30794433e97b" [label=""];
  "sha256:51370e8b09f43026de0312bbdfa34e78429f0e1bd60a4ca9663a30794433e97b" -> "sha256:bb9c3b93819d166b6d7ccf0c0238651d811113e8010268b343c0125958c6d34d" [label=""];
  "sha256:bb9c3b93819d166b6d7ccf0c0238651d811113e8010268b343c0125958c6d34d" -> "sha256:e5823b9b052a387ed867505de0250a08c7dd585464402250dcbe1d21ff49efcd" [label=""];
  "sha256:e5823b9b052a387ed867505de0250a08c7dd585464402250dcbe1d21ff49efcd" -> "sha256:f526b6c7c02b6e7b111c2ed7a8b0fc29a2e53868e0b556a884995b4d4a1e1be7" [label=""];
  "sha256:f526b6c7c02b6e7b111c2ed7a8b0fc29a2e53868e0b556a884995b4d4a1e1be7" -> "sha256:4d7183b6ccde1d267b301d3e8a4704eb1f4641ccdb1e81aa094a647c4f50393d" [label=""];
  "sha256:4d7183b6ccde1d267b301d3e8a4704eb1f4641ccdb1e81aa094a647c4f50393d" -> "sha256:9aeae5e877b25e87da0a2a363257da9220bc7c0e4c112cfefa00ff86be2abad5" [label=""];
  "sha256:9aeae5e877b25e87da0a2a363257da9220bc7c0e4c112cfefa00ff86be2abad5" -> "sha256:cb9fcb9f2cb673cccc629ef080ff7e53cee8e3f33742ee69e4e022bb3d7a7266" [label=""];
  "sha256:018f579577c4fb02351aefc3353272c02509a846b1d49f4c67561b798575c1aa" -> "sha256:cb9fcb9f2cb673cccc629ef080ff7e53cee8e3f33742ee69e4e022bb3d7a7266" [label=""];
  "sha256:cb9fcb9f2cb673cccc629ef080ff7e53cee8e3f33742ee69e4e022bb3d7a7266" -> "sha256:63ae80c3d1d0d2bed98faa55a99bed9a51ff1f0a91a5ab6e1ba2d7392aa5e52b" [label=""];
}

