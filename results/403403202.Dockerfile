[app/sources/403403202.Dockerfile]
digraph {
  "sha256:3dc5ab0d63b1f8fd5ba8ae1d739922ff3acb0aa9cad20e95f62200b51c296451" [label="docker-image://docker.io/library/centos@sha256:a23bced61701af9a0a758e94229676d9f09996a3ff0f3d26955b06bac8c282e0" shape="ellipse"];
  "sha256:5b19218f3b7ff3d7af58caa48dd3d9223b4914ebfb06543cd48f89bdf7856ce3" [label="/bin/sh -c yum install -y wget &&     yum install -y system-config-services &&     yum install -y curl &&     wget --output-document jdk.rpm         https://cdn.azul.com/zulu/bin/zulu8.21.0.1-jdk8.0.131-linux.x86_64.rpm &&     yum --nogpg localinstall -y jdk.rpm &&     rm -f jdk.rpm" shape="box"];
  "sha256:11a72821a2b64e0a53ec47f94e5d8f5ac76f0b20e29cfd6119df71bcf1eb7ef5" [label="sha256:11a72821a2b64e0a53ec47f94e5d8f5ac76f0b20e29cfd6119df71bcf1eb7ef5" shape="plaintext"];
  "sha256:3dc5ab0d63b1f8fd5ba8ae1d739922ff3acb0aa9cad20e95f62200b51c296451" -> "sha256:5b19218f3b7ff3d7af58caa48dd3d9223b4914ebfb06543cd48f89bdf7856ce3" [label=""];
  "sha256:5b19218f3b7ff3d7af58caa48dd3d9223b4914ebfb06543cd48f89bdf7856ce3" -> "sha256:11a72821a2b64e0a53ec47f94e5d8f5ac76f0b20e29cfd6119df71bcf1eb7ef5" [label=""];
}

