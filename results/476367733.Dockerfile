[app/sources/476367733.Dockerfile]
digraph {
  "sha256:a26d49cdad057b4c49e43f4622eeb715085747326f455827e3b18b6f1aad3304" [label="docker-image://docker.io/progrium/busybox:latest" shape="ellipse"];
  "sha256:4ffa208ccb0a875ec4261f8a4ad7b62c9ce92fc25167348b90fc606096491d26" [label="/bin/sh -c opkg-install curl ca-certificates" shape="box"];
  "sha256:82c065ee323fcde7336399918f36542b43cf4bfefb945f885f05cc77c40762d7" [label="/bin/sh -c curl   --silent   --location   --retry 3   --cacert /etc/ssl/certs/GeoTrust_Global_CA.crt   --header \"Cookie: oraclelicense=accept-securebackup-cookie;\"   \"http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/server-jre-8u121-linux-x64.tar.gz\"     | gunzip     | tar x -C /usr/     && ln -s $JAVA_HOME /usr/java     && rm -rf $JAVA_HOME/man" shape="box"];
  "sha256:dc037023479645b301bbe01f68699c5d1b8c735b05e9f5c9144d281b8a2cafda" [label="sha256:dc037023479645b301bbe01f68699c5d1b8c735b05e9f5c9144d281b8a2cafda" shape="plaintext"];
  "sha256:a26d49cdad057b4c49e43f4622eeb715085747326f455827e3b18b6f1aad3304" -> "sha256:4ffa208ccb0a875ec4261f8a4ad7b62c9ce92fc25167348b90fc606096491d26" [label=""];
  "sha256:4ffa208ccb0a875ec4261f8a4ad7b62c9ce92fc25167348b90fc606096491d26" -> "sha256:82c065ee323fcde7336399918f36542b43cf4bfefb945f885f05cc77c40762d7" [label=""];
  "sha256:82c065ee323fcde7336399918f36542b43cf4bfefb945f885f05cc77c40762d7" -> "sha256:dc037023479645b301bbe01f68699c5d1b8c735b05e9f5c9144d281b8a2cafda" [label=""];
}

