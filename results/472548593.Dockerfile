[app/sources/472548593.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" [label="/bin/sh -c apk update --no-cache && apk add python3 python3-dev py3-pip git bash" shape="box"];
  "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" [label="/bin/sh -c git clone https://github.com/blabla1337/skf-labs.git" shape="box"];
  "sha256:f409b79c59a639bc06c093630ba20d885c03c1770166344c5a1ca1d2fc218f4f" [label="mkdir{path=/skf-labs/Auth-bypass-simple}" shape="note"];
  "sha256:c9f66560c9871ca54db520606c0ddc075fb8cbdc58235a1a14cf8de1d8bea071" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:f75ce3f17a540aba45d7beb72cdd477fa40a9f6a3fb158075e80a6e9d58f22ae" [label="sha256:f75ce3f17a540aba45d7beb72cdd477fa40a9f6a3fb158075e80a6e9d58f22ae" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" [label=""];
  "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" -> "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" [label=""];
  "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" -> "sha256:f409b79c59a639bc06c093630ba20d885c03c1770166344c5a1ca1d2fc218f4f" [label=""];
  "sha256:f409b79c59a639bc06c093630ba20d885c03c1770166344c5a1ca1d2fc218f4f" -> "sha256:c9f66560c9871ca54db520606c0ddc075fb8cbdc58235a1a14cf8de1d8bea071" [label=""];
  "sha256:c9f66560c9871ca54db520606c0ddc075fb8cbdc58235a1a14cf8de1d8bea071" -> "sha256:f75ce3f17a540aba45d7beb72cdd477fa40a9f6a3fb158075e80a6e9d58f22ae" [label=""];
}

