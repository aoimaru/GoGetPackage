[app/sources/478872926.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:813a3d3bbd2c6d644257fe0e276322a5c119ee7c4622c9605aa3347ad574c5e6" [label="/bin/sh -c apk add build-base" shape="box"];
  "sha256:636514e29e99882b6112432b713d6157517b74060114c3a4154b4ca59bb6f112" [label="/bin/sh -c set -x &&         echo \"==> Adding build-dependencies...\"  &&     apk --update add --virtual build-dependencies ${BUILD_DEPENDENCIES} &&         echo \"==> Upgrading apk and system...\"  &&     apk update && apk upgrade &&         echo \"==> Adding Python runtime...\"  &&     apk add --no-cache ${BUILD_PACKAGES} &&     pip install --upgrade pip &&         echo \"==> Installing linters...\"  &&     pip install ansible-lint pylint &&         echo \"==> Installing Sonar-scanner...\"  &&     mkdir -p /opt &&     wget -q -O /sonar-scanner-cli.zip \"http://central.maven.org/maven2/org/sonarsource/scanner/cli/sonar-scanner-cli/${SONARQUBE_SCANNER_VERSION}/sonar-scanner-cli-${SONARQUBE_SCANNER_VERSION}.zip\" &&     unzip /sonar-scanner-cli.zip -d /opt &&         echo \"==> Cleaning up...\"  &&     apk del build-dependencies &&     apk del --purge wget unzip &&     rm -rf /var/cache/apk/* /sonar-scanner-cli.zip" shape="box"];
  "sha256:79e7f9a1af27f1d634ca7b04ed81c392c26dfd2687e8798cd08b450a45ac3b7b" [label="/bin/sh -c mkdir /epiphany/" shape="box"];
  "sha256:809bc32bea5b7d298c930ba5a128c7962a0aac22072648c4e87f4bac5e02f9aa" [label="mkdir{path=/epiphany}" shape="note"];
  "sha256:5284a30152a19ebba6b9ca903d85eaae47bbe52ae89418ade67cb8934a9219e6" [label="local://context" shape="ellipse"];
  "sha256:05f89853b2f6916f0de852c642646db03fe1525f18efc5f122ad5d0290950d81" [label="copy{src=/, dest=/epiphany/}" shape="note"];
  "sha256:05395d4ce34f1d48c124a72abbe65bacf089d5e0a1c70254f877809a215f8891" [label="/bin/sh -c chmod +x /epiphany/core/src/docker/test/run.sh" shape="box"];
  "sha256:a5a3341c2f33c67ed6b7d7a1795696f6232fae4c6dcb3c53ae3011f772b49a56" [label="sha256:a5a3341c2f33c67ed6b7d7a1795696f6232fae4c6dcb3c53ae3011f772b49a56" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:813a3d3bbd2c6d644257fe0e276322a5c119ee7c4622c9605aa3347ad574c5e6" [label=""];
  "sha256:813a3d3bbd2c6d644257fe0e276322a5c119ee7c4622c9605aa3347ad574c5e6" -> "sha256:636514e29e99882b6112432b713d6157517b74060114c3a4154b4ca59bb6f112" [label=""];
  "sha256:636514e29e99882b6112432b713d6157517b74060114c3a4154b4ca59bb6f112" -> "sha256:79e7f9a1af27f1d634ca7b04ed81c392c26dfd2687e8798cd08b450a45ac3b7b" [label=""];
  "sha256:79e7f9a1af27f1d634ca7b04ed81c392c26dfd2687e8798cd08b450a45ac3b7b" -> "sha256:809bc32bea5b7d298c930ba5a128c7962a0aac22072648c4e87f4bac5e02f9aa" [label=""];
  "sha256:809bc32bea5b7d298c930ba5a128c7962a0aac22072648c4e87f4bac5e02f9aa" -> "sha256:05f89853b2f6916f0de852c642646db03fe1525f18efc5f122ad5d0290950d81" [label=""];
  "sha256:5284a30152a19ebba6b9ca903d85eaae47bbe52ae89418ade67cb8934a9219e6" -> "sha256:05f89853b2f6916f0de852c642646db03fe1525f18efc5f122ad5d0290950d81" [label=""];
  "sha256:05f89853b2f6916f0de852c642646db03fe1525f18efc5f122ad5d0290950d81" -> "sha256:05395d4ce34f1d48c124a72abbe65bacf089d5e0a1c70254f877809a215f8891" [label=""];
  "sha256:05395d4ce34f1d48c124a72abbe65bacf089d5e0a1c70254f877809a215f8891" -> "sha256:a5a3341c2f33c67ed6b7d7a1795696f6232fae4c6dcb3c53ae3011f772b49a56" [label=""];
}

