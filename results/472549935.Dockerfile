[app/sources/472549935.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" [label="/bin/sh -c apk update --no-cache && apk add python3 python3-dev py3-pip git bash" shape="box"];
  "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" [label="/bin/sh -c git clone https://github.com/blabla1337/skf-labs.git" shape="box"];
  "sha256:18ce29ef45a13012a63baf6467d13e268e0a3bafc36f08766f24d92c807b3cea" [label="mkdir{path=/skf-labs/XSS-DOM}" shape="note"];
  "sha256:09b7c4574668409b6976297bf588a2774bad4b17b692851f146fd5a49f1f72e2" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:ec98c1cffba2763c3ec6225feb2981f5deb6976e2c8979bd4a7907555198ea75" [label="sha256:ec98c1cffba2763c3ec6225feb2981f5deb6976e2c8979bd4a7907555198ea75" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" [label=""];
  "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" -> "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" [label=""];
  "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" -> "sha256:18ce29ef45a13012a63baf6467d13e268e0a3bafc36f08766f24d92c807b3cea" [label=""];
  "sha256:18ce29ef45a13012a63baf6467d13e268e0a3bafc36f08766f24d92c807b3cea" -> "sha256:09b7c4574668409b6976297bf588a2774bad4b17b692851f146fd5a49f1f72e2" [label=""];
  "sha256:09b7c4574668409b6976297bf588a2774bad4b17b692851f146fd5a49f1f72e2" -> "sha256:ec98c1cffba2763c3ec6225feb2981f5deb6976e2c8979bd4a7907555198ea75" [label=""];
}

