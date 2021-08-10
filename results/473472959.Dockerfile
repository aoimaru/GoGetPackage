[app/sources/473472959.Dockerfile]
digraph {
  "sha256:84245a233d4012a3b63a9bc2b18614044fa94d9ffc340d617149f8ff7e3e2fc4" [label="local://context" shape="ellipse"];
  "sha256:a20d87be098cd8f5ab170f93f04ffcfe93bbadb807c86943ed30fd61bf7e4b18" [label="docker-image://docker.io/library/rust:1.32-slim" shape="ellipse"];
  "sha256:c000d6a94ed4e6e79c27876ca18aee4ad6f0a7e90eaa1bc5c3c4ea56688146b6" [label="/bin/sh -c rustup component add rustfmt" shape="box"];
  "sha256:17d6b4add07c5352b880d4d69fb2a0943c9f9fb32affe4e3b53aacd8c057c91e" [label="/bin/sh -c apt-get update -qq && apt-get install -qqy --no-install-recommends   curl=7.52*   jq=1.5*   bash=4.4*   git=1:2.11*   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b21c8837a07e8139f0aaf7b785678bcb69be0f83845c161adda0e86d6dca73f2" [label="copy{src=/lib.sh, dest=/lib.sh}" shape="note"];
  "sha256:975b8d415ad77bc6c484a9f3c6bed07a7988c8837e7b1452861f006c5fbbb70d" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:edaf31b6aa1a705ecfb941c6c00e926310b51022c2bc508242e7b223c0c96491" [label="sha256:edaf31b6aa1a705ecfb941c6c00e926310b51022c2bc508242e7b223c0c96491" shape="plaintext"];
  "sha256:a20d87be098cd8f5ab170f93f04ffcfe93bbadb807c86943ed30fd61bf7e4b18" -> "sha256:c000d6a94ed4e6e79c27876ca18aee4ad6f0a7e90eaa1bc5c3c4ea56688146b6" [label=""];
  "sha256:c000d6a94ed4e6e79c27876ca18aee4ad6f0a7e90eaa1bc5c3c4ea56688146b6" -> "sha256:17d6b4add07c5352b880d4d69fb2a0943c9f9fb32affe4e3b53aacd8c057c91e" [label=""];
  "sha256:17d6b4add07c5352b880d4d69fb2a0943c9f9fb32affe4e3b53aacd8c057c91e" -> "sha256:b21c8837a07e8139f0aaf7b785678bcb69be0f83845c161adda0e86d6dca73f2" [label=""];
  "sha256:84245a233d4012a3b63a9bc2b18614044fa94d9ffc340d617149f8ff7e3e2fc4" -> "sha256:b21c8837a07e8139f0aaf7b785678bcb69be0f83845c161adda0e86d6dca73f2" [label=""];
  "sha256:b21c8837a07e8139f0aaf7b785678bcb69be0f83845c161adda0e86d6dca73f2" -> "sha256:975b8d415ad77bc6c484a9f3c6bed07a7988c8837e7b1452861f006c5fbbb70d" [label=""];
  "sha256:84245a233d4012a3b63a9bc2b18614044fa94d9ffc340d617149f8ff7e3e2fc4" -> "sha256:975b8d415ad77bc6c484a9f3c6bed07a7988c8837e7b1452861f006c5fbbb70d" [label=""];
  "sha256:975b8d415ad77bc6c484a9f3c6bed07a7988c8837e7b1452861f006c5fbbb70d" -> "sha256:edaf31b6aa1a705ecfb941c6c00e926310b51022c2bc508242e7b223c0c96491" [label=""];
}

