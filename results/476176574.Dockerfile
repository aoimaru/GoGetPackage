[app/sources/476176574.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:6d52e2e776ea9c3337f4f5059a7fc19e8c17be8416de38965ca43d6b43d13f1e" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9" shape="box"];
  "sha256:3f8874792cdfe6effcfb72a935cd33a22c7166487a64eb1126176880e79b0ba5" [label="/bin/sh -c echo \"deb http://repos.azulsystems.com/debian stable  main\" >> /etc/apt/sources.list.d/zulu.list" shape="box"];
  "sha256:9479cbd59cf852d806f826aadcdea79a57a4fdc5cdb66f96cec62db6636aeeb7" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:9562150b34759f24088b6aede20ad84a470ace7a0a7528231425dd16c575cb8e" [label="/bin/sh -c apt-get -y install zulu-6=6.13.0.3" shape="box"];
  "sha256:dbbeec9bd2cde3a13549917ef813eb92cd2f1259e7408c2bc1316b740da75262" [label="sha256:dbbeec9bd2cde3a13549917ef813eb92cd2f1259e7408c2bc1316b740da75262" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:6d52e2e776ea9c3337f4f5059a7fc19e8c17be8416de38965ca43d6b43d13f1e" [label=""];
  "sha256:6d52e2e776ea9c3337f4f5059a7fc19e8c17be8416de38965ca43d6b43d13f1e" -> "sha256:3f8874792cdfe6effcfb72a935cd33a22c7166487a64eb1126176880e79b0ba5" [label=""];
  "sha256:3f8874792cdfe6effcfb72a935cd33a22c7166487a64eb1126176880e79b0ba5" -> "sha256:9479cbd59cf852d806f826aadcdea79a57a4fdc5cdb66f96cec62db6636aeeb7" [label=""];
  "sha256:9479cbd59cf852d806f826aadcdea79a57a4fdc5cdb66f96cec62db6636aeeb7" -> "sha256:9562150b34759f24088b6aede20ad84a470ace7a0a7528231425dd16c575cb8e" [label=""];
  "sha256:9562150b34759f24088b6aede20ad84a470ace7a0a7528231425dd16c575cb8e" -> "sha256:dbbeec9bd2cde3a13549917ef813eb92cd2f1259e7408c2bc1316b740da75262" [label=""];
}

