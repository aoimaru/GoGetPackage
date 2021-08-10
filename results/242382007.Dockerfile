[app/sources/242382007.Dockerfile]
digraph {
  "sha256:2bbda089340ad56165fbfcab1dcb638aa825688acdb51f97687f0d35a38cc9bd" [label="docker-image://docker.io/japaric/mips-unknown-linux-gnu:v0.1.9" shape="ellipse"];
  "sha256:4bd8a524c9c4963d570452852c1a2956c175209fc36d82158f45c6b489f13de2" [label="/bin/sh -c apt-get update &&     apt-get install -y libudev-dev" shape="box"];
  "sha256:44625c24fcf02c0ba1e860073f0009ec2e69fdbec2a8874f4af775777d81261d" [label="sha256:44625c24fcf02c0ba1e860073f0009ec2e69fdbec2a8874f4af775777d81261d" shape="plaintext"];
  "sha256:2bbda089340ad56165fbfcab1dcb638aa825688acdb51f97687f0d35a38cc9bd" -> "sha256:4bd8a524c9c4963d570452852c1a2956c175209fc36d82158f45c6b489f13de2" [label=""];
  "sha256:4bd8a524c9c4963d570452852c1a2956c175209fc36d82158f45c6b489f13de2" -> "sha256:44625c24fcf02c0ba1e860073f0009ec2e69fdbec2a8874f4af775777d81261d" [label=""];
}

