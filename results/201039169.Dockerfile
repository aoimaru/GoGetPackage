[app/sources/201039169.Dockerfile]
digraph {
  "sha256:40060d219923c65800095d61876df0cc09f582090839974e496adea73df1cd58" [label="local://context" shape="ellipse"];
  "sha256:262fafe3a795d00a1c8f1063879b85a6ed3b513bfce928a08151b39ce4cd2575" [label="docker-image://docker.io/cloudsuite/java@sha256:ef5dc050217f9cbb4ac928a1a58e2f4522af934f5788bbe457507e7188f04c0d" shape="ellipse"];
  "sha256:020cdb780ae559f5d692959f67dbd52de0685edbf515c7eabc6f09750dad9116" [label="/bin/sh -c apt-get update -y \t&& apt-get install -y --no-install-recommends telnet lsof wget unzip \t&& rm -rf /var/lib/apt/lists/* \t&& groupadd -r $SOLR_USER  \t&& useradd -r -g $SOLR_USER $SOLR_USER" shape="box"];
  "sha256:3793c69d0c556f0576f7c95df55c7a4a243a6eae16e125518a6f380b29016d08" [label="/bin/sh -c mkdir -p $BASE_PATH/cloudsuite-web-search \t&& cd $BASE_PATH \t&& wget -O solr.tar.gz \"archive.apache.org/dist/lucene/solr/$SOLR_VERSION/solr-$SOLR_VERSION.tgz\" \t&& tar -zxf solr.tar.gz" shape="box"];
  "sha256:fc079b35b9bed4d13d5bbe82ac7074a1b56c32543d014f253630861706a7704e" [label="/bin/sh -c cd $SOLR_HOME/server/solr/configsets/basic_configs/conf \t&& wget $SCHEMA_URL -O schema.xml \t&& wget $SOLR_CONFIG_URL -O solrconfig.xml" shape="box"];
  "sha256:533ac1635a0cef7ba0d817512b697da4cc33df160a9967ba71a2c8c99d0c32d9" [label="/bin/sh -c cd $SOLR_HOME \t&& mkdir -p $SOLR_CORE_DIR \t&& cp -R server/solr/* $SOLR_CORE_DIR" shape="box"];
  "sha256:6a6888108d53c4433c5318ae750d5f6975e7a9bfe138e53e759165bd210995fd" [label="/bin/sh -c chown -R $SOLR_USER:$SOLR_USER $BASE_PATH" shape="box"];
  "sha256:eda767b6284e823b6e0ca682ee7484aa04685efdddc9bbaf7e57c8ea081834b2" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:8b9177e28dc5b85cea0ac3cf51e7ec570f00b07aed1dd06bfbe17dbc2a588f63" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:6c77cce65db576b1097b00a288f6bb5445fdad719e6e3fb79056c62d2b58a37f" [label="sha256:6c77cce65db576b1097b00a288f6bb5445fdad719e6e3fb79056c62d2b58a37f" shape="plaintext"];
  "sha256:262fafe3a795d00a1c8f1063879b85a6ed3b513bfce928a08151b39ce4cd2575" -> "sha256:020cdb780ae559f5d692959f67dbd52de0685edbf515c7eabc6f09750dad9116" [label=""];
  "sha256:020cdb780ae559f5d692959f67dbd52de0685edbf515c7eabc6f09750dad9116" -> "sha256:3793c69d0c556f0576f7c95df55c7a4a243a6eae16e125518a6f380b29016d08" [label=""];
  "sha256:3793c69d0c556f0576f7c95df55c7a4a243a6eae16e125518a6f380b29016d08" -> "sha256:fc079b35b9bed4d13d5bbe82ac7074a1b56c32543d014f253630861706a7704e" [label=""];
  "sha256:fc079b35b9bed4d13d5bbe82ac7074a1b56c32543d014f253630861706a7704e" -> "sha256:533ac1635a0cef7ba0d817512b697da4cc33df160a9967ba71a2c8c99d0c32d9" [label=""];
  "sha256:533ac1635a0cef7ba0d817512b697da4cc33df160a9967ba71a2c8c99d0c32d9" -> "sha256:6a6888108d53c4433c5318ae750d5f6975e7a9bfe138e53e759165bd210995fd" [label=""];
  "sha256:6a6888108d53c4433c5318ae750d5f6975e7a9bfe138e53e759165bd210995fd" -> "sha256:eda767b6284e823b6e0ca682ee7484aa04685efdddc9bbaf7e57c8ea081834b2" [label=""];
  "sha256:40060d219923c65800095d61876df0cc09f582090839974e496adea73df1cd58" -> "sha256:eda767b6284e823b6e0ca682ee7484aa04685efdddc9bbaf7e57c8ea081834b2" [label=""];
  "sha256:eda767b6284e823b6e0ca682ee7484aa04685efdddc9bbaf7e57c8ea081834b2" -> "sha256:8b9177e28dc5b85cea0ac3cf51e7ec570f00b07aed1dd06bfbe17dbc2a588f63" [label=""];
  "sha256:8b9177e28dc5b85cea0ac3cf51e7ec570f00b07aed1dd06bfbe17dbc2a588f63" -> "sha256:6c77cce65db576b1097b00a288f6bb5445fdad719e6e3fb79056c62d2b58a37f" [label=""];
}

