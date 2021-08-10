[app/sources/311483516.Dockerfile]
digraph {
  "sha256:0aa2a6294a996d0f6d841acc8a0b2ad547edc2720c123ce8e1af9c33b08dde96" [label="docker-image://docker.io/library/openjdk:8u171-jre-alpine3.8" shape="ellipse"];
  "sha256:2e9cca7f84ad26f7269b49e42dbd479c6bfc2b5aefd6bdf821d90f03c963abe7" [label="/bin/sh -c apk --no-cache --update add busybox-suid bash curl unzip sudo openssh-client shadow wget  && adduser -h /home/appuser -s /bin/bash -D -u 1025 appuser wheel  && echo 'appuser ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers  && sed -i 's/.*requiretty$/Defaults !requiretty/' /etc/sudoers  && wget --no-cookies          --no-check-certificate          --header 'Cookie: oraclelicense=accept-securebackup-cookie'                   'http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip'          -O /tmp/jce_policy-8.zip  && unzip -o /tmp/jce_policy-8.zip -d /tmp  && mv -f ${JAVA_HOME}/lib/security ${JAVA_HOME}/lib/backup-security || echo 'nothing to backup'  && mv -f /tmp/UnlimitedJCEPolicyJDK8 ${JAVA_HOME}/lib/security  && apk del busybox-suid unzip openssh-client shadow wget  && rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:868a63f5b4c379007e6b5130d2f888c108145ee7d4da986da672fc808f8a1d46" [label="mkdir{path=/home/appuser}" shape="note"];
  "sha256:dff9e38205f2b957a3b95a4907cd00c1014a47e71914241724042dab79f5204e" [label="local://context" shape="ellipse"];
  "sha256:c06e1ccafd0f5a3337f9acc7e3594b3a79c515f520e4d868b05910331d14e50a" [label="copy{src=/build/libs/*.jar, dest=/home/appuser/app.jar}" shape="note"];
  "sha256:7fd6450b601eaf33ec6fd3deed2974d36c446e958b80c6ab5d1ff8f7ee8bf4fa" [label="sha256:7fd6450b601eaf33ec6fd3deed2974d36c446e958b80c6ab5d1ff8f7ee8bf4fa" shape="plaintext"];
  "sha256:0aa2a6294a996d0f6d841acc8a0b2ad547edc2720c123ce8e1af9c33b08dde96" -> "sha256:2e9cca7f84ad26f7269b49e42dbd479c6bfc2b5aefd6bdf821d90f03c963abe7" [label=""];
  "sha256:2e9cca7f84ad26f7269b49e42dbd479c6bfc2b5aefd6bdf821d90f03c963abe7" -> "sha256:868a63f5b4c379007e6b5130d2f888c108145ee7d4da986da672fc808f8a1d46" [label=""];
  "sha256:868a63f5b4c379007e6b5130d2f888c108145ee7d4da986da672fc808f8a1d46" -> "sha256:c06e1ccafd0f5a3337f9acc7e3594b3a79c515f520e4d868b05910331d14e50a" [label=""];
  "sha256:dff9e38205f2b957a3b95a4907cd00c1014a47e71914241724042dab79f5204e" -> "sha256:c06e1ccafd0f5a3337f9acc7e3594b3a79c515f520e4d868b05910331d14e50a" [label=""];
  "sha256:c06e1ccafd0f5a3337f9acc7e3594b3a79c515f520e4d868b05910331d14e50a" -> "sha256:7fd6450b601eaf33ec6fd3deed2974d36c446e958b80c6ab5d1ff8f7ee8bf4fa" [label=""];
}

