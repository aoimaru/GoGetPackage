[app/sources/374668544.Dockerfile]
digraph {
  "sha256:b843e14b901718ca83c983758932a2d504196de5eca4886ba888b56d78764fd2" [label="docker-image://docker.io/publicisworldwide/jenkins-slave:latest" shape="ellipse"];
  "sha256:4a0bdc253228a4b118f305e15d504428fdd3a51ae2ba8e8b821851d6e816d9af" [label="/bin/sh -c /usr/bin/yum install -y which tar" shape="box"];
  "sha256:ad0f54d6f4fe6e71bf0b089ef2e0ee9a7fd17ae8c6b7035189be141c9d617b22" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 &&     \\curl -sSL https://get.rvm.io | bash -s stable --ruby=2.1" shape="box"];
  "sha256:bcd1c5f2837d7bd19f878c5ee14152f3cad7e925e3edccd7e5628ff3e8f3286d" [label="sha256:bcd1c5f2837d7bd19f878c5ee14152f3cad7e925e3edccd7e5628ff3e8f3286d" shape="plaintext"];
  "sha256:b843e14b901718ca83c983758932a2d504196de5eca4886ba888b56d78764fd2" -> "sha256:4a0bdc253228a4b118f305e15d504428fdd3a51ae2ba8e8b821851d6e816d9af" [label=""];
  "sha256:4a0bdc253228a4b118f305e15d504428fdd3a51ae2ba8e8b821851d6e816d9af" -> "sha256:ad0f54d6f4fe6e71bf0b089ef2e0ee9a7fd17ae8c6b7035189be141c9d617b22" [label=""];
  "sha256:ad0f54d6f4fe6e71bf0b089ef2e0ee9a7fd17ae8c6b7035189be141c9d617b22" -> "sha256:bcd1c5f2837d7bd19f878c5ee14152f3cad7e925e3edccd7e5628ff3e8f3286d" [label=""];
}

