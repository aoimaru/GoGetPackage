[app/sources/353041278.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:293412a0136fe8138af978bd49110605a6f7655c6925266cb4127b09f0263409" [label="/bin/sh -c yum install -y git wget" shape="box"];
  "sha256:b41f5dd8c8ef71922cd47139135daab83a13d51178e6da803e655d39ecf0d6c2" [label="/bin/sh -c wget https://storage.googleapis.com/golang/go1.6.2.linux-amd64.tar.gz && tar -C /usr/local -zxvf go*.tar.gz && cp /usr/local/go/bin/go /usr/bin/go" shape="box"];
  "sha256:3e91c60a6d4475fcc56f3897ddd5d3d254779c61e13ba7d01143c80987da7fe5" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:1bb70750a14730b5412a16d8fae70f829d19e8e88d3a3190bee33210e6b4a8f9" [label="/bin/sh -c git clone https://github.com/RobinUS2/presto-bloomfilter.git" shape="box"];
  "sha256:62607a9e9fb31f9d66d8f4d6bd9acff53c3cd049267b97381536b723efb2e085" [label="/bin/sh -c ./presto-bloomfilter/persist-service/build.sh" shape="box"];
  "sha256:6f397eada02932153355436fe1bee0bd1555ba44c26ae724fcff6b1ea62900e0" [label="sha256:6f397eada02932153355436fe1bee0bd1555ba44c26ae724fcff6b1ea62900e0" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:293412a0136fe8138af978bd49110605a6f7655c6925266cb4127b09f0263409" [label=""];
  "sha256:293412a0136fe8138af978bd49110605a6f7655c6925266cb4127b09f0263409" -> "sha256:b41f5dd8c8ef71922cd47139135daab83a13d51178e6da803e655d39ecf0d6c2" [label=""];
  "sha256:b41f5dd8c8ef71922cd47139135daab83a13d51178e6da803e655d39ecf0d6c2" -> "sha256:3e91c60a6d4475fcc56f3897ddd5d3d254779c61e13ba7d01143c80987da7fe5" [label=""];
  "sha256:3e91c60a6d4475fcc56f3897ddd5d3d254779c61e13ba7d01143c80987da7fe5" -> "sha256:1bb70750a14730b5412a16d8fae70f829d19e8e88d3a3190bee33210e6b4a8f9" [label=""];
  "sha256:1bb70750a14730b5412a16d8fae70f829d19e8e88d3a3190bee33210e6b4a8f9" -> "sha256:62607a9e9fb31f9d66d8f4d6bd9acff53c3cd049267b97381536b723efb2e085" [label=""];
  "sha256:62607a9e9fb31f9d66d8f4d6bd9acff53c3cd049267b97381536b723efb2e085" -> "sha256:6f397eada02932153355436fe1bee0bd1555ba44c26ae724fcff6b1ea62900e0" [label=""];
}

