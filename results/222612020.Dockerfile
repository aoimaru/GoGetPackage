[app/sources/222612020.Dockerfile]
digraph {
  "sha256:7226c58393c3638d6b8f4c5c5e9dfe4c0716efc4dfe77a93d2b2b0577814eb39" [label="docker-image://docker.io/gliderlabs/alpine:3.4" shape="ellipse"];
  "sha256:18410c11f3121d5f532fba227ce03c71ea51088c7f77c153aeadd63a5298ae73" [label="/bin/sh -c apk-install openjdk8-jre tini su-exec" shape="box"];
  "sha256:b7d0000e6c490313e2fc8d8d403f0cb24aa8c11a61caa95d33d206ed1dba394e" [label="/bin/sh -c apk-install bash" shape="box"];
  "sha256:5ea167f79bc08e8031667c6fc895e3660aa2e38adc3bc3fe8cd0c8918b368373" [label="/bin/sh -c apk-install -t .build-deps wget ca-certificates gnupg openssl   && cd /tmp   && echo \"===> Install Elasticsearch...\"   && wget -O elasticsearch.tar.gz \"$ES_TARBAL\"; \tif [ \"$ES_TARBALL_SHA1\" ]; then \t\techo \"$ES_TARBALL_SHA1 *elasticsearch.tar.gz\" | sha1sum -c -; \tfi; \tif [ \"$ES_TARBALL_ASC\" ]; then \t\twget -O elasticsearch.tar.gz.asc \"$ES_TARBALL_ASC\"; \t\texport GNUPGHOME=\"$(mktemp -d)\"; \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$GPG_KEY\"; \t\tgpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; \t\trm -r \"$GNUPGHOME\" elasticsearch.tar.gz.asc; \tfi;   tar -xf elasticsearch.tar.gz   && ls -lah   && mv elasticsearch-$ES_VERSION /usr/share/elasticsearch   && adduser -DH -s /sbin/nologin elasticsearch   && echo \"===> Creating Elasticsearch Paths...\"   && for path in   \t/usr/share/elasticsearch/data   \t/usr/share/elasticsearch/logs   \t/usr/share/elasticsearch/config   \t/usr/share/elasticsearch/config/scripts   \t/usr/share/elasticsearch/plugins   ; do   mkdir -p \"$path\";   done   && chown -R elasticsearch:elasticsearch /usr/share/elasticsearch   && rm -rf /tmp/*   && apk del --purge .build-deps" shape="box"];
  "sha256:79d538322c7295a68a9eb73a12a6fa0b1ddc60fba0adc6f3fb9ea4d2adb5bdfe" [label="local://context" shape="ellipse"];
  "sha256:6b3c3ab428ab0f5fd4899999b3f21cb1d90e1db3521a82444f1c001fc349e51d" [label="copy{src=/config/elastic, dest=/usr/share/elasticsearch/config}" shape="note"];
  "sha256:a2fff2898158084664616a48e14824b0ecc309377e6a8291ccdcdf1ec792b6a3" [label="copy{src=/config/logrotate, dest=/etc/logrotate.d/elasticsearch}" shape="note"];
  "sha256:27ea4691d0d4ad2fbc386ee3902ccffd36285ee65d2ff318f4cb67b3e303d98d" [label="copy{src=/elastic-entrypoint.sh, dest=/}" shape="note"];
  "sha256:882e1a7d14837723d5a451077c7aebf44b29248037d01c1bc191f5b1aba18448" [label="copy{src=/docker-healthcheck, dest=/usr/local/bin/}" shape="note"];
  "sha256:3184b01b8e2a22cb6e248739c026169f985b76f7a590ddbdda929ceb81f8094b" [label="mkdir{path=/usr/share/elasticsearch}" shape="note"];
  "sha256:158b5afb322b6a450ca7e710aca0aa6b7f09e2f6991ae4f575500d30c10aecde" [label="sha256:158b5afb322b6a450ca7e710aca0aa6b7f09e2f6991ae4f575500d30c10aecde" shape="plaintext"];
  "sha256:7226c58393c3638d6b8f4c5c5e9dfe4c0716efc4dfe77a93d2b2b0577814eb39" -> "sha256:18410c11f3121d5f532fba227ce03c71ea51088c7f77c153aeadd63a5298ae73" [label=""];
  "sha256:18410c11f3121d5f532fba227ce03c71ea51088c7f77c153aeadd63a5298ae73" -> "sha256:b7d0000e6c490313e2fc8d8d403f0cb24aa8c11a61caa95d33d206ed1dba394e" [label=""];
  "sha256:b7d0000e6c490313e2fc8d8d403f0cb24aa8c11a61caa95d33d206ed1dba394e" -> "sha256:5ea167f79bc08e8031667c6fc895e3660aa2e38adc3bc3fe8cd0c8918b368373" [label=""];
  "sha256:5ea167f79bc08e8031667c6fc895e3660aa2e38adc3bc3fe8cd0c8918b368373" -> "sha256:6b3c3ab428ab0f5fd4899999b3f21cb1d90e1db3521a82444f1c001fc349e51d" [label=""];
  "sha256:79d538322c7295a68a9eb73a12a6fa0b1ddc60fba0adc6f3fb9ea4d2adb5bdfe" -> "sha256:6b3c3ab428ab0f5fd4899999b3f21cb1d90e1db3521a82444f1c001fc349e51d" [label=""];
  "sha256:6b3c3ab428ab0f5fd4899999b3f21cb1d90e1db3521a82444f1c001fc349e51d" -> "sha256:a2fff2898158084664616a48e14824b0ecc309377e6a8291ccdcdf1ec792b6a3" [label=""];
  "sha256:79d538322c7295a68a9eb73a12a6fa0b1ddc60fba0adc6f3fb9ea4d2adb5bdfe" -> "sha256:a2fff2898158084664616a48e14824b0ecc309377e6a8291ccdcdf1ec792b6a3" [label=""];
  "sha256:a2fff2898158084664616a48e14824b0ecc309377e6a8291ccdcdf1ec792b6a3" -> "sha256:27ea4691d0d4ad2fbc386ee3902ccffd36285ee65d2ff318f4cb67b3e303d98d" [label=""];
  "sha256:79d538322c7295a68a9eb73a12a6fa0b1ddc60fba0adc6f3fb9ea4d2adb5bdfe" -> "sha256:27ea4691d0d4ad2fbc386ee3902ccffd36285ee65d2ff318f4cb67b3e303d98d" [label=""];
  "sha256:27ea4691d0d4ad2fbc386ee3902ccffd36285ee65d2ff318f4cb67b3e303d98d" -> "sha256:882e1a7d14837723d5a451077c7aebf44b29248037d01c1bc191f5b1aba18448" [label=""];
  "sha256:79d538322c7295a68a9eb73a12a6fa0b1ddc60fba0adc6f3fb9ea4d2adb5bdfe" -> "sha256:882e1a7d14837723d5a451077c7aebf44b29248037d01c1bc191f5b1aba18448" [label=""];
  "sha256:882e1a7d14837723d5a451077c7aebf44b29248037d01c1bc191f5b1aba18448" -> "sha256:3184b01b8e2a22cb6e248739c026169f985b76f7a590ddbdda929ceb81f8094b" [label=""];
  "sha256:3184b01b8e2a22cb6e248739c026169f985b76f7a590ddbdda929ceb81f8094b" -> "sha256:158b5afb322b6a450ca7e710aca0aa6b7f09e2f6991ae4f575500d30c10aecde" [label=""];
}

