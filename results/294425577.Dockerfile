[app/sources/294425577.Dockerfile]
digraph {
  "sha256:339fcea1d5a96ca170af0e3a4cbdc0d2d62f911b8a1c92caf1e91220a1393f1b" [label="docker-image://docker.io/library/oraclelinux:6" shape="ellipse"];
  "sha256:bd95395691b8e88223edf3b6bd09109760dfc7650bb87a353d542afb2eb141da" [label="/bin/sh -c yum install tar -y" shape="box"];
  "sha256:3eec1e8ff2116d5094d5e548ad1ddc0f04fbe80a72c4531186ca09addd9fad94" [label="/bin/sh -c cd /     && curl --header \"Cookie: oraclelicense=accept-securebackup-cookie\" -fSL     http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-b$JAVA_BNUMBER/$JAVA_RANDOM/server-jre-$JAVA_VERSION-linux-x64.tar.gz     -o server-jre-$JAVA_VERSION-linux-x64.tar.gz     && tar -zxf server-jre-$JAVA_VERSION-linux-x64.tar.gz -C /opt     && rm server-jre-$JAVA_VERSION-linux-x64.tar.gz     && ln -s /opt/jdk$JAVA_SEMVER/ /opt/jre-home;" shape="box"];
  "sha256:45e3c38447b6660e0338c98239ad69dd289bfde94354d23495b047f93f5d93b1" [label="/bin/sh -c groupadd -r tomcat && useradd -r -g tomcat tomcat" shape="box"];
  "sha256:0d286aaaf7139a30daea1311f1220bbe1279ab26c952b186a281a46a93af96a7" [label="/bin/sh -c mkdir -p \"$CATALINA_HOME\" && chown tomcat:tomcat \"$CATALINA_HOME\"" shape="box"];
  "sha256:2a0b88a1260c34d57d4b8e25f8f2ccda68990fcb9177828cf535294d797e701a" [label="mkdir{path=/usr/local/tomcat}" shape="note"];
  "sha256:c4d303c0ceaf8da5e026b678a5f6a3987194298518aa5996c5c75902c56a47e6" [label="/bin/sh -c for key in                 05AB33110949707C93A279E3D3EFE6B686867BA6                 07E48665A34DCAFAE522E5E6266191C37C037D42                 47309207D818FFD8DCD3F83F1931D684307A10A5                 541FBE7D8F78B25E055DDEE13C370389288584E7                 61B832AC2F1C5A90F0F9B00A1C506407564C17A3                 713DA88BE50911535FE716F5208B0AB1D63011C7                 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED                 9BA44C2621385CB966EBA586F72C284D731FABEE                 A27677289986DB50844682F8ACB77FC2E86E29AC                 A9C5DF4D22E99998D9875A5110C01C5A2F6059E7                 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243                 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE                 F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23         ; do                 gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\";         done" shape="box"];
  "sha256:d0309506380b8ff64158dcc53546b1f47d49b022fcdd45ecd74dc7650573ef6e" [label="/bin/sh -c set -x   && curl -fSL $TOMCAT_TGZ_URL -o tomcat.tar.gz         && curl -fSL \"$TOMCAT_TGZ_URL.asc\" -o tomcat.tar.gz.asc         && gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz         && tar -xvf tomcat.tar.gz --strip-components=1         && rm bin/*.bat         && rm tomcat.tar.gz*   && rm -rf webapps/*   && chown -R tomcat:tomcat $CATALINA_HOME" shape="box"];
  "sha256:7b8d6c28075cf3e916dbedd39ab75556051c26f1f5ea5b52f8a761420b9d7b3f" [label="local://context" shape="ellipse"];
  "sha256:9a1a80415938b1bf922e56a59b3002fc8b003f8cd2e9eb8d642a55d9321b92dd" [label="copy{src=/ojdbc7.jar, dest=/usr/local/tomcat/lib/ojdbc7.jar}" shape="note"];
  "sha256:a62461da27cdda47b67b691fc454faa52bdf6a2320bbf1b44de18fb33b6f0d7f" [label="copy{src=/context.xml, dest=/usr/local/tomcat/conf/context.xml}" shape="note"];
  "sha256:64c20701f0c89fff8231f88fc773ad3f2625399af4a5a93b5f3aa7e61a2a776b" [label="copy{src=/server.xml, dest=/usr/local/tomcat/conf/server.xml}" shape="note"];
  "sha256:6f8bd9025a0ae32a5c34915833bf2d92198453f5749f02e2af924f8c8871c2e1" [label="sha256:6f8bd9025a0ae32a5c34915833bf2d92198453f5749f02e2af924f8c8871c2e1" shape="plaintext"];
  "sha256:339fcea1d5a96ca170af0e3a4cbdc0d2d62f911b8a1c92caf1e91220a1393f1b" -> "sha256:bd95395691b8e88223edf3b6bd09109760dfc7650bb87a353d542afb2eb141da" [label=""];
  "sha256:bd95395691b8e88223edf3b6bd09109760dfc7650bb87a353d542afb2eb141da" -> "sha256:3eec1e8ff2116d5094d5e548ad1ddc0f04fbe80a72c4531186ca09addd9fad94" [label=""];
  "sha256:3eec1e8ff2116d5094d5e548ad1ddc0f04fbe80a72c4531186ca09addd9fad94" -> "sha256:45e3c38447b6660e0338c98239ad69dd289bfde94354d23495b047f93f5d93b1" [label=""];
  "sha256:45e3c38447b6660e0338c98239ad69dd289bfde94354d23495b047f93f5d93b1" -> "sha256:0d286aaaf7139a30daea1311f1220bbe1279ab26c952b186a281a46a93af96a7" [label=""];
  "sha256:0d286aaaf7139a30daea1311f1220bbe1279ab26c952b186a281a46a93af96a7" -> "sha256:2a0b88a1260c34d57d4b8e25f8f2ccda68990fcb9177828cf535294d797e701a" [label=""];
  "sha256:2a0b88a1260c34d57d4b8e25f8f2ccda68990fcb9177828cf535294d797e701a" -> "sha256:c4d303c0ceaf8da5e026b678a5f6a3987194298518aa5996c5c75902c56a47e6" [label=""];
  "sha256:c4d303c0ceaf8da5e026b678a5f6a3987194298518aa5996c5c75902c56a47e6" -> "sha256:d0309506380b8ff64158dcc53546b1f47d49b022fcdd45ecd74dc7650573ef6e" [label=""];
  "sha256:d0309506380b8ff64158dcc53546b1f47d49b022fcdd45ecd74dc7650573ef6e" -> "sha256:9a1a80415938b1bf922e56a59b3002fc8b003f8cd2e9eb8d642a55d9321b92dd" [label=""];
  "sha256:7b8d6c28075cf3e916dbedd39ab75556051c26f1f5ea5b52f8a761420b9d7b3f" -> "sha256:9a1a80415938b1bf922e56a59b3002fc8b003f8cd2e9eb8d642a55d9321b92dd" [label=""];
  "sha256:9a1a80415938b1bf922e56a59b3002fc8b003f8cd2e9eb8d642a55d9321b92dd" -> "sha256:a62461da27cdda47b67b691fc454faa52bdf6a2320bbf1b44de18fb33b6f0d7f" [label=""];
  "sha256:7b8d6c28075cf3e916dbedd39ab75556051c26f1f5ea5b52f8a761420b9d7b3f" -> "sha256:a62461da27cdda47b67b691fc454faa52bdf6a2320bbf1b44de18fb33b6f0d7f" [label=""];
  "sha256:a62461da27cdda47b67b691fc454faa52bdf6a2320bbf1b44de18fb33b6f0d7f" -> "sha256:64c20701f0c89fff8231f88fc773ad3f2625399af4a5a93b5f3aa7e61a2a776b" [label=""];
  "sha256:7b8d6c28075cf3e916dbedd39ab75556051c26f1f5ea5b52f8a761420b9d7b3f" -> "sha256:64c20701f0c89fff8231f88fc773ad3f2625399af4a5a93b5f3aa7e61a2a776b" [label=""];
  "sha256:64c20701f0c89fff8231f88fc773ad3f2625399af4a5a93b5f3aa7e61a2a776b" -> "sha256:6f8bd9025a0ae32a5c34915833bf2d92198453f5749f02e2af924f8c8871c2e1" [label=""];
}

