[app/sources/252801255.Dockerfile]
digraph {
  "sha256:22805208c73cd241d62d042b0cd7697f3b1b0bb84ad9bce57b1c5ef6cacf4dc5" [label="docker-image://docker.io/library/node:6.10" shape="ellipse"];
  "sha256:656d86df1fc3d436c6cfcfe93626b737f1a6e03973e1cacc5e900a3548613697" [label="/bin/sh -c apt-get update -y && apt-get install -y ruby" shape="box"];
  "sha256:a3c3d767e97ccd905c864cd8e1957aef8df9171f2b99a6de093284da56cdcc23" [label="/bin/sh -c npm install -g grunt-cli" shape="box"];
  "sha256:8b801821ce17c76e0196a74af78fc88e515b2f52a1200b6360cf3cc35227f20e" [label="/bin/sh -c npm install -g grunt" shape="box"];
  "sha256:372bebc9afc0c172da9bcb3ec7b230a180830cec5803b1c92d2efaa867dd7c3b" [label="/bin/sh -c gem update --system && gem install scss_lint" shape="box"];
  "sha256:c31ddb673e4632bae950e52fb6f119d7b78f751249ab984f0b365672a81d4877" [label="mkdir{path=/data}" shape="note"];
  "sha256:b351efa84c71860351d8376dd88297c17f9bb907db49eb50e21ca592face8f8c" [label="sha256:b351efa84c71860351d8376dd88297c17f9bb907db49eb50e21ca592face8f8c" shape="plaintext"];
  "sha256:22805208c73cd241d62d042b0cd7697f3b1b0bb84ad9bce57b1c5ef6cacf4dc5" -> "sha256:656d86df1fc3d436c6cfcfe93626b737f1a6e03973e1cacc5e900a3548613697" [label=""];
  "sha256:656d86df1fc3d436c6cfcfe93626b737f1a6e03973e1cacc5e900a3548613697" -> "sha256:a3c3d767e97ccd905c864cd8e1957aef8df9171f2b99a6de093284da56cdcc23" [label=""];
  "sha256:a3c3d767e97ccd905c864cd8e1957aef8df9171f2b99a6de093284da56cdcc23" -> "sha256:8b801821ce17c76e0196a74af78fc88e515b2f52a1200b6360cf3cc35227f20e" [label=""];
  "sha256:8b801821ce17c76e0196a74af78fc88e515b2f52a1200b6360cf3cc35227f20e" -> "sha256:372bebc9afc0c172da9bcb3ec7b230a180830cec5803b1c92d2efaa867dd7c3b" [label=""];
  "sha256:372bebc9afc0c172da9bcb3ec7b230a180830cec5803b1c92d2efaa867dd7c3b" -> "sha256:c31ddb673e4632bae950e52fb6f119d7b78f751249ab984f0b365672a81d4877" [label=""];
  "sha256:c31ddb673e4632bae950e52fb6f119d7b78f751249ab984f0b365672a81d4877" -> "sha256:b351efa84c71860351d8376dd88297c17f9bb907db49eb50e21ca592face8f8c" [label=""];
}

