[app/sources/203714646.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b626be5680722b86e5bed6e1594769d865f60856d1b0bfdd3059d28220133dce" [label="/bin/sh -c apt-get update &&   DEBIAN_FRONTEND=noninteractive apt-get install -y redis-server git wget &&   apt-get clean &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cacd1564c4322cb66fd1aac5078f71ee11fb9bf82adacb33642fbeb9b0c9967b" [label="mkdir{path=/root}" shape="note"];
  "sha256:cad8ca712dd5b0b1f91d4b8147be88ba10fab3c57d102c53887e3f2210184a51" [label="/bin/sh -c git clone --recursive https://github.com/obdg/speedo.git" shape="box"];
  "sha256:069698063630e2f82213489f151ceb6f0bcc3b0562d3c5b1209a230f4620ee7c" [label="mkdir{path=/root/speedo/caffe}" shape="note"];
  "sha256:079217fedd8a7b5f8bd72fd699958b07a9464f3da94254cb04012d57d040afb0" [label="/bin/sh -c ./install_dependency &&   rm -r /tmp/* &&   apt-get clean &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:52d31bb72f1faa5e78c0097d1a259842ba37e6b905b8fb8e14b2a0610d41d1d5" [label="/bin/sh -c make all javainstall && sudo make install" shape="box"];
  "sha256:72c16dcc6312d5630be0d9890705a1f9ff3591e77dd9b342db890d631388393a" [label="/bin/sh -c ./data/cifar10/get_cifar10.sh &&   ./examples/speedo/create_cifar10.sh" shape="box"];
  "sha256:0f00ee57fb85e89e698bea5a771c7e3f83813d7987890abc2fa1308e2def4fc7" [label="mkdir{path=/root/speedo}" shape="note"];
  "sha256:868f83c1053ef2fbbd159d5c1c7f65753fe564e80021c3a707f6f7e872d1fab5" [label="/bin/sh -c ./sbt akka:assembly &&   cp target/scala-2.11/SpeeDO-akka-1.0.jar . &&   rm -rf ~/.sbt target" shape="box"];
  "sha256:672a0e054d3bcf2ef53d0fa37a52c29c94b5f28f7522e3a0a1773e4e8a2c155a" [label="sha256:672a0e054d3bcf2ef53d0fa37a52c29c94b5f28f7522e3a0a1773e4e8a2c155a" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b626be5680722b86e5bed6e1594769d865f60856d1b0bfdd3059d28220133dce" [label=""];
  "sha256:b626be5680722b86e5bed6e1594769d865f60856d1b0bfdd3059d28220133dce" -> "sha256:cacd1564c4322cb66fd1aac5078f71ee11fb9bf82adacb33642fbeb9b0c9967b" [label=""];
  "sha256:cacd1564c4322cb66fd1aac5078f71ee11fb9bf82adacb33642fbeb9b0c9967b" -> "sha256:cad8ca712dd5b0b1f91d4b8147be88ba10fab3c57d102c53887e3f2210184a51" [label=""];
  "sha256:cad8ca712dd5b0b1f91d4b8147be88ba10fab3c57d102c53887e3f2210184a51" -> "sha256:069698063630e2f82213489f151ceb6f0bcc3b0562d3c5b1209a230f4620ee7c" [label=""];
  "sha256:069698063630e2f82213489f151ceb6f0bcc3b0562d3c5b1209a230f4620ee7c" -> "sha256:079217fedd8a7b5f8bd72fd699958b07a9464f3da94254cb04012d57d040afb0" [label=""];
  "sha256:079217fedd8a7b5f8bd72fd699958b07a9464f3da94254cb04012d57d040afb0" -> "sha256:52d31bb72f1faa5e78c0097d1a259842ba37e6b905b8fb8e14b2a0610d41d1d5" [label=""];
  "sha256:52d31bb72f1faa5e78c0097d1a259842ba37e6b905b8fb8e14b2a0610d41d1d5" -> "sha256:72c16dcc6312d5630be0d9890705a1f9ff3591e77dd9b342db890d631388393a" [label=""];
  "sha256:72c16dcc6312d5630be0d9890705a1f9ff3591e77dd9b342db890d631388393a" -> "sha256:0f00ee57fb85e89e698bea5a771c7e3f83813d7987890abc2fa1308e2def4fc7" [label=""];
  "sha256:0f00ee57fb85e89e698bea5a771c7e3f83813d7987890abc2fa1308e2def4fc7" -> "sha256:868f83c1053ef2fbbd159d5c1c7f65753fe564e80021c3a707f6f7e872d1fab5" [label=""];
  "sha256:868f83c1053ef2fbbd159d5c1c7f65753fe564e80021c3a707f6f7e872d1fab5" -> "sha256:672a0e054d3bcf2ef53d0fa37a52c29c94b5f28f7522e3a0a1773e4e8a2c155a" [label=""];
}

