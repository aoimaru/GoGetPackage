[app/sources/472549902.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" [label="/bin/sh -c apk update --no-cache && apk add python3 python3-dev py3-pip git bash" shape="box"];
  "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" [label="/bin/sh -c git clone https://github.com/blabla1337/skf-labs.git" shape="box"];
  "sha256:2b05f5da00d6fa46bd2cbf3c4a36de6072c19b46480cf9612b8e5c2dd48b315c" [label="mkdir{path=/skf-labs/XSS-DOM-2}" shape="note"];
  "sha256:58aeda8de5acd5d9836f2ca26f022aab32d1751c7dbc2bf2fd48c9c8686343d4" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:9aa9e5bf1576c17712214846a05b7cd1c833b9d8a538b9de4d86fb068bbd7d6c" [label="sha256:9aa9e5bf1576c17712214846a05b7cd1c833b9d8a538b9de4d86fb068bbd7d6c" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" [label=""];
  "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" -> "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" [label=""];
  "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" -> "sha256:2b05f5da00d6fa46bd2cbf3c4a36de6072c19b46480cf9612b8e5c2dd48b315c" [label=""];
  "sha256:2b05f5da00d6fa46bd2cbf3c4a36de6072c19b46480cf9612b8e5c2dd48b315c" -> "sha256:58aeda8de5acd5d9836f2ca26f022aab32d1751c7dbc2bf2fd48c9c8686343d4" [label=""];
  "sha256:58aeda8de5acd5d9836f2ca26f022aab32d1751c7dbc2bf2fd48c9c8686343d4" -> "sha256:9aa9e5bf1576c17712214846a05b7cd1c833b9d8a538b9de4d86fb068bbd7d6c" [label=""];
}

