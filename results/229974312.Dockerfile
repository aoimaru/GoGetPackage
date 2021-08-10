[app/sources/229974312.Dockerfile]
digraph {
  "sha256:ace46fee513ccd4a175f758c351f5da49a4060fc1f400db58cbb69b0b1b6d803" [label="docker-image://docker.io/keensoft/alfresco-docker-template:201612-GA" shape="ellipse"];
  "sha256:e90a75e7be5cf58388c798b78c5021277119157032fd9455c30e81e42409eb93" [label="/bin/sh -c set -x \t&& yum update -y \t&& yum clean all" shape="box"];
  "sha256:ec49ca04e2e95d62af0931b2ef6ef1aa5833106c8eb67f9bebfba87712b389bd" [label="/bin/sh -c set -x \t&& yum install -y \t\tImageMagick \t\tghostscript \t&& yum clean all" shape="box"];
  "sha256:4cb145c5940a863e994526d84538107a043b326c75e2c5e8de48280b8b4d9aba" [label="mkdir{path=/usr/local/alfresco}" shape="note"];
  "sha256:b166c56cc54a9a1d626d86a976901714e6a8334c6d05880092e01dd2919c22fd" [label="/bin/sh -c set -x         && ln -s /usr/local/tomcat /usr/local/alfresco/tomcat \t&& mv $DIST/web-server/conf/Catalina tomcat/conf/         && mv $DIST/web-server/shared tomcat/         && mv $DIST/web-server/lib/*.jar tomcat/lib/         && mv $DIST/web-server/webapps/alfresco.war tomcat/webapps/         && mv $DIST/web-server/webapps/share.war tomcat/webapps/ \t&& mv $DIST/web-server/webapps/solr4.war tomcat/webapps/ \t&& mv $DIST/solr4/context.xml tomcat/conf/Catalina/localhost/solr4.xml \t&& mv $DIST/solr4 .         && mv $DIST/alf_data .         && mv $DIST/amps .         && mv $DIST/bin .         && mv $DIST/licenses .         && mv $DIST/README.txt .         && rm -rf $CATALINA_HOME/webapps/docs         && rm -rf $CATALINA_HOME/webapps/examples         && mkdir $CATALINA_HOME/shared/lib $ALF_HOME/amps_share         && rm -rf $DIST" shape="box"];
  "sha256:2a16f7772b0a521363d532728052c652235a6c6b9c249965730d221d274bbe90" [label="local://context" shape="ellipse"];
  "sha256:0d4053f57800f49a19741e382a60f93ea59ad5e20608275f65c6086c338ff2ad" [label="copy{src=/assets/tomcat/catalina.properties, dest=/usr/local/alfresco/tomcat/conf/catalina.properties}" shape="note"];
  "sha256:702a7b90f519d9bdb8fbaf9afae472dbcde3bc9f4017612fb2a69d696ab6aa7e" [label="copy{src=/assets/tomcat/setenv.sh, dest=/usr/local/alfresco/tomcat/bin/setenv.sh}" shape="note"];
  "sha256:556b5dfeac9eca92e1677d98970e7d889d8e58fd8b27a4cbee33a3dbc1618cd5" [label="copy{src=/assets/alfresco/alfresco-global.properties, dest=/usr/local/alfresco/tomcat/shared/classes/alfresco-global.properties}" shape="note"];
  "sha256:d2cb0a714307c07e8f5f1effb3397a8240a6c78e4814ef9765f4f904ae14a8e1" [label="/bin/sh -c set -x     && sed -i 's,@@ALFRESCO_SOLR4_DIR@@,'\"$ALF_HOME\"'/solr4,g' tomcat/conf/Catalina/localhost/solr4.xml     && sed -i 's,@@ALFRESCO_SOLR4_MODEL_DIR@@,'\"$ALF_HOME\"'/alf_data/solr4/model,g' tomcat/conf/Catalina/localhost/solr4.xml     && sed -i 's,@@ALFRESCO_SOLR4_CONTENT_DIR@@,'\"$ALF_HOME\"'/alf_data/solr4/content,g' tomcat/conf/Catalina/localhost/solr4.xml     && sed -i 's,@@ALFRESCO_SOLR4_DATA_DIR@@,'\"$ALF_HOME\"'/alf_data/solr4/index,g' solr4/workspace-SpacesStore/conf/solrcore.properties     && sed -i 's,@@ALFRESCO_SOLR4_DATA_DIR@@,'\"$ALF_HOME\"'/alf_data/solr4/index,g' solr4/archive-SpacesStore/conf/solrcore.properties     && sed -i 's,alfresco.secureComms=https,alfresco.secureComms=none,g' solr4/workspace-SpacesStore/conf/solrcore.properties     && sed -i 's,alfresco.secureComms=https,alfresco.secureComms=none,g' solr4/archive-SpacesStore/conf/solrcore.properties" shape="box"];
  "sha256:59a67bb74fd1b31bd8ec2aebae4937239132031c871ed2ef0db115144bda0b92" [label="copy{src=/assets/amps, dest=/usr/local/alfresco/amps}" shape="note"];
  "sha256:a5b0febff3cec49d5bd618a9c3242342a6ca6343363cd04ef5f40693d48cac96" [label="copy{src=/assets/amps_share, dest=/usr/local/alfresco/amps_share}" shape="note"];
  "sha256:f221a1e13e4d33875273652d990de0730ce22ca5a7e863e46fce1f8521e2de97" [label="/bin/sh -c bash ./bin/apply_amps.sh -force -nobackup" shape="box"];
  "sha256:31591c852dcc8962beafe53b716b204df7df3ce9e0c871bb3473d214b410466a" [label="copy{src=/assets/api-explorer/api-explorer.war, dest=/usr/local/alfresco/tomcat/webapps/api-explorer.war}" shape="note"];
  "sha256:5ea4dbfd641a77364cba9df1b1719a422a6bfc04410b6fb161b48d26fd460482" [label="/bin/sh -c useradd -ms /bin/bash alfresco" shape="box"];
  "sha256:179923f9c76838aa450af26139928b8581e5ada8bbd04f83d216405877846e6c" [label="/bin/sh -c set -x && chown -RL alfresco:alfresco $ALF_HOME" shape="box"];
  "sha256:c7a3ebd9d8a75a4687c176fbdda69025c695479dfc1c33f12b917701d2ccf137" [label="sha256:c7a3ebd9d8a75a4687c176fbdda69025c695479dfc1c33f12b917701d2ccf137" shape="plaintext"];
  "sha256:ace46fee513ccd4a175f758c351f5da49a4060fc1f400db58cbb69b0b1b6d803" -> "sha256:e90a75e7be5cf58388c798b78c5021277119157032fd9455c30e81e42409eb93" [label=""];
  "sha256:e90a75e7be5cf58388c798b78c5021277119157032fd9455c30e81e42409eb93" -> "sha256:ec49ca04e2e95d62af0931b2ef6ef1aa5833106c8eb67f9bebfba87712b389bd" [label=""];
  "sha256:ec49ca04e2e95d62af0931b2ef6ef1aa5833106c8eb67f9bebfba87712b389bd" -> "sha256:4cb145c5940a863e994526d84538107a043b326c75e2c5e8de48280b8b4d9aba" [label=""];
  "sha256:4cb145c5940a863e994526d84538107a043b326c75e2c5e8de48280b8b4d9aba" -> "sha256:b166c56cc54a9a1d626d86a976901714e6a8334c6d05880092e01dd2919c22fd" [label=""];
  "sha256:b166c56cc54a9a1d626d86a976901714e6a8334c6d05880092e01dd2919c22fd" -> "sha256:0d4053f57800f49a19741e382a60f93ea59ad5e20608275f65c6086c338ff2ad" [label=""];
  "sha256:2a16f7772b0a521363d532728052c652235a6c6b9c249965730d221d274bbe90" -> "sha256:0d4053f57800f49a19741e382a60f93ea59ad5e20608275f65c6086c338ff2ad" [label=""];
  "sha256:0d4053f57800f49a19741e382a60f93ea59ad5e20608275f65c6086c338ff2ad" -> "sha256:702a7b90f519d9bdb8fbaf9afae472dbcde3bc9f4017612fb2a69d696ab6aa7e" [label=""];
  "sha256:2a16f7772b0a521363d532728052c652235a6c6b9c249965730d221d274bbe90" -> "sha256:702a7b90f519d9bdb8fbaf9afae472dbcde3bc9f4017612fb2a69d696ab6aa7e" [label=""];
  "sha256:702a7b90f519d9bdb8fbaf9afae472dbcde3bc9f4017612fb2a69d696ab6aa7e" -> "sha256:556b5dfeac9eca92e1677d98970e7d889d8e58fd8b27a4cbee33a3dbc1618cd5" [label=""];
  "sha256:2a16f7772b0a521363d532728052c652235a6c6b9c249965730d221d274bbe90" -> "sha256:556b5dfeac9eca92e1677d98970e7d889d8e58fd8b27a4cbee33a3dbc1618cd5" [label=""];
  "sha256:556b5dfeac9eca92e1677d98970e7d889d8e58fd8b27a4cbee33a3dbc1618cd5" -> "sha256:d2cb0a714307c07e8f5f1effb3397a8240a6c78e4814ef9765f4f904ae14a8e1" [label=""];
  "sha256:d2cb0a714307c07e8f5f1effb3397a8240a6c78e4814ef9765f4f904ae14a8e1" -> "sha256:59a67bb74fd1b31bd8ec2aebae4937239132031c871ed2ef0db115144bda0b92" [label=""];
  "sha256:2a16f7772b0a521363d532728052c652235a6c6b9c249965730d221d274bbe90" -> "sha256:59a67bb74fd1b31bd8ec2aebae4937239132031c871ed2ef0db115144bda0b92" [label=""];
  "sha256:59a67bb74fd1b31bd8ec2aebae4937239132031c871ed2ef0db115144bda0b92" -> "sha256:a5b0febff3cec49d5bd618a9c3242342a6ca6343363cd04ef5f40693d48cac96" [label=""];
  "sha256:2a16f7772b0a521363d532728052c652235a6c6b9c249965730d221d274bbe90" -> "sha256:a5b0febff3cec49d5bd618a9c3242342a6ca6343363cd04ef5f40693d48cac96" [label=""];
  "sha256:a5b0febff3cec49d5bd618a9c3242342a6ca6343363cd04ef5f40693d48cac96" -> "sha256:f221a1e13e4d33875273652d990de0730ce22ca5a7e863e46fce1f8521e2de97" [label=""];
  "sha256:f221a1e13e4d33875273652d990de0730ce22ca5a7e863e46fce1f8521e2de97" -> "sha256:31591c852dcc8962beafe53b716b204df7df3ce9e0c871bb3473d214b410466a" [label=""];
  "sha256:2a16f7772b0a521363d532728052c652235a6c6b9c249965730d221d274bbe90" -> "sha256:31591c852dcc8962beafe53b716b204df7df3ce9e0c871bb3473d214b410466a" [label=""];
  "sha256:31591c852dcc8962beafe53b716b204df7df3ce9e0c871bb3473d214b410466a" -> "sha256:5ea4dbfd641a77364cba9df1b1719a422a6bfc04410b6fb161b48d26fd460482" [label=""];
  "sha256:5ea4dbfd641a77364cba9df1b1719a422a6bfc04410b6fb161b48d26fd460482" -> "sha256:179923f9c76838aa450af26139928b8581e5ada8bbd04f83d216405877846e6c" [label=""];
  "sha256:179923f9c76838aa450af26139928b8581e5ada8bbd04f83d216405877846e6c" -> "sha256:c7a3ebd9d8a75a4687c176fbdda69025c695479dfc1c33f12b917701d2ccf137" [label=""];
}

