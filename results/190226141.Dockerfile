[app/sources/190226141.Dockerfile]
digraph {
  "sha256:1f8b3e0e6fb009622c672dc3317b501e23dadcce8c57d35c8ee8f6158525453e" [label="docker-image://docker.io/library/tomcat:8-jdk8-slim" shape="ellipse"];
  "sha256:7e25afc6fdb80e9a27d9ebce17ad386bdf58d795fa6c1e5a60c68befd3e60bda" [label="/bin/sh -c apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7bdb4c1cacfe034e5ae4c2a7613d4a611e7e9fad4369aff4db03a87c352ac3d0" [label="/bin/sh -c rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL \"${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war\" -o xwiki.war &&   echo \"$XWIKI_DOWNLOAD_SHA256 xwiki.war\" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war" shape="box"];
  "sha256:fe57cc48d602ed9a782c90600eea3dec085448649f2ed32ef1e0db9903e1f12d" [label="/bin/sh -c cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/" shape="box"];
  "sha256:63f46abe73b8a56498d482e163261298e78088747d518ae7b0d4528ca732081f" [label="local://context" shape="ellipse"];
  "sha256:0127674419e293219b3e3484e72bc09282e9648beff80b21062c301a506b1ca5" [label="copy{src=/tomcat/setenv.sh, dest=/usr/local/tomcat/bin/}" shape="note"];
  "sha256:07ad6159eeb33330a2c0167270e40a471c238c0848b5188a3f3b359983ae4781" [label="copy{src=/xwiki/hibernate.cfg.xml, dest=/usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml}" shape="note"];
  "sha256:705ab91465a27cf56be090ac90876cddf2d2a54429d1c06a6a31d3e565bfea31" [label="/bin/sh -c sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed" shape="box"];
  "sha256:c60c03551473bfeba2c17f3cebb91396102f096d18eabe0885c791c469a62f8d" [label="copy{src=/xwiki/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:99ab25667e4a18b9c08206b4203e8dc70cc0b61340a597fe9aeb787afd893d77" [label="sha256:99ab25667e4a18b9c08206b4203e8dc70cc0b61340a597fe9aeb787afd893d77" shape="plaintext"];
  "sha256:1f8b3e0e6fb009622c672dc3317b501e23dadcce8c57d35c8ee8f6158525453e" -> "sha256:7e25afc6fdb80e9a27d9ebce17ad386bdf58d795fa6c1e5a60c68befd3e60bda" [label=""];
  "sha256:7e25afc6fdb80e9a27d9ebce17ad386bdf58d795fa6c1e5a60c68befd3e60bda" -> "sha256:7bdb4c1cacfe034e5ae4c2a7613d4a611e7e9fad4369aff4db03a87c352ac3d0" [label=""];
  "sha256:7bdb4c1cacfe034e5ae4c2a7613d4a611e7e9fad4369aff4db03a87c352ac3d0" -> "sha256:fe57cc48d602ed9a782c90600eea3dec085448649f2ed32ef1e0db9903e1f12d" [label=""];
  "sha256:fe57cc48d602ed9a782c90600eea3dec085448649f2ed32ef1e0db9903e1f12d" -> "sha256:0127674419e293219b3e3484e72bc09282e9648beff80b21062c301a506b1ca5" [label=""];
  "sha256:63f46abe73b8a56498d482e163261298e78088747d518ae7b0d4528ca732081f" -> "sha256:0127674419e293219b3e3484e72bc09282e9648beff80b21062c301a506b1ca5" [label=""];
  "sha256:0127674419e293219b3e3484e72bc09282e9648beff80b21062c301a506b1ca5" -> "sha256:07ad6159eeb33330a2c0167270e40a471c238c0848b5188a3f3b359983ae4781" [label=""];
  "sha256:63f46abe73b8a56498d482e163261298e78088747d518ae7b0d4528ca732081f" -> "sha256:07ad6159eeb33330a2c0167270e40a471c238c0848b5188a3f3b359983ae4781" [label=""];
  "sha256:07ad6159eeb33330a2c0167270e40a471c238c0848b5188a3f3b359983ae4781" -> "sha256:705ab91465a27cf56be090ac90876cddf2d2a54429d1c06a6a31d3e565bfea31" [label=""];
  "sha256:705ab91465a27cf56be090ac90876cddf2d2a54429d1c06a6a31d3e565bfea31" -> "sha256:c60c03551473bfeba2c17f3cebb91396102f096d18eabe0885c791c469a62f8d" [label=""];
  "sha256:63f46abe73b8a56498d482e163261298e78088747d518ae7b0d4528ca732081f" -> "sha256:c60c03551473bfeba2c17f3cebb91396102f096d18eabe0885c791c469a62f8d" [label=""];
  "sha256:c60c03551473bfeba2c17f3cebb91396102f096d18eabe0885c791c469a62f8d" -> "sha256:99ab25667e4a18b9c08206b4203e8dc70cc0b61340a597fe9aeb787afd893d77" [label=""];
}

