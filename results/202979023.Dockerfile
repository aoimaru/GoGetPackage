[app/sources/202979023.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:8f5ff1ecde63f726cd69274bdf7b84a3639041b3832a907959625cb357fa81c9" [label="/bin/sh -c apk update && apk upgrade   && apk add redis   && apk add --update nodejs nodejs-npm   && apk add python   && apk add curl   && curl -sS https://bootstrap.pypa.io/get-pip.py | python   && pip install awscli   && npm install -g npm   && npm install -g coffee-script   && npm install -g yo generator-hubot   && apk --purge -v del py-pip   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:38c46f33ae96941b72eb169c2620574e73a3b5a38e3d585970d32f795c5f4db3" [label="/bin/sh -c adduser -h /hubot -s /bin/bash -S hubot" shape="box"];
  "sha256:fb19111aa26f343e1c6fcc8a307875adf78ed86e59713307078af7006ac241ed" [label="mkdir{path=/hubot}" shape="note"];
  "sha256:1517adb754e06a9979a2a9246d09503b24414aa6c3c3dd7b5c51cd4b7d9811ed" [label="/bin/sh -c yo hubot --owner=\"Ben Visser <benny@noqcks.io>\" --name=\"dockbot\" --description=\"Roll, roll, rollercoaster\" --defaults" shape="box"];
  "sha256:295494b6822f6a812796af6baf89da848cbd8aa96b29ec0d6801805f1b44b291" [label="local://context" shape="ellipse"];
  "sha256:df27dcc0ced66d6095691c38727c20fefbe3324eab3135af301ce16e627a9a8a" [label="copy{src=/package.json, dest=/hubot/package.json}" shape="note"];
  "sha256:f3f98e7f4640356f3532776c6e5081de5187ce9ac8cf610b0f276bef00955a04" [label="/bin/sh -c npm install" shape="box"];
  "sha256:dbe551dc80f6288b7e7cd10880ecae5a7d833c9c2e498a8abf0169303a9d3303" [label="copy{src=/hubot/hubot-scripts.json, dest=/hubot/}" shape="note"];
  "sha256:37217844a55f24982a0b5d0c362a16366ceffc7d6dc016453998b50496e9deb9" [label="copy{src=/hubot/external-scripts.json, dest=/hubot/}" shape="note"];
  "sha256:ad0045583196932a7ccfa8be8f6d245a75701bdbd3d47b34a63005b4fbf3af84" [label="copy{src=/bin/hubot, dest=/hubot/bin/}" shape="note"];
  "sha256:f7a9ab3a5343e68b227add398b9efc3c3ec4b6bc882a70f94c5f905f3d6120ea" [label="sha256:f7a9ab3a5343e68b227add398b9efc3c3ec4b6bc882a70f94c5f905f3d6120ea" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8f5ff1ecde63f726cd69274bdf7b84a3639041b3832a907959625cb357fa81c9" [label=""];
  "sha256:8f5ff1ecde63f726cd69274bdf7b84a3639041b3832a907959625cb357fa81c9" -> "sha256:38c46f33ae96941b72eb169c2620574e73a3b5a38e3d585970d32f795c5f4db3" [label=""];
  "sha256:38c46f33ae96941b72eb169c2620574e73a3b5a38e3d585970d32f795c5f4db3" -> "sha256:fb19111aa26f343e1c6fcc8a307875adf78ed86e59713307078af7006ac241ed" [label=""];
  "sha256:fb19111aa26f343e1c6fcc8a307875adf78ed86e59713307078af7006ac241ed" -> "sha256:1517adb754e06a9979a2a9246d09503b24414aa6c3c3dd7b5c51cd4b7d9811ed" [label=""];
  "sha256:1517adb754e06a9979a2a9246d09503b24414aa6c3c3dd7b5c51cd4b7d9811ed" -> "sha256:df27dcc0ced66d6095691c38727c20fefbe3324eab3135af301ce16e627a9a8a" [label=""];
  "sha256:295494b6822f6a812796af6baf89da848cbd8aa96b29ec0d6801805f1b44b291" -> "sha256:df27dcc0ced66d6095691c38727c20fefbe3324eab3135af301ce16e627a9a8a" [label=""];
  "sha256:df27dcc0ced66d6095691c38727c20fefbe3324eab3135af301ce16e627a9a8a" -> "sha256:f3f98e7f4640356f3532776c6e5081de5187ce9ac8cf610b0f276bef00955a04" [label=""];
  "sha256:f3f98e7f4640356f3532776c6e5081de5187ce9ac8cf610b0f276bef00955a04" -> "sha256:dbe551dc80f6288b7e7cd10880ecae5a7d833c9c2e498a8abf0169303a9d3303" [label=""];
  "sha256:295494b6822f6a812796af6baf89da848cbd8aa96b29ec0d6801805f1b44b291" -> "sha256:dbe551dc80f6288b7e7cd10880ecae5a7d833c9c2e498a8abf0169303a9d3303" [label=""];
  "sha256:dbe551dc80f6288b7e7cd10880ecae5a7d833c9c2e498a8abf0169303a9d3303" -> "sha256:37217844a55f24982a0b5d0c362a16366ceffc7d6dc016453998b50496e9deb9" [label=""];
  "sha256:295494b6822f6a812796af6baf89da848cbd8aa96b29ec0d6801805f1b44b291" -> "sha256:37217844a55f24982a0b5d0c362a16366ceffc7d6dc016453998b50496e9deb9" [label=""];
  "sha256:37217844a55f24982a0b5d0c362a16366ceffc7d6dc016453998b50496e9deb9" -> "sha256:ad0045583196932a7ccfa8be8f6d245a75701bdbd3d47b34a63005b4fbf3af84" [label=""];
  "sha256:295494b6822f6a812796af6baf89da848cbd8aa96b29ec0d6801805f1b44b291" -> "sha256:ad0045583196932a7ccfa8be8f6d245a75701bdbd3d47b34a63005b4fbf3af84" [label=""];
  "sha256:ad0045583196932a7ccfa8be8f6d245a75701bdbd3d47b34a63005b4fbf3af84" -> "sha256:f7a9ab3a5343e68b227add398b9efc3c3ec4b6bc882a70f94c5f905f3d6120ea" [label=""];
}

