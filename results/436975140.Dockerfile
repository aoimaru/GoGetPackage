[app/sources/436975140.Dockerfile]
digraph {
  "sha256:3257174608b56f513b084ffdd8044ba89c3781bb0ccd9e114784eed9937208ec" [label="local://context" shape="ellipse"];
  "sha256:5098f1aec0cbb62d046dd8fbd428e7f91706590b96350dce6cacc4f0a9cf5c42" [label="docker-image://docker.io/library/tomcat:7-jre8" shape="ellipse"];
  "sha256:f7a6d4a6e862ce2ae0db4dd4e9b076cf56b46b7c5b390b3d3c6bd25cfa84b20d" [label="copy{src=/openmrs.war, dest=/usr/local/tomcat/webapps/openmrs.war}" shape="note"];
  "sha256:e5ef8c1b7e3511aa577bfa30cd2d7bf41041c4c96442f5edc6faf1735cdb68c8" [label="copy{src=/modules, dest=/usr/local/tomcat/.OpenMRS/modules}" shape="note"];
  "sha256:03914de9bfb0e4ade7cd5c0dfd56b5f39f005c4629c7dd7b7d92351f04a9b729" [label="copy{src=/owa, dest=/usr/local/tomcat/.OpenMRS/owa}" shape="note"];
  "sha256:d12e73272587e0cc9e7b3f57e05247173de992a0be5b52a8f9c5082640d1f6bb" [label="copy{src=/setenv.sh, dest=/usr/local/tomcat/bin/setenv.sh}" shape="note"];
  "sha256:85598fa4a05a5b1b879c7ad607c4d63e17b1c8fd4e87fb88c8972cd9c9526af6" [label="copy{src=/wait-for-it.sh, dest=/usr/local/tomcat/wait-for-it.sh}" shape="note"];
  "sha256:9250ba4d3a8678d2eb36f69910bb7cdfefb8ce5a5a3daac348bead37e3c98a04" [label="copy{src=/startup.sh, dest=/usr/local/tomcat/startup.sh}" shape="note"];
  "sha256:cc8e177e976374ee1fac8d0b9b3231117cf4b426e6e98755c50e1c97be7772dc" [label="/bin/sh -c sed -i '/Connector port=\"8080\"/a URIEncoding=\"UTF-8\" relaxedPathChars=\"[]|\" relaxedQueryChars=\"[]|{}^&#x5c;&#x60;&quot;&lt;&gt;\"' /usr/local/tomcat/conf/server.xml" shape="box"];
  "sha256:5d2c7560b0615e3ddaa685f116eafb0d248d48c5d830ce4ec012fd9a0ea74e79" [label="/bin/sh -c chmod +x /usr/local/tomcat/wait-for-it.sh" shape="box"];
  "sha256:19a63d21b743ce80962d160ef8343de07211ff6b0041294d36702924ef4e2dc2" [label="/bin/sh -c chmod +x /usr/local/tomcat/startup.sh" shape="box"];
  "sha256:0e48ceb392b41c6c70523a704553a82ddcf62c8b181ac8bd82dbf0e9b5d7a8b8" [label="copy{src=/openmrs-distro.properties, dest=/root/openmrs-distro.properties}" shape="note"];
  "sha256:382e53a78b1f1911c242b090ea91837a247954101b952e4624aa913eb0069d8e" [label="copy{src=/Dockerfile, dest=/root/Dockerfile}" shape="note"];
  "sha256:35e4c74f936bc2f94f0b0481d7ce000339b399c25ea5d65cf8dbe089539fa754" [label="sha256:35e4c74f936bc2f94f0b0481d7ce000339b399c25ea5d65cf8dbe089539fa754" shape="plaintext"];
  "sha256:5098f1aec0cbb62d046dd8fbd428e7f91706590b96350dce6cacc4f0a9cf5c42" -> "sha256:f7a6d4a6e862ce2ae0db4dd4e9b076cf56b46b7c5b390b3d3c6bd25cfa84b20d" [label=""];
  "sha256:3257174608b56f513b084ffdd8044ba89c3781bb0ccd9e114784eed9937208ec" -> "sha256:f7a6d4a6e862ce2ae0db4dd4e9b076cf56b46b7c5b390b3d3c6bd25cfa84b20d" [label=""];
  "sha256:f7a6d4a6e862ce2ae0db4dd4e9b076cf56b46b7c5b390b3d3c6bd25cfa84b20d" -> "sha256:e5ef8c1b7e3511aa577bfa30cd2d7bf41041c4c96442f5edc6faf1735cdb68c8" [label=""];
  "sha256:3257174608b56f513b084ffdd8044ba89c3781bb0ccd9e114784eed9937208ec" -> "sha256:e5ef8c1b7e3511aa577bfa30cd2d7bf41041c4c96442f5edc6faf1735cdb68c8" [label=""];
  "sha256:e5ef8c1b7e3511aa577bfa30cd2d7bf41041c4c96442f5edc6faf1735cdb68c8" -> "sha256:03914de9bfb0e4ade7cd5c0dfd56b5f39f005c4629c7dd7b7d92351f04a9b729" [label=""];
  "sha256:3257174608b56f513b084ffdd8044ba89c3781bb0ccd9e114784eed9937208ec" -> "sha256:03914de9bfb0e4ade7cd5c0dfd56b5f39f005c4629c7dd7b7d92351f04a9b729" [label=""];
  "sha256:03914de9bfb0e4ade7cd5c0dfd56b5f39f005c4629c7dd7b7d92351f04a9b729" -> "sha256:d12e73272587e0cc9e7b3f57e05247173de992a0be5b52a8f9c5082640d1f6bb" [label=""];
  "sha256:3257174608b56f513b084ffdd8044ba89c3781bb0ccd9e114784eed9937208ec" -> "sha256:d12e73272587e0cc9e7b3f57e05247173de992a0be5b52a8f9c5082640d1f6bb" [label=""];
  "sha256:d12e73272587e0cc9e7b3f57e05247173de992a0be5b52a8f9c5082640d1f6bb" -> "sha256:85598fa4a05a5b1b879c7ad607c4d63e17b1c8fd4e87fb88c8972cd9c9526af6" [label=""];
  "sha256:3257174608b56f513b084ffdd8044ba89c3781bb0ccd9e114784eed9937208ec" -> "sha256:85598fa4a05a5b1b879c7ad607c4d63e17b1c8fd4e87fb88c8972cd9c9526af6" [label=""];
  "sha256:85598fa4a05a5b1b879c7ad607c4d63e17b1c8fd4e87fb88c8972cd9c9526af6" -> "sha256:9250ba4d3a8678d2eb36f69910bb7cdfefb8ce5a5a3daac348bead37e3c98a04" [label=""];
  "sha256:3257174608b56f513b084ffdd8044ba89c3781bb0ccd9e114784eed9937208ec" -> "sha256:9250ba4d3a8678d2eb36f69910bb7cdfefb8ce5a5a3daac348bead37e3c98a04" [label=""];
  "sha256:9250ba4d3a8678d2eb36f69910bb7cdfefb8ce5a5a3daac348bead37e3c98a04" -> "sha256:cc8e177e976374ee1fac8d0b9b3231117cf4b426e6e98755c50e1c97be7772dc" [label=""];
  "sha256:cc8e177e976374ee1fac8d0b9b3231117cf4b426e6e98755c50e1c97be7772dc" -> "sha256:5d2c7560b0615e3ddaa685f116eafb0d248d48c5d830ce4ec012fd9a0ea74e79" [label=""];
  "sha256:5d2c7560b0615e3ddaa685f116eafb0d248d48c5d830ce4ec012fd9a0ea74e79" -> "sha256:19a63d21b743ce80962d160ef8343de07211ff6b0041294d36702924ef4e2dc2" [label=""];
  "sha256:19a63d21b743ce80962d160ef8343de07211ff6b0041294d36702924ef4e2dc2" -> "sha256:0e48ceb392b41c6c70523a704553a82ddcf62c8b181ac8bd82dbf0e9b5d7a8b8" [label=""];
  "sha256:3257174608b56f513b084ffdd8044ba89c3781bb0ccd9e114784eed9937208ec" -> "sha256:0e48ceb392b41c6c70523a704553a82ddcf62c8b181ac8bd82dbf0e9b5d7a8b8" [label=""];
  "sha256:0e48ceb392b41c6c70523a704553a82ddcf62c8b181ac8bd82dbf0e9b5d7a8b8" -> "sha256:382e53a78b1f1911c242b090ea91837a247954101b952e4624aa913eb0069d8e" [label=""];
  "sha256:3257174608b56f513b084ffdd8044ba89c3781bb0ccd9e114784eed9937208ec" -> "sha256:382e53a78b1f1911c242b090ea91837a247954101b952e4624aa913eb0069d8e" [label=""];
  "sha256:382e53a78b1f1911c242b090ea91837a247954101b952e4624aa913eb0069d8e" -> "sha256:35e4c74f936bc2f94f0b0481d7ce000339b399c25ea5d65cf8dbe089539fa754" [label=""];
}

