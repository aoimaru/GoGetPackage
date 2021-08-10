[app/sources/270296505.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:5c30ccd724cd765fc7ac21bdee5e3157f59c2572acbcb9a3d363b9fc43974773" [label="/bin/sh -c yum install -y java-1.8.0-openjdk libaio && yum clean all" shape="box"];
  "sha256:fe01c2b54762bcdcec2eb1ade2f4138d24bf9e73b77727fb1929b1cfe416dfe3" [label="/bin/sh -c mkdir -p ${MAESTRO_SUT_ROOT}" shape="box"];
  "sha256:6e29baab86fcfb8802fb4ee087ec2eb29446cce7ae7bbd8b836b83c55eb6abbd" [label="mkdir{path=/opt/maestro/sut}" shape="note"];
  "sha256:12ab74b9484a023dd2147f4a1d535ca07692118b564a0818787072926b1b531e" [label="/bin/sh -c curl https://archive.apache.org/dist/activemq/activemq-artemis/${ARTEMIS_VERSION}/apache-artemis-${ARTEMIS_VERSION}-bin.tar.gz -o apache-artemis.tar.gz &&     mkdir -p apache-artemis && tar --strip-components=1 -xvf apache-artemis.tar.gz -C apache-artemis &&     rm -f apache-artemis.tar.gz" shape="box"];
  "sha256:8bc3a30a95a098561f04ad505c974c259cba1fb4e5166f74f8386fd9ccbdfc86" [label="/bin/sh -c ${MAESTRO_SUT_ROOT}/apache-artemis/bin/artemis create --${ARTEMIS_JOURNAL} --allow-anonymous --http-host 0.0.0.0 --user admin --password \"admin\" --role amq --data ${MAESTRO_DATA_ROOT} ${MAESTRO_SUT_ROOT}/apache-artemis-instance" shape="box"];
  "sha256:1034e082e2f4ff3007ee8a17d1e0785aa4ee5395ee235cc2d9538e8ca6cd81a1" [label="local://context" shape="ellipse"];
  "sha256:4b5205bcbd6c11a502add9fbf7a74096f4b160c96f4738127734bb85b7cbbdf9" [label="copy{src=/jolokia-access.xml, dest=/opt/maestro/sut/apache-artemis-instance/etc/jolokia-access.xml}" shape="note"];
  "sha256:25779f8dc84aada5d4a38e677ae9d6b30285f4194265a74f4cf65517a10ad784" [label="sha256:25779f8dc84aada5d4a38e677ae9d6b30285f4194265a74f4cf65517a10ad784" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:5c30ccd724cd765fc7ac21bdee5e3157f59c2572acbcb9a3d363b9fc43974773" [label=""];
  "sha256:5c30ccd724cd765fc7ac21bdee5e3157f59c2572acbcb9a3d363b9fc43974773" -> "sha256:fe01c2b54762bcdcec2eb1ade2f4138d24bf9e73b77727fb1929b1cfe416dfe3" [label=""];
  "sha256:fe01c2b54762bcdcec2eb1ade2f4138d24bf9e73b77727fb1929b1cfe416dfe3" -> "sha256:6e29baab86fcfb8802fb4ee087ec2eb29446cce7ae7bbd8b836b83c55eb6abbd" [label=""];
  "sha256:6e29baab86fcfb8802fb4ee087ec2eb29446cce7ae7bbd8b836b83c55eb6abbd" -> "sha256:12ab74b9484a023dd2147f4a1d535ca07692118b564a0818787072926b1b531e" [label=""];
  "sha256:12ab74b9484a023dd2147f4a1d535ca07692118b564a0818787072926b1b531e" -> "sha256:8bc3a30a95a098561f04ad505c974c259cba1fb4e5166f74f8386fd9ccbdfc86" [label=""];
  "sha256:8bc3a30a95a098561f04ad505c974c259cba1fb4e5166f74f8386fd9ccbdfc86" -> "sha256:4b5205bcbd6c11a502add9fbf7a74096f4b160c96f4738127734bb85b7cbbdf9" [label=""];
  "sha256:1034e082e2f4ff3007ee8a17d1e0785aa4ee5395ee235cc2d9538e8ca6cd81a1" -> "sha256:4b5205bcbd6c11a502add9fbf7a74096f4b160c96f4738127734bb85b7cbbdf9" [label=""];
  "sha256:4b5205bcbd6c11a502add9fbf7a74096f4b160c96f4738127734bb85b7cbbdf9" -> "sha256:25779f8dc84aada5d4a38e677ae9d6b30285f4194265a74f4cf65517a10ad784" [label=""];
}

