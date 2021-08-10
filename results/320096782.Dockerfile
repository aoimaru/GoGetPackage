[app/sources/320096782.Dockerfile]
digraph {
  "sha256:bfccf3eef642891a2e20adb5228f52008e1011ff18a7512fd09ec8850f7888ea" [label="docker-image://docker.io/dockette/alpine:3.4" shape="ellipse"];
  "sha256:cfe957ed8bd5197b09a8ff38f28dfc81318051cbedbd015a732721128eee8b01" [label="/bin/sh -c apk upgrade --update &&     apk add --no-cache --virtual=build-dependencies libstdc++ curl ca-certificates unzip &&     for pkg in glibc-${GLIBC_VERSION} glibc-bin-${GLIBC_VERSION} glibc-i18n-${GLIBC_VERSION}; do curl -sSL https://github.com/andyshinn/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/${pkg}.apk -o /tmp/${pkg}.apk; done &&     apk add --allow-untrusted /tmp/*.apk &&     rm -v /tmp/*.apk &&     ( /usr/glibc-compat/bin/localedef --force --inputfile POSIX --charmap UTF-8 C.UTF-8 || true ) &&     echo \"export LANG=C.UTF-8\" > /etc/profile.d/locale.sh &&     /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib &&     echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf &&     curl -jksSLH \"Cookie: oraclelicense=accept-securebackup-cookie\" -o /tmp/java.tar.gz         \"http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz\" &&     curl -jksSLH \"Cookie: oraclelicense=accept-securebackup-cookie\" -o /tmp/jce_policy-${JAVA_VERSION}.zip         \"http://download.oracle.com/otn-pub/java/jce/${JAVA_VERSION}/jce_policy-${JAVA_VERSION}.zip\" &&     gunzip /tmp/java.tar.gz &&     tar -C /tmp -xf /tmp/java.tar &&     mkdir -p \"/usr/lib/jvm\" &&     mv \"/tmp/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}\" \"/usr/lib/jvm/java-${JAVA_VERSION}-oracle\" &&     ln -s \"java-${JAVA_VERSION}-oracle\" \"$JAVA_HOME\" &&     unzip -jo -d \"$JAVA_HOME/jre/lib/security\" \"/tmp/jce_policy-${JAVA_VERSION}.zip\" &&     ln -s \"$JAVA_HOME/bin/\"* \"/usr/bin/\" &&     apk del glibc-i18n &&     rm -rf \"$JAVA_HOME/\"*src.zip            \"$JAVA_HOME/lib/missioncontrol\"            \"$JAVA_HOME/lib/visualvm\"            \"$JAVA_HOME/jre/bin/javaws\"            \"$JAVA_HOME/jre/lib/javaws.jar\"            \"$JAVA_HOME/jre/lib/desktop\"            \"$JAVA_HOME/jre/plugin\"            \"$JAVA_HOME/jre/lib/\"deploy*            \"$JAVA_HOME/jre/bin/jjs\"            \"$JAVA_HOME/jre/bin/keytool\"            \"$JAVA_HOME/jre/bin/orbd\"            \"$JAVA_HOME/jre/bin/pack200\"            \"$JAVA_HOME/jre/bin/policytool\"            \"$JAVA_HOME/jre/bin/rmid\"            \"$JAVA_HOME/jre/bin/rmiregistry\"            \"$JAVA_HOME/jre/bin/servertool\"            \"$JAVA_HOME/jre/bin/tnameserv\"            \"$JAVA_HOME/jre/bin/unpack200\"            \"$JAVA_HOME/jre/lib/ext/nashorn.jar\"            \"$JAVA_HOME/jre/lib/jfr.jar\"            \"$JAVA_HOME/jre/lib/jfr\"            \"$JAVA_HOME/jre/lib/oblique-fonts\" &&     apk add --no-cache curl tar &&     mkdir -p /usr/share/maven /usr/share/maven/ref &&     curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1 &&     ln -s /usr/share/maven/bin/mvn /usr/bin/mvn &&     apk del build-dependencies unzip curl tar libstdc++ &&     rm -rf /tmp/* /var/cache/apk/*" shape="box"];
  "sha256:be3532d2c29d123c5715a61d089a4c8587f9d55267da5c784a404233af3bc54a" [label="mkdir{path=/data}" shape="note"];
  "sha256:bf49c2f104396210556db27b5702af0e9f9b9bbe03d95eff05f6865f17cf41dd" [label="local://context" shape="ellipse"];
  "sha256:0c427e45d77bd045e36aa430ac0f8b0d65479e381e9527d25c4a41dfdc4d8aad" [label="copy{src=/settings-docker.xml, dest=/usr/share/maven/ref/}" shape="note"];
  "sha256:2ca70e02a49f9387efe345e4dfdabad1a277e01e413b0d6112d865765022cfad" [label="sha256:2ca70e02a49f9387efe345e4dfdabad1a277e01e413b0d6112d865765022cfad" shape="plaintext"];
  "sha256:bfccf3eef642891a2e20adb5228f52008e1011ff18a7512fd09ec8850f7888ea" -> "sha256:cfe957ed8bd5197b09a8ff38f28dfc81318051cbedbd015a732721128eee8b01" [label=""];
  "sha256:cfe957ed8bd5197b09a8ff38f28dfc81318051cbedbd015a732721128eee8b01" -> "sha256:be3532d2c29d123c5715a61d089a4c8587f9d55267da5c784a404233af3bc54a" [label=""];
  "sha256:be3532d2c29d123c5715a61d089a4c8587f9d55267da5c784a404233af3bc54a" -> "sha256:0c427e45d77bd045e36aa430ac0f8b0d65479e381e9527d25c4a41dfdc4d8aad" [label=""];
  "sha256:bf49c2f104396210556db27b5702af0e9f9b9bbe03d95eff05f6865f17cf41dd" -> "sha256:0c427e45d77bd045e36aa430ac0f8b0d65479e381e9527d25c4a41dfdc4d8aad" [label=""];
  "sha256:0c427e45d77bd045e36aa430ac0f8b0d65479e381e9527d25c4a41dfdc4d8aad" -> "sha256:2ca70e02a49f9387efe345e4dfdabad1a277e01e413b0d6112d865765022cfad" [label=""];
}

