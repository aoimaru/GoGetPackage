[app/sources/276002543.Dockerfile]
digraph {
  "sha256:668e64d84d1ea8d0d5ff5a4eb72c5f7b5fa68763bfd35ff294ee19d8568d0d4f" [label="docker-image://docker.io/library/openjdk:8u151-jre-alpine3.7" shape="ellipse"];
  "sha256:c5b207b7c076344fa7df21cf26bc4a8e1ba96f69c1a8089a5050f03fc7737525" [label="/bin/sh -c apk --no-cache --update add busybox-suid bash curl unzip sudo openssh-client shadow wget  && adduser -h /home/appuser -s /bin/bash -D -u 1025 appuser wheel  && echo \"appuser ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers  && sed -i \"s/.*requiretty$/Defaults !requiretty/\" /etc/sudoers  && wget --no-cookies          --no-check-certificate          --header \"Cookie: oraclelicense=accept-securebackup-cookie\"                   \"http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip\"          -O /tmp/jce_policy-8.zip  && unzip -o /tmp/jce_policy-8.zip -d /tmp  && mv -f $JAVA_HOME/lib/security $JAVA_HOME/lib/backup-security  && mv -f /tmp/UnlimitedJCEPolicyJDK8 $JAVA_HOME/lib/security  && apk del busybox-suid unzip openssh-client shadow wget  && rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:54805856590ccba29bcc90882af493bc0003a0e8d2828942f0789bc8e550b302" [label="mkdir{path=/home/appuser}" shape="note"];
  "sha256:4fd2df363d69ebd25ecfefe929639318b66573b177e95ee11ee0733e3ec72529" [label="local://context" shape="ellipse"];
  "sha256:3fa3558638957fd2f3a51f104441d9efce78aaf73c3bea95c7e656d4c4e5b5e4" [label="copy{src=/build/libs/*.jar, dest=/home/appuser/app.jar}" shape="note"];
  "sha256:fdcfaa908deba5dc9b5b042c2d925b0c30bed100eeadc89db1568786a09d258e" [label="sha256:fdcfaa908deba5dc9b5b042c2d925b0c30bed100eeadc89db1568786a09d258e" shape="plaintext"];
  "sha256:668e64d84d1ea8d0d5ff5a4eb72c5f7b5fa68763bfd35ff294ee19d8568d0d4f" -> "sha256:c5b207b7c076344fa7df21cf26bc4a8e1ba96f69c1a8089a5050f03fc7737525" [label=""];
  "sha256:c5b207b7c076344fa7df21cf26bc4a8e1ba96f69c1a8089a5050f03fc7737525" -> "sha256:54805856590ccba29bcc90882af493bc0003a0e8d2828942f0789bc8e550b302" [label=""];
  "sha256:54805856590ccba29bcc90882af493bc0003a0e8d2828942f0789bc8e550b302" -> "sha256:3fa3558638957fd2f3a51f104441d9efce78aaf73c3bea95c7e656d4c4e5b5e4" [label=""];
  "sha256:4fd2df363d69ebd25ecfefe929639318b66573b177e95ee11ee0733e3ec72529" -> "sha256:3fa3558638957fd2f3a51f104441d9efce78aaf73c3bea95c7e656d4c4e5b5e4" [label=""];
  "sha256:3fa3558638957fd2f3a51f104441d9efce78aaf73c3bea95c7e656d4c4e5b5e4" -> "sha256:fdcfaa908deba5dc9b5b042c2d925b0c30bed100eeadc89db1568786a09d258e" [label=""];
}

