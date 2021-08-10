[app/sources/153472108.Dockerfile]
digraph {
  "sha256:9124235c288e5c729bb50617d6907746d23843a3a3a3d64ab9f10ba5b7ed0e23" [label="docker-image://docker.io/circleci/python:3.6@sha256:c82d3594d9bd3418f79625c8e0412358cc10b63d1185d743d0030c54b7bcd0cf" shape="ellipse"];
  "sha256:4701b878b7676a7c2c953be45e79b539a8fb31435d2f2dfb57759d0d28d47b14" [label="/bin/sh -c sudo sed -i 's/debian stretch main$/debian stretch main contrib non-free/' /etc/apt/sources.list" shape="box"];
  "sha256:4ed47c949d2a62d2317028383c6ea4acf57ecec2d92ca404373d21abd7818455" [label="/bin/sh -c sudo apt-get update; sudo apt-get install -qy unrar" shape="box"];
  "sha256:b33a6e1297a514f9e50d7047faf7bf9d54ee722f814c0cc2906543863370be88" [label="/bin/sh -c sudo pip install virtualenv" shape="box"];
  "sha256:e75c896ac015cf7c6ea2c962d063122cf5366d32300068df545341a13e80167d" [label="sha256:e75c896ac015cf7c6ea2c962d063122cf5366d32300068df545341a13e80167d" shape="plaintext"];
  "sha256:9124235c288e5c729bb50617d6907746d23843a3a3a3d64ab9f10ba5b7ed0e23" -> "sha256:4701b878b7676a7c2c953be45e79b539a8fb31435d2f2dfb57759d0d28d47b14" [label=""];
  "sha256:4701b878b7676a7c2c953be45e79b539a8fb31435d2f2dfb57759d0d28d47b14" -> "sha256:4ed47c949d2a62d2317028383c6ea4acf57ecec2d92ca404373d21abd7818455" [label=""];
  "sha256:4ed47c949d2a62d2317028383c6ea4acf57ecec2d92ca404373d21abd7818455" -> "sha256:b33a6e1297a514f9e50d7047faf7bf9d54ee722f814c0cc2906543863370be88" [label=""];
  "sha256:b33a6e1297a514f9e50d7047faf7bf9d54ee722f814c0cc2906543863370be88" -> "sha256:e75c896ac015cf7c6ea2c962d063122cf5366d32300068df545341a13e80167d" [label=""];
}

