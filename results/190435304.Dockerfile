[app/sources/190435304.Dockerfile]
digraph {
  "sha256:bc5bbfe9c6c409de669b73de4aee4f390b64bd5476a0995328fb38ab19ca957e" [label="docker-image://docker.io/library/tomcat:7-jre7" shape="ellipse"];
  "sha256:ce9c0e69a6a105b887f7e5147e935f655dd6f8d181b038c1ea9482bf6373ad03" [label="docker-image://docker.io/library/maven:3-jdk-7" shape="ellipse"];
  "sha256:714937ef13f5df1dec3610d3b0f219176b2bb6a08939a8fd2efefbfd8c360a3c" [label="mkdir{path=/app}" shape="note"];
  "sha256:0b164d77532d8247d7842e9912083d8c457ba91b3271438e5383c827e1454110" [label="/bin/sh -c useradd dspace     && mkdir /home/dspace     && chown -Rv dspace: /home/dspace /app" shape="box"];
  "sha256:3b1e226373596bfb69f2aabd2907f356968f1f14ed9dd1d90550c4a939975536" [label="local://context" shape="ellipse"];
  "sha256:49717101810d2483d9aa32a792a840220875d3f2fe641fdb92824b57a89e09d3" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:27053259186bbf2b47e6134993e0f93ad946d1928f441fcb83f28088bcc22008" [label="copy{src=/dspace/src/main/docker/build.properties, dest=/app/build.properties}" shape="note"];
  "sha256:5a8d42106b01fda506a9f50a561fee615bbe06e07614306b3cc06d9ecd1a4535" [label="/bin/sh -c mvn package -Dmirage2.on=true" shape="box"];
  "sha256:e10cb92e24f2d7a4c36b0163ac0b6a1dc5265ec94c2b8a97a065104ad75f2641" [label="copy{src=/app, dest=/dspace-src}" shape="note"];
  "sha256:0f27a7f955c8e832c8b79c38179cfe7955274ca18480401c470ed21b31604c35" [label="mkdir{path=/dspace-src/dspace/target/dspace-installer}" shape="note"];
  "sha256:672a29d86ad0a95361e3c125757089b327524ca68d42932ef0df0a4cdfe25973" [label="/bin/sh -c mkdir $ANT_HOME &&     wget -qO- \"https://www.apache.org/dist/ant/binaries/apache-ant-$ANT_VERSION-bin.tar.gz\" | tar -zx --strip-components=1 -C $ANT_HOME" shape="box"];
  "sha256:08c06aa44458f7cc885202ce65e340577a233de22ef8e5485ace32b027c49f87" [label="/bin/sh -c ant update_configs update_code update_webapps update_solr_indexes" shape="box"];
  "sha256:8515b3d6304c31d9173d8da72c5f51df62f4c95a6f50a1d517f81ff44820cad6" [label="copy{src=/dspace, dest=/dspace}" shape="note"];
  "sha256:6d4e7716ffc9a7a1a4bfe84a0646761516889f59059b5fe2429aaec4f297a4a4" [label="/bin/sh -c mkdir $ANT_HOME &&     wget -qO- \"https://www.apache.org/dist/ant/binaries/apache-ant-$ANT_VERSION-bin.tar.gz\" | tar -zx --strip-components=1 -C $ANT_HOME" shape="box"];
  "sha256:20b912e199e2ed1d68277ad084711c3b78f4e75afa22463a48019765d04bed62" [label="/bin/sh -c ln -s $DSPACE_INSTALL/webapps/solr    /usr/local/tomcat/webapps/solr    &&     ln -s $DSPACE_INSTALL/webapps/xmlui   /usr/local/tomcat/webapps/xmlui   &&     ln -s $DSPACE_INSTALL/webapps/jspui   /usr/local/tomcat/webapps/jspui   &&     ln -s $DSPACE_INSTALL/webapps/rest    /usr/local/tomcat/webapps/rest    &&     ln -s $DSPACE_INSTALL/webapps/oai     /usr/local/tomcat/webapps/oai     &&     ln -s $DSPACE_INSTALL/webapps/rdf     /usr/local/tomcat/webapps/rdf     &&     ln -s $DSPACE_INSTALL/webapps/sword   /usr/local/tomcat/webapps/sword   &&     ln -s $DSPACE_INSTALL/webapps/swordv2 /usr/local/tomcat/webapps/swordv2" shape="box"];
  "sha256:597b63383694b5b7cdc7651a20a3fb938bc2f44cfa06179a742a4a773c3b11f3" [label="sha256:597b63383694b5b7cdc7651a20a3fb938bc2f44cfa06179a742a4a773c3b11f3" shape="plaintext"];
  "sha256:ce9c0e69a6a105b887f7e5147e935f655dd6f8d181b038c1ea9482bf6373ad03" -> "sha256:714937ef13f5df1dec3610d3b0f219176b2bb6a08939a8fd2efefbfd8c360a3c" [label=""];
  "sha256:714937ef13f5df1dec3610d3b0f219176b2bb6a08939a8fd2efefbfd8c360a3c" -> "sha256:0b164d77532d8247d7842e9912083d8c457ba91b3271438e5383c827e1454110" [label=""];
  "sha256:0b164d77532d8247d7842e9912083d8c457ba91b3271438e5383c827e1454110" -> "sha256:49717101810d2483d9aa32a792a840220875d3f2fe641fdb92824b57a89e09d3" [label=""];
  "sha256:3b1e226373596bfb69f2aabd2907f356968f1f14ed9dd1d90550c4a939975536" -> "sha256:49717101810d2483d9aa32a792a840220875d3f2fe641fdb92824b57a89e09d3" [label=""];
  "sha256:49717101810d2483d9aa32a792a840220875d3f2fe641fdb92824b57a89e09d3" -> "sha256:27053259186bbf2b47e6134993e0f93ad946d1928f441fcb83f28088bcc22008" [label=""];
  "sha256:3b1e226373596bfb69f2aabd2907f356968f1f14ed9dd1d90550c4a939975536" -> "sha256:27053259186bbf2b47e6134993e0f93ad946d1928f441fcb83f28088bcc22008" [label=""];
  "sha256:27053259186bbf2b47e6134993e0f93ad946d1928f441fcb83f28088bcc22008" -> "sha256:5a8d42106b01fda506a9f50a561fee615bbe06e07614306b3cc06d9ecd1a4535" [label=""];
  "sha256:bc5bbfe9c6c409de669b73de4aee4f390b64bd5476a0995328fb38ab19ca957e" -> "sha256:e10cb92e24f2d7a4c36b0163ac0b6a1dc5265ec94c2b8a97a065104ad75f2641" [label=""];
  "sha256:5a8d42106b01fda506a9f50a561fee615bbe06e07614306b3cc06d9ecd1a4535" -> "sha256:e10cb92e24f2d7a4c36b0163ac0b6a1dc5265ec94c2b8a97a065104ad75f2641" [label=""];
  "sha256:e10cb92e24f2d7a4c36b0163ac0b6a1dc5265ec94c2b8a97a065104ad75f2641" -> "sha256:0f27a7f955c8e832c8b79c38179cfe7955274ca18480401c470ed21b31604c35" [label=""];
  "sha256:0f27a7f955c8e832c8b79c38179cfe7955274ca18480401c470ed21b31604c35" -> "sha256:672a29d86ad0a95361e3c125757089b327524ca68d42932ef0df0a4cdfe25973" [label=""];
  "sha256:672a29d86ad0a95361e3c125757089b327524ca68d42932ef0df0a4cdfe25973" -> "sha256:08c06aa44458f7cc885202ce65e340577a233de22ef8e5485ace32b027c49f87" [label=""];
  "sha256:bc5bbfe9c6c409de669b73de4aee4f390b64bd5476a0995328fb38ab19ca957e" -> "sha256:8515b3d6304c31d9173d8da72c5f51df62f4c95a6f50a1d517f81ff44820cad6" [label=""];
  "sha256:08c06aa44458f7cc885202ce65e340577a233de22ef8e5485ace32b027c49f87" -> "sha256:8515b3d6304c31d9173d8da72c5f51df62f4c95a6f50a1d517f81ff44820cad6" [label=""];
  "sha256:8515b3d6304c31d9173d8da72c5f51df62f4c95a6f50a1d517f81ff44820cad6" -> "sha256:6d4e7716ffc9a7a1a4bfe84a0646761516889f59059b5fe2429aaec4f297a4a4" [label=""];
  "sha256:6d4e7716ffc9a7a1a4bfe84a0646761516889f59059b5fe2429aaec4f297a4a4" -> "sha256:20b912e199e2ed1d68277ad084711c3b78f4e75afa22463a48019765d04bed62" [label=""];
  "sha256:20b912e199e2ed1d68277ad084711c3b78f4e75afa22463a48019765d04bed62" -> "sha256:597b63383694b5b7cdc7651a20a3fb938bc2f44cfa06179a742a4a773c3b11f3" [label=""];
}

