[app/sources/315009817.Dockerfile]
digraph {
  "sha256:650b0d7d77381a89e6d95c9245da236f20fde760d394fd9c3ab1e15b351d4c28" [label="docker-image://docker.io/blacklabelops/java:openjre.8" shape="ellipse"];
  "sha256:744efaf7e45e35d36536529ad8e4136195a756fcefe26687dddbea71e6e2962f" [label="/bin/sh -c apk add --update --no-cache --virtual .build-deps       curl &&     mkdir -p ${CRONUT_HOME} &&     curl -fsSL https://80-112953069-gh.circle-artifacts.com/0/root/crow/application/target/artifacts/crow-application-0.5-SNAPSHOT.jar -o ${CRONUT_HOME}/crow-application.jar &&     apk del .build-deps &&     rm -rf /var/cache/apk/* && rm -rf /tmp/* && rm -rf /var/log/*" shape="box"];
  "sha256:720b88344a04d5d4b63241ec4e5bf82bf39bfa2cc93a05ab82a615ed33544b01" [label="local://context" shape="ellipse"];
  "sha256:4830d41cfa7ac12dab5050b4e0cee49bceb9f14b36bd8d45291437ebdc7f9bbe" [label="copy{src=/imagescripts, dest=/opt/cronut}" shape="note"];
  "sha256:cc2d1192312da2c4cffe2e82fabbdf6c0ebbcbe4d9a8432a92ee4ccefb809ac0" [label="/bin/sh -c cp ${CRONUT_HOME}/cronut.sh /usr/bin/cronut &&     chmod +x /usr/bin/cronut" shape="box"];
  "sha256:0f890d6c1d1fb45753c3f4888c37cb4228bc4eb347edecd7b30a8679f155c005" [label="mkdir{path=/opt/cronut}" shape="note"];
  "sha256:90f37c7923a1807456119801d71a370c4e9370e757c57b5c1b723338a1f39393" [label="sha256:90f37c7923a1807456119801d71a370c4e9370e757c57b5c1b723338a1f39393" shape="plaintext"];
  "sha256:650b0d7d77381a89e6d95c9245da236f20fde760d394fd9c3ab1e15b351d4c28" -> "sha256:744efaf7e45e35d36536529ad8e4136195a756fcefe26687dddbea71e6e2962f" [label=""];
  "sha256:744efaf7e45e35d36536529ad8e4136195a756fcefe26687dddbea71e6e2962f" -> "sha256:4830d41cfa7ac12dab5050b4e0cee49bceb9f14b36bd8d45291437ebdc7f9bbe" [label=""];
  "sha256:720b88344a04d5d4b63241ec4e5bf82bf39bfa2cc93a05ab82a615ed33544b01" -> "sha256:4830d41cfa7ac12dab5050b4e0cee49bceb9f14b36bd8d45291437ebdc7f9bbe" [label=""];
  "sha256:4830d41cfa7ac12dab5050b4e0cee49bceb9f14b36bd8d45291437ebdc7f9bbe" -> "sha256:cc2d1192312da2c4cffe2e82fabbdf6c0ebbcbe4d9a8432a92ee4ccefb809ac0" [label=""];
  "sha256:cc2d1192312da2c4cffe2e82fabbdf6c0ebbcbe4d9a8432a92ee4ccefb809ac0" -> "sha256:0f890d6c1d1fb45753c3f4888c37cb4228bc4eb347edecd7b30a8679f155c005" [label=""];
  "sha256:0f890d6c1d1fb45753c3f4888c37cb4228bc4eb347edecd7b30a8679f155c005" -> "sha256:90f37c7923a1807456119801d71a370c4e9370e757c57b5c1b723338a1f39393" [label=""];
}

