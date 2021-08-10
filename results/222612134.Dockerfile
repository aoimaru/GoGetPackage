[app/sources/222612134.Dockerfile]
digraph {
  "sha256:09a32cc821b1743499da27526dd13be501ec77818b4a2c102d6809c67d96bde4" [label="local://context" shape="ellipse"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:e68671091d92725f62cd262b34ae5ddebb89740361ccf332bed92f030e73d29c" [label="/bin/sh -c apk add --no-cache openjdk8-jre su-exec" shape="box"];
  "sha256:23d5f8d27f146502c658613a20cf27d7b9558491973c050d0170558392262581" [label="/bin/sh -c apk add --no-cache bash" shape="box"];
  "sha256:5ffbdbf521a79bffc5b05e6b3af4e861e3a65a8502fc46eadcc0e744b36a515f" [label="/bin/sh -c apk add --no-cache -t .build-deps wget ca-certificates gnupg openssl   && set -ex   && cd /tmp   && echo \"===> Install Elasticsearch...\"   && wget --progress=bar:force -O elasticsearch.tar.gz \"$ES_TARBAL\";   if [ \"$ES_TARBALL_SHA\" ]; then   echo \"$ES_TARBALL_SHA *elasticsearch.tar.gz\" | sha512sum -c -;   fi;   if [ \"$ES_TARBALL_ASC\" ]; then   wget --progress=bar:force -O elasticsearch.tar.gz.asc \"$ES_TARBALL_ASC\";   export GNUPGHOME=\"$(mktemp -d)\";   ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$GPG_KEY\"   || gpg --keyserver pgp.mit.edu --recv-keys \"$GPG_KEY\"   || gpg --keyserver keyserver.pgp.com --recv-keys \"$GPG_KEY\" );   gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz;   rm -rf \"$GNUPGHOME\" elasticsearch.tar.gz.asc || true;   fi;   tar -xf elasticsearch.tar.gz   && ls -lah   && mv elasticsearch-$VERSION /usr/share/elasticsearch   && adduser -D -h /usr/share/elasticsearch elasticsearch   && echo \"===> Creating Elasticsearch Paths...\"   && for path in   /usr/share/elasticsearch/data   /usr/share/elasticsearch/logs   /usr/share/elasticsearch/config   /usr/share/elasticsearch/config/scripts   /usr/share/elasticsearch/tmp   /usr/share/elasticsearch/plugins   ; do   mkdir -p \"$path\";   chown -R elasticsearch:elasticsearch \"$path\";   done   && rm -rf /tmp/*   && apk del --purge .build-deps" shape="box"];
  "sha256:103843d3ba18b7956752c588121d1c931775a0d4a535ce35a91740345e85f8d8" [label="/bin/sh -c rm -rf /usr/share/elasticsearch/modules/x-pack-ml/platform/linux-x86_64" shape="box"];
  "sha256:a887652840827ee59f21c86d70f9dc55ead36e197e583ef73f3b899b396f925a" [label="copy{src=/config/elastic, dest=/usr/share/elasticsearch/config}" shape="note"];
  "sha256:e213f8441cbab1facb0041011b2b4dbe3186349d398e4a0d2cc656a738f256ee" [label="copy{src=/config/logrotate, dest=/etc/logrotate.d/elasticsearch}" shape="note"];
  "sha256:cb7913b0f2be290b00606e82b4db5beb084b4cd09a9c571162b722479d3b079a" [label="copy{src=/elastic-entrypoint.sh, dest=/}" shape="note"];
  "sha256:4d6b4c9664be77504dec8c2ed96325d1006064038ab27fd9031afe2af63dc5cb" [label="/bin/sh -c chmod +x /elastic-entrypoint.sh" shape="box"];
  "sha256:bffaedf17c854f3a562f4e64e3ddaaf686057b1b964a5813ad415ee9a2bb069a" [label="copy{src=/docker-healthcheck, dest=/usr/local/bin/}" shape="note"];
  "sha256:46dcbf7ae2d5509f26f7412e390d1f4ffa5b476c7f395f51368eef26ed3da0b0" [label="mkdir{path=/usr/share/elasticsearch}" shape="note"];
  "sha256:8dd7dc4a78f54a8438268031400f27a29983711529f971feccf176627e317b4d" [label="sha256:8dd7dc4a78f54a8438268031400f27a29983711529f971feccf176627e317b4d" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:e68671091d92725f62cd262b34ae5ddebb89740361ccf332bed92f030e73d29c" [label=""];
  "sha256:e68671091d92725f62cd262b34ae5ddebb89740361ccf332bed92f030e73d29c" -> "sha256:23d5f8d27f146502c658613a20cf27d7b9558491973c050d0170558392262581" [label=""];
  "sha256:23d5f8d27f146502c658613a20cf27d7b9558491973c050d0170558392262581" -> "sha256:5ffbdbf521a79bffc5b05e6b3af4e861e3a65a8502fc46eadcc0e744b36a515f" [label=""];
  "sha256:5ffbdbf521a79bffc5b05e6b3af4e861e3a65a8502fc46eadcc0e744b36a515f" -> "sha256:103843d3ba18b7956752c588121d1c931775a0d4a535ce35a91740345e85f8d8" [label=""];
  "sha256:103843d3ba18b7956752c588121d1c931775a0d4a535ce35a91740345e85f8d8" -> "sha256:a887652840827ee59f21c86d70f9dc55ead36e197e583ef73f3b899b396f925a" [label=""];
  "sha256:09a32cc821b1743499da27526dd13be501ec77818b4a2c102d6809c67d96bde4" -> "sha256:a887652840827ee59f21c86d70f9dc55ead36e197e583ef73f3b899b396f925a" [label=""];
  "sha256:a887652840827ee59f21c86d70f9dc55ead36e197e583ef73f3b899b396f925a" -> "sha256:e213f8441cbab1facb0041011b2b4dbe3186349d398e4a0d2cc656a738f256ee" [label=""];
  "sha256:09a32cc821b1743499da27526dd13be501ec77818b4a2c102d6809c67d96bde4" -> "sha256:e213f8441cbab1facb0041011b2b4dbe3186349d398e4a0d2cc656a738f256ee" [label=""];
  "sha256:e213f8441cbab1facb0041011b2b4dbe3186349d398e4a0d2cc656a738f256ee" -> "sha256:cb7913b0f2be290b00606e82b4db5beb084b4cd09a9c571162b722479d3b079a" [label=""];
  "sha256:09a32cc821b1743499da27526dd13be501ec77818b4a2c102d6809c67d96bde4" -> "sha256:cb7913b0f2be290b00606e82b4db5beb084b4cd09a9c571162b722479d3b079a" [label=""];
  "sha256:cb7913b0f2be290b00606e82b4db5beb084b4cd09a9c571162b722479d3b079a" -> "sha256:4d6b4c9664be77504dec8c2ed96325d1006064038ab27fd9031afe2af63dc5cb" [label=""];
  "sha256:4d6b4c9664be77504dec8c2ed96325d1006064038ab27fd9031afe2af63dc5cb" -> "sha256:bffaedf17c854f3a562f4e64e3ddaaf686057b1b964a5813ad415ee9a2bb069a" [label=""];
  "sha256:09a32cc821b1743499da27526dd13be501ec77818b4a2c102d6809c67d96bde4" -> "sha256:bffaedf17c854f3a562f4e64e3ddaaf686057b1b964a5813ad415ee9a2bb069a" [label=""];
  "sha256:bffaedf17c854f3a562f4e64e3ddaaf686057b1b964a5813ad415ee9a2bb069a" -> "sha256:46dcbf7ae2d5509f26f7412e390d1f4ffa5b476c7f395f51368eef26ed3da0b0" [label=""];
  "sha256:46dcbf7ae2d5509f26f7412e390d1f4ffa5b476c7f395f51368eef26ed3da0b0" -> "sha256:8dd7dc4a78f54a8438268031400f27a29983711529f971feccf176627e317b4d" [label=""];
}

