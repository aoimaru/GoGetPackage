[app/sources/463955666.Dockerfile]
digraph {
  "sha256:983a0f7309ed907059c0c0b96d796839805284738220e41138c31546f1359f00" [label="docker-image://docker.io/library/node:10.11.0-alpine" shape="ellipse"];
  "sha256:668d60ed4fbe01391a2d4f45e83d5cc05f8d60d4a2e90ad008915209b33bfe9c" [label="mkdir{path=/app}" shape="note"];
  "sha256:8941733b4a87884721c9435463d429ca92ed38a26f013c0a46ca961070e86cd1" [label="/bin/sh -c apk update && apk upgrade &&     apk add --no-cache git openssh" shape="box"];
  "sha256:bfe6747c1db8416fb162df48d82bf7771ed2bfd1190d9600e3c76c98b8151158" [label="/bin/sh -c npm install -g lerna-changelog@0.8.0 &&     npm install -g markdown-toc@1.2.0" shape="box"];
  "sha256:02095289da419f0452ed494d3cfc50ad89340896e47973a198767928fc1c1f4a" [label="local://context" shape="ellipse"];
  "sha256:d6354786bf13a707452f96ad946551cbed45e8f1c7e76f9306cd9676d126a71f" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:6ba931987c7d352aaa62a6ef0dd41263fb424dba91f8f5c837593ecefcbfbe26" [label="sha256:6ba931987c7d352aaa62a6ef0dd41263fb424dba91f8f5c837593ecefcbfbe26" shape="plaintext"];
  "sha256:983a0f7309ed907059c0c0b96d796839805284738220e41138c31546f1359f00" -> "sha256:668d60ed4fbe01391a2d4f45e83d5cc05f8d60d4a2e90ad008915209b33bfe9c" [label=""];
  "sha256:668d60ed4fbe01391a2d4f45e83d5cc05f8d60d4a2e90ad008915209b33bfe9c" -> "sha256:8941733b4a87884721c9435463d429ca92ed38a26f013c0a46ca961070e86cd1" [label=""];
  "sha256:8941733b4a87884721c9435463d429ca92ed38a26f013c0a46ca961070e86cd1" -> "sha256:bfe6747c1db8416fb162df48d82bf7771ed2bfd1190d9600e3c76c98b8151158" [label=""];
  "sha256:bfe6747c1db8416fb162df48d82bf7771ed2bfd1190d9600e3c76c98b8151158" -> "sha256:d6354786bf13a707452f96ad946551cbed45e8f1c7e76f9306cd9676d126a71f" [label=""];
  "sha256:02095289da419f0452ed494d3cfc50ad89340896e47973a198767928fc1c1f4a" -> "sha256:d6354786bf13a707452f96ad946551cbed45e8f1c7e76f9306cd9676d126a71f" [label=""];
  "sha256:d6354786bf13a707452f96ad946551cbed45e8f1c7e76f9306cd9676d126a71f" -> "sha256:6ba931987c7d352aaa62a6ef0dd41263fb424dba91f8f5c837593ecefcbfbe26" [label=""];
}

