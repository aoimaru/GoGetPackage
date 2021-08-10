[app/sources/472549244.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" [label="/bin/sh -c apk update --no-cache && apk add python3 python3-dev py3-pip git bash" shape="box"];
  "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" [label="/bin/sh -c git clone https://github.com/blabla1337/skf-labs.git" shape="box"];
  "sha256:963c98a0851bed2675169e3a3ed8ad75988859f19036748823034ef761034d8d" [label="mkdir{path=/skf-labs/File-upload}" shape="note"];
  "sha256:aa7aa637c79abe90b5bc4ba8ff0a5a9771020dbffb1bca126c8d8c1382e72386" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:e102ff4cde6fbcf88175ce521891d696bcd3080d04e875e47900e630fb04d341" [label="sha256:e102ff4cde6fbcf88175ce521891d696bcd3080d04e875e47900e630fb04d341" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" [label=""];
  "sha256:db3b939ec1dd47e30b73e5fbe71351edbf2500e9881a0d0d7072d7824a220027" -> "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" [label=""];
  "sha256:0358385e57864ec164c736cb9ab50069feedfa6512e72668a92a943fed90ee0c" -> "sha256:963c98a0851bed2675169e3a3ed8ad75988859f19036748823034ef761034d8d" [label=""];
  "sha256:963c98a0851bed2675169e3a3ed8ad75988859f19036748823034ef761034d8d" -> "sha256:aa7aa637c79abe90b5bc4ba8ff0a5a9771020dbffb1bca126c8d8c1382e72386" [label=""];
  "sha256:aa7aa637c79abe90b5bc4ba8ff0a5a9771020dbffb1bca126c8d8c1382e72386" -> "sha256:e102ff4cde6fbcf88175ce521891d696bcd3080d04e875e47900e630fb04d341" [label=""];
}

