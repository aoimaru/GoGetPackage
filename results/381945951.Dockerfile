[app/sources/381945951.Dockerfile]
digraph {
  "sha256:e61dfbc44937876da6d106dde3f84e0da55fb89e3261a2a984c13902c4695bb2" [label="docker-image://docker.io/library/ubuntu@sha256:82becede498899ec668628e7cb0ad87b6e1c371cb8a1e597d83a47fac21d6af3" shape="ellipse"];
  "sha256:1861766eec12bb2077b8657bf020d714c3b45f5a0e00bcfc6be96e07d52921ee" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu precise universe\" >> /etc/apt/sources.list" shape="box"];
  "sha256:101c2b211d50dd3805c166b8377c0f84f67dbff20792f046c9c19bbda22bece5" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ee316e5b7d2d7c7c6805d0d7f2f8ae593f076c74b987d57e5244b88d41eb3882" [label="/bin/sh -c apt-get install -y tomcat7 tomcat7-admin" shape="box"];
  "sha256:24b9e86e438986b9ff6aef9638744daaaf22361bb8002fb2e08aba560bb74770" [label="/bin/sh -c echo '<tomcat-users><role rolename=\"tomcat\"/><role rolename=\"manager-gui\"/><role rolename=\"admin-gui\"/><role rolename=\"manager-script\"/><user username=\"admin\" password=\"tomcat\" roles=\"tomcat,admin-gui,manager-gui,manager-script\"/></tomcat-users>' > /etc/tomcat7/tomcat-users.xml" shape="box"];
  "sha256:360621674f86fe68c263f7b20e96f6be0ef1b7554595593fd39589053edcbda9" [label="sha256:360621674f86fe68c263f7b20e96f6be0ef1b7554595593fd39589053edcbda9" shape="plaintext"];
  "sha256:e61dfbc44937876da6d106dde3f84e0da55fb89e3261a2a984c13902c4695bb2" -> "sha256:1861766eec12bb2077b8657bf020d714c3b45f5a0e00bcfc6be96e07d52921ee" [label=""];
  "sha256:1861766eec12bb2077b8657bf020d714c3b45f5a0e00bcfc6be96e07d52921ee" -> "sha256:101c2b211d50dd3805c166b8377c0f84f67dbff20792f046c9c19bbda22bece5" [label=""];
  "sha256:101c2b211d50dd3805c166b8377c0f84f67dbff20792f046c9c19bbda22bece5" -> "sha256:ee316e5b7d2d7c7c6805d0d7f2f8ae593f076c74b987d57e5244b88d41eb3882" [label=""];
  "sha256:ee316e5b7d2d7c7c6805d0d7f2f8ae593f076c74b987d57e5244b88d41eb3882" -> "sha256:24b9e86e438986b9ff6aef9638744daaaf22361bb8002fb2e08aba560bb74770" [label=""];
  "sha256:24b9e86e438986b9ff6aef9638744daaaf22361bb8002fb2e08aba560bb74770" -> "sha256:360621674f86fe68c263f7b20e96f6be0ef1b7554595593fd39589053edcbda9" [label=""];
}

