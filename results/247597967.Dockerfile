[app/sources/247597967.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:5e9ff06ce7642406d35216b45a18644fdff8cf60ddad88f8b466a5bdf445276b" [label="local://context" shape="ellipse"];
  "sha256:155d825978ddc8d975ba7cb44b1e8cb2880524fbb9deb03bb7593999df124af6" [label="copy{src=/docker-entrypoint.sh, dest=/opt/docker-entrypoint.sh}" shape="note"];
  "sha256:c362b7c565ee35cb22d2896affd56c9436a10822f680075d071f72505ccf985b" [label="copy{src=/logback.groovy, dest=/logback.groovy}" shape="note"];
  "sha256:e88eb2f202bc104e57ed754f46c0725e7c837158367fccbbc683716b29fd298d" [label="/bin/sh -c addgroup -S \"${TRANSMART_GROUP_NAME}\" &&      adduser -h \"${TRANSMART_USER_HOME}\"              -G \"${TRANSMART_GROUP_NAME}\"              -S              -D              \"${TRANSMART_USER_NAME}\" &&      wget \"${TRANSMART_API_SERVER_WAR_URL}\" -O \"${TRANSMART_SERVICE_WAR_FILE}\" &&      chown    \"${TRANSMART_USER_NAME}:${TRANSMART_GROUP_NAME}\" /opt/docker-entrypoint.sh &&      chmod u+x /opt/docker-entrypoint.sh &&      rm -rf /tmp/* /var/tmp/* && sync" shape="box"];
  "sha256:3941640be6c8936179d1be6ffa7c1c8a6297d306e315258087a4c7113db75a4e" [label="mkdir{path=/home/transmart}" shape="note"];
  "sha256:cbe6570e13e96dc29a80063533b7fb787e106a90f6a22bc9f6027d47310f4538" [label="sha256:cbe6570e13e96dc29a80063533b7fb787e106a90f6a22bc9f6027d47310f4538" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:155d825978ddc8d975ba7cb44b1e8cb2880524fbb9deb03bb7593999df124af6" [label=""];
  "sha256:5e9ff06ce7642406d35216b45a18644fdff8cf60ddad88f8b466a5bdf445276b" -> "sha256:155d825978ddc8d975ba7cb44b1e8cb2880524fbb9deb03bb7593999df124af6" [label=""];
  "sha256:155d825978ddc8d975ba7cb44b1e8cb2880524fbb9deb03bb7593999df124af6" -> "sha256:c362b7c565ee35cb22d2896affd56c9436a10822f680075d071f72505ccf985b" [label=""];
  "sha256:5e9ff06ce7642406d35216b45a18644fdff8cf60ddad88f8b466a5bdf445276b" -> "sha256:c362b7c565ee35cb22d2896affd56c9436a10822f680075d071f72505ccf985b" [label=""];
  "sha256:c362b7c565ee35cb22d2896affd56c9436a10822f680075d071f72505ccf985b" -> "sha256:e88eb2f202bc104e57ed754f46c0725e7c837158367fccbbc683716b29fd298d" [label=""];
  "sha256:e88eb2f202bc104e57ed754f46c0725e7c837158367fccbbc683716b29fd298d" -> "sha256:3941640be6c8936179d1be6ffa7c1c8a6297d306e315258087a4c7113db75a4e" [label=""];
  "sha256:3941640be6c8936179d1be6ffa7c1c8a6297d306e315258087a4c7113db75a4e" -> "sha256:cbe6570e13e96dc29a80063533b7fb787e106a90f6a22bc9f6027d47310f4538" [label=""];
}

