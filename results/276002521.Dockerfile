[app/sources/276002521.Dockerfile]
digraph {
  "sha256:668e64d84d1ea8d0d5ff5a4eb72c5f7b5fa68763bfd35ff294ee19d8568d0d4f" [label="docker-image://docker.io/library/openjdk:8u151-jre-alpine3.7" shape="ellipse"];
  "sha256:c5b207b7c076344fa7df21cf26bc4a8e1ba96f69c1a8089a5050f03fc7737525" [label="/bin/sh -c apk --no-cache --update add busybox-suid bash curl unzip sudo openssh-client shadow wget  && adduser -h /home/appuser -s /bin/bash -D -u 1025 appuser wheel  && echo \"appuser ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers  && sed -i \"s/.*requiretty$/Defaults !requiretty/\" /etc/sudoers  && wget --no-cookies          --no-check-certificate          --header \"Cookie: oraclelicense=accept-securebackup-cookie\"                   \"http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip\"          -O /tmp/jce_policy-8.zip  && unzip -o /tmp/jce_policy-8.zip -d /tmp  && mv -f $JAVA_HOME/lib/security $JAVA_HOME/lib/backup-security  && mv -f /tmp/UnlimitedJCEPolicyJDK8 $JAVA_HOME/lib/security  && apk del busybox-suid unzip openssh-client shadow wget  && rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:54805856590ccba29bcc90882af493bc0003a0e8d2828942f0789bc8e550b302" [label="mkdir{path=/home/appuser}" shape="note"];
  "sha256:6f079ab1c5b91f71db2b2017a57c50cb3651ec5f74751cba07f57d998fa6e4dc" [label="local://context" shape="ellipse"];
  "sha256:97987bf46b13e33fde21cfa6eaaa8d21792ff40b38b6237dd382d860e79463e3" [label="copy{src=/target/*.jar, dest=/home/appuser/app.jar}" shape="note"];
  "sha256:a32b01790997d3cb8c2522bdc5ee98c59d8b35e53abe608e3b3445f8d9f37ccf" [label="sha256:a32b01790997d3cb8c2522bdc5ee98c59d8b35e53abe608e3b3445f8d9f37ccf" shape="plaintext"];
  "sha256:668e64d84d1ea8d0d5ff5a4eb72c5f7b5fa68763bfd35ff294ee19d8568d0d4f" -> "sha256:c5b207b7c076344fa7df21cf26bc4a8e1ba96f69c1a8089a5050f03fc7737525" [label=""];
  "sha256:c5b207b7c076344fa7df21cf26bc4a8e1ba96f69c1a8089a5050f03fc7737525" -> "sha256:54805856590ccba29bcc90882af493bc0003a0e8d2828942f0789bc8e550b302" [label=""];
  "sha256:54805856590ccba29bcc90882af493bc0003a0e8d2828942f0789bc8e550b302" -> "sha256:97987bf46b13e33fde21cfa6eaaa8d21792ff40b38b6237dd382d860e79463e3" [label=""];
  "sha256:6f079ab1c5b91f71db2b2017a57c50cb3651ec5f74751cba07f57d998fa6e4dc" -> "sha256:97987bf46b13e33fde21cfa6eaaa8d21792ff40b38b6237dd382d860e79463e3" [label=""];
  "sha256:97987bf46b13e33fde21cfa6eaaa8d21792ff40b38b6237dd382d860e79463e3" -> "sha256:a32b01790997d3cb8c2522bdc5ee98c59d8b35e53abe608e3b3445f8d9f37ccf" [label=""];
}

