[app/sources/280030393.Dockerfile]
digraph {
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" [label="docker-image://docker.io/library/debian:9" shape="ellipse"];
  "sha256:02e9d323a5d5704d3d94a61c1efb4046d5fecd1b0e35da5f80cf2fc510f0e8ef" [label="/bin/sh -c apt-get update -q" shape="box"];
  "sha256:9813334c066229e2599a9970bc72b34fe4b99e4b17aa18097262ffa64438097c" [label="/bin/sh -c apt-get install -yq --no-install-recommends curl ca-certificates bash rsync dash     && curl -Lo \"/tmp/bats.tar.gz\"         \"https://github.com/sstephenson/bats/archive/v${BATS_VERSION}.tar.gz\"     && tar -xf \"/tmp/bats.tar.gz\" -C /tmp/     && bash \"/tmp/bats-${BATS_VERSION}/install.sh\" /usr/local     && rm -rf /tmp/*" shape="box"];
  "sha256:f00034cc3972b9c72607a38599f9232386b78e9c658bd062c5d5ac7ca94f28a5" [label="/bin/sh -c curl -Lo /usr/local/bin/rsync_tmbackup.sh     https://github.com/laurent22/rsync-time-backup/raw/74f418d561b43243aa31e17426087befc066c870/rsync_tmbackup.sh   && chmod +x /usr/local/bin/rsync_tmbackup.sh" shape="box"];
  "sha256:1b9e16a7fa64fa994f20b4008daed73c12055c0c953fd1320df27468a901a226" [label="/bin/sh -c mkdir /target /source   && touch \"/target/backup.marker\"" shape="box"];
  "sha256:b097260bce97f5b9809a5c24596b5d1fd5cf54d9064671ee534ca0ad6227e913" [label="local://context" shape="ellipse"];
  "sha256:b8f4955234d823e5711c67ad876a277c710a0387adf169529cc2dab38d78113e" [label="copy{src=/test/example-source, dest=/source}" shape="note"];
  "sha256:565cb3d4bf6208f9c3b74363aeeaa69272c0d22ad6c0104463a3d04151477316" [label="copy{src=/rtb-wrapper.sh, dest=/opt/}" shape="note"];
  "sha256:dbb675ed710836faed18c89ca68f68952f2e79181c2114190f076111060851be" [label="/bin/sh -c chmod +x /opt/rtb-wrapper.sh" shape="box"];
  "sha256:61574a51b63e296a7fa05ce411c7b4a0792e84d6b8deb71ed6fea33fb37f2f9c" [label="copy{src=/test/conf.d/*, dest=/root/.rsync_tmbackup/conf.d/}" shape="note"];
  "sha256:f6b9922756099facb58984fea273853388ec4cbe127fa4082ea5a51d3a1a16fb" [label="copy{src=/test/*.lst, dest=/}" shape="note"];
  "sha256:bce2efaf6640dcfbb9da44972451072adcd12502d197a4b18fb80ad05549261f" [label="sha256:bce2efaf6640dcfbb9da44972451072adcd12502d197a4b18fb80ad05549261f" shape="plaintext"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:02e9d323a5d5704d3d94a61c1efb4046d5fecd1b0e35da5f80cf2fc510f0e8ef" [label=""];
  "sha256:02e9d323a5d5704d3d94a61c1efb4046d5fecd1b0e35da5f80cf2fc510f0e8ef" -> "sha256:9813334c066229e2599a9970bc72b34fe4b99e4b17aa18097262ffa64438097c" [label=""];
  "sha256:9813334c066229e2599a9970bc72b34fe4b99e4b17aa18097262ffa64438097c" -> "sha256:f00034cc3972b9c72607a38599f9232386b78e9c658bd062c5d5ac7ca94f28a5" [label=""];
  "sha256:f00034cc3972b9c72607a38599f9232386b78e9c658bd062c5d5ac7ca94f28a5" -> "sha256:1b9e16a7fa64fa994f20b4008daed73c12055c0c953fd1320df27468a901a226" [label=""];
  "sha256:1b9e16a7fa64fa994f20b4008daed73c12055c0c953fd1320df27468a901a226" -> "sha256:b8f4955234d823e5711c67ad876a277c710a0387adf169529cc2dab38d78113e" [label=""];
  "sha256:b097260bce97f5b9809a5c24596b5d1fd5cf54d9064671ee534ca0ad6227e913" -> "sha256:b8f4955234d823e5711c67ad876a277c710a0387adf169529cc2dab38d78113e" [label=""];
  "sha256:b8f4955234d823e5711c67ad876a277c710a0387adf169529cc2dab38d78113e" -> "sha256:565cb3d4bf6208f9c3b74363aeeaa69272c0d22ad6c0104463a3d04151477316" [label=""];
  "sha256:b097260bce97f5b9809a5c24596b5d1fd5cf54d9064671ee534ca0ad6227e913" -> "sha256:565cb3d4bf6208f9c3b74363aeeaa69272c0d22ad6c0104463a3d04151477316" [label=""];
  "sha256:565cb3d4bf6208f9c3b74363aeeaa69272c0d22ad6c0104463a3d04151477316" -> "sha256:dbb675ed710836faed18c89ca68f68952f2e79181c2114190f076111060851be" [label=""];
  "sha256:dbb675ed710836faed18c89ca68f68952f2e79181c2114190f076111060851be" -> "sha256:61574a51b63e296a7fa05ce411c7b4a0792e84d6b8deb71ed6fea33fb37f2f9c" [label=""];
  "sha256:b097260bce97f5b9809a5c24596b5d1fd5cf54d9064671ee534ca0ad6227e913" -> "sha256:61574a51b63e296a7fa05ce411c7b4a0792e84d6b8deb71ed6fea33fb37f2f9c" [label=""];
  "sha256:61574a51b63e296a7fa05ce411c7b4a0792e84d6b8deb71ed6fea33fb37f2f9c" -> "sha256:f6b9922756099facb58984fea273853388ec4cbe127fa4082ea5a51d3a1a16fb" [label=""];
  "sha256:b097260bce97f5b9809a5c24596b5d1fd5cf54d9064671ee534ca0ad6227e913" -> "sha256:f6b9922756099facb58984fea273853388ec4cbe127fa4082ea5a51d3a1a16fb" [label=""];
  "sha256:f6b9922756099facb58984fea273853388ec4cbe127fa4082ea5a51d3a1a16fb" -> "sha256:bce2efaf6640dcfbb9da44972451072adcd12502d197a4b18fb80ad05549261f" [label=""];
}

