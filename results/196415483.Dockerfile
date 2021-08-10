[app/sources/196415483.Dockerfile]
digraph {
  "sha256:5f57488e89630051ae023f3c7689d14816840d42f06da0ec4c3b231ca1227b5f" [label="local://context" shape="ellipse"];
  "sha256:6afa58b931f90d5d14ca59977e0d7ae96159d0a25b119543e7a121108dc9d489" [label="docker-image://docker.io/alexellis2/go-arm:v6_1.5" shape="ellipse"];
  "sha256:73aa2265abcdcaa2f207ee56c242bf1dd72d10f63c510e1aebc62b229e828db2" [label="mkdir{path=/src/github.com/docker}" shape="note"];
  "sha256:b4a885e36f7c6a750592e8978e7c4ba8681884797f50d6e46b4d825523ab0e1c" [label="/bin/sh -c git clone https://github.com/docker/swarm" shape="box"];
  "sha256:ae367de77831f2cb734437ed3d0b0d017fa177c5c1f30296b753bfb1e6c61501" [label="mkdir{path=/src/github.com/docker/swarm}" shape="note"];
  "sha256:3c102dced73fa0b436959a104c460b56a15ace5df616b1756fb4893695208630" [label="/bin/sh -c mkdir -p /usr/lib/go/pkg/linux_arm_netgo/" shape="box"];
  "sha256:1e136720423eca4082947e612822f3c9c8663e004fba5d4a7c3a05060bb6d019" [label="/bin/sh -c godep go install -v -a -tags netgo -installsuffix netgo -ldflags '-extldflags \"-static\" -s' ." shape="box"];
  "sha256:ecdbd2fb4b20142853aaec7b221f41b7c31401c89509e7e8c6e082af0b3a1a02" [label="mkdir{path=/root}" shape="note"];
  "sha256:ae1b1e2827575b87b51f3dbdd11bc240ee883824487f421cff1ca77068d59bc0" [label="copy{src=/export_binary.sh, dest=/root/}" shape="note"];
  "sha256:553a6d066d0d4f32f3dd09bf66fa0bb710f074b16ae9d96063fa721c0b2f88eb" [label="sha256:553a6d066d0d4f32f3dd09bf66fa0bb710f074b16ae9d96063fa721c0b2f88eb" shape="plaintext"];
  "sha256:6afa58b931f90d5d14ca59977e0d7ae96159d0a25b119543e7a121108dc9d489" -> "sha256:73aa2265abcdcaa2f207ee56c242bf1dd72d10f63c510e1aebc62b229e828db2" [label=""];
  "sha256:73aa2265abcdcaa2f207ee56c242bf1dd72d10f63c510e1aebc62b229e828db2" -> "sha256:b4a885e36f7c6a750592e8978e7c4ba8681884797f50d6e46b4d825523ab0e1c" [label=""];
  "sha256:b4a885e36f7c6a750592e8978e7c4ba8681884797f50d6e46b4d825523ab0e1c" -> "sha256:ae367de77831f2cb734437ed3d0b0d017fa177c5c1f30296b753bfb1e6c61501" [label=""];
  "sha256:ae367de77831f2cb734437ed3d0b0d017fa177c5c1f30296b753bfb1e6c61501" -> "sha256:3c102dced73fa0b436959a104c460b56a15ace5df616b1756fb4893695208630" [label=""];
  "sha256:3c102dced73fa0b436959a104c460b56a15ace5df616b1756fb4893695208630" -> "sha256:1e136720423eca4082947e612822f3c9c8663e004fba5d4a7c3a05060bb6d019" [label=""];
  "sha256:1e136720423eca4082947e612822f3c9c8663e004fba5d4a7c3a05060bb6d019" -> "sha256:ecdbd2fb4b20142853aaec7b221f41b7c31401c89509e7e8c6e082af0b3a1a02" [label=""];
  "sha256:ecdbd2fb4b20142853aaec7b221f41b7c31401c89509e7e8c6e082af0b3a1a02" -> "sha256:ae1b1e2827575b87b51f3dbdd11bc240ee883824487f421cff1ca77068d59bc0" [label=""];
  "sha256:5f57488e89630051ae023f3c7689d14816840d42f06da0ec4c3b231ca1227b5f" -> "sha256:ae1b1e2827575b87b51f3dbdd11bc240ee883824487f421cff1ca77068d59bc0" [label=""];
  "sha256:ae1b1e2827575b87b51f3dbdd11bc240ee883824487f421cff1ca77068d59bc0" -> "sha256:553a6d066d0d4f32f3dd09bf66fa0bb710f074b16ae9d96063fa721c0b2f88eb" [label=""];
}

