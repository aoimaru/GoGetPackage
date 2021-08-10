[app/sources/236907539.Dockerfile]
digraph {
  "sha256:7f943b81353a2112e2cc5b22e437fbd70f53a7f3f5ebbb8d65d2f5e0d4ad7db0" [label="docker-image://docker.io/hypriot/rpi-alpine-scratch:v3.4" shape="ellipse"];
  "sha256:8ffc899283e0fbd4ac7cdcd52253b5a2d065802f3f1b3fd87c41f446e096b91b" [label="/bin/sh -c sed -i 's/nl.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories" shape="box"];
  "sha256:94a54cb405d84e63bd2d58f1b6c4321d1b346a2d2e7d958abef742c6a86952ca" [label="/bin/sh -c apk update   && apk upgrade   && apk add bash   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:3a63846fa6ee4e44b7d97a80233f395a8830f95b34aca0072c9253d89e0c8593" [label="/bin/sh -c { \t\techo '#!/bin/sh'; \t\techo 'set -e'; \t\techo; \t\techo 'dirname \"$(dirname \"$(readlink -f \"$(which javac || which java)\")\")\"'; \t} > /usr/local/bin/docker-java-home \t&& chmod +x /usr/local/bin/docker-java-home" shape="box"];
  "sha256:663c0fa72c33b42612b5bb1e0a7006b3f2ec47829d44d5988fc1f46934791dd0" [label="/bin/sh -c set -x \t&& apk add openjdk8=\"$JAVA_ALPINE_VERSION\"                 --update-cache --repository https://mirrors.ustc.edu.cn/alpine/edge/community/ --allow-untrusted \t&& [ \"$JAVA_HOME\" = \"$(docker-java-home)\" ]" shape="box"];
  "sha256:4c14f533ce383171b7cab653496e1477b26dd59b61288e9df58f4474dec4c048" [label="sha256:4c14f533ce383171b7cab653496e1477b26dd59b61288e9df58f4474dec4c048" shape="plaintext"];
  "sha256:7f943b81353a2112e2cc5b22e437fbd70f53a7f3f5ebbb8d65d2f5e0d4ad7db0" -> "sha256:8ffc899283e0fbd4ac7cdcd52253b5a2d065802f3f1b3fd87c41f446e096b91b" [label=""];
  "sha256:8ffc899283e0fbd4ac7cdcd52253b5a2d065802f3f1b3fd87c41f446e096b91b" -> "sha256:94a54cb405d84e63bd2d58f1b6c4321d1b346a2d2e7d958abef742c6a86952ca" [label=""];
  "sha256:94a54cb405d84e63bd2d58f1b6c4321d1b346a2d2e7d958abef742c6a86952ca" -> "sha256:3a63846fa6ee4e44b7d97a80233f395a8830f95b34aca0072c9253d89e0c8593" [label=""];
  "sha256:3a63846fa6ee4e44b7d97a80233f395a8830f95b34aca0072c9253d89e0c8593" -> "sha256:663c0fa72c33b42612b5bb1e0a7006b3f2ec47829d44d5988fc1f46934791dd0" [label=""];
  "sha256:663c0fa72c33b42612b5bb1e0a7006b3f2ec47829d44d5988fc1f46934791dd0" -> "sha256:4c14f533ce383171b7cab653496e1477b26dd59b61288e9df58f4474dec4c048" [label=""];
}

