[app/sources/252781573.Dockerfile]
digraph {
  "sha256:92e70c58406607fbf526ff993dd9cb5b2db6ef37701dd2d2d8d677397936aa24" [label="docker-image://docker.io/library/golang:1.7.1" shape="ellipse"];
  "sha256:a1a4ce06d3ca9e4d80a93b3888ab51d2a18c5df4e77e4ffc0db766c185a9c5fe" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:c8f96d6242e9f333ad5cd704012c042b35bc640af61546d0369733ca337eff50" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:f731f528446016b601250048e82308ecb2870d2096af06090c900444ac7a5ed2" [label="/bin/sh -c curl https://glide.sh/get | sh" shape="box"];
  "sha256:009e4d26330060f56ee064bba09b86a6a7c91152c01c899af74f22fd4dbdb8ea" [label="/bin/sh -c mkdir -p /golang/web-crawler/src/github.com/barakb" shape="box"];
  "sha256:62537cf3563d029850c77154f0e66d2fda549bd390f6289924f57855dfee4fb6" [label="mkdir{path=/golang/web-crawler/src/github.com/barakb}" shape="note"];
  "sha256:963e1b2ca3f01c6165046fe5ddba01751cc53c40d53f7fd8ae598dcb70774336" [label="/bin/sh -c git clone https://github.com/barakb/web-crawler.git" shape="box"];
  "sha256:41c8fb5a89d1a70db2996346c989e64d326ec2ea31343affd8d4dd7c559fefb7" [label="mkdir{path=/golang/web-crawler/src/github.com/barakb/web-crawler}" shape="note"];
  "sha256:fba0854137716893aa9cb14f1179aeeefd9bc1a84ff61c6ff6b089e4327dee1b" [label="/bin/sh -c glide install" shape="box"];
  "sha256:6bd1f6ea6c59a94014f7a022d168b186c27c1436956662e030603e3656817e76" [label="mkdir{path=/golang/web-crawler}" shape="note"];
  "sha256:18d1a1d43cfdb30cb8f19e2eecd0c66da875975ae690357c58cb1aea36f8e0b7" [label="local://context" shape="ellipse"];
  "sha256:0651336539af5850c1c304955fc35f7ef03e8bd9dc5eadcbffe85ddbe278722e" [label="copy{src=/serve.sh, dest=/golang/web-crawler/}" shape="note"];
  "sha256:bc8e222ebf3fa2ddcbc56d03d4903a1928b3f5b8361539b9ae252edf68168b65" [label="sha256:bc8e222ebf3fa2ddcbc56d03d4903a1928b3f5b8361539b9ae252edf68168b65" shape="plaintext"];
  "sha256:92e70c58406607fbf526ff993dd9cb5b2db6ef37701dd2d2d8d677397936aa24" -> "sha256:a1a4ce06d3ca9e4d80a93b3888ab51d2a18c5df4e77e4ffc0db766c185a9c5fe" [label=""];
  "sha256:a1a4ce06d3ca9e4d80a93b3888ab51d2a18c5df4e77e4ffc0db766c185a9c5fe" -> "sha256:c8f96d6242e9f333ad5cd704012c042b35bc640af61546d0369733ca337eff50" [label=""];
  "sha256:c8f96d6242e9f333ad5cd704012c042b35bc640af61546d0369733ca337eff50" -> "sha256:f731f528446016b601250048e82308ecb2870d2096af06090c900444ac7a5ed2" [label=""];
  "sha256:f731f528446016b601250048e82308ecb2870d2096af06090c900444ac7a5ed2" -> "sha256:009e4d26330060f56ee064bba09b86a6a7c91152c01c899af74f22fd4dbdb8ea" [label=""];
  "sha256:009e4d26330060f56ee064bba09b86a6a7c91152c01c899af74f22fd4dbdb8ea" -> "sha256:62537cf3563d029850c77154f0e66d2fda549bd390f6289924f57855dfee4fb6" [label=""];
  "sha256:62537cf3563d029850c77154f0e66d2fda549bd390f6289924f57855dfee4fb6" -> "sha256:963e1b2ca3f01c6165046fe5ddba01751cc53c40d53f7fd8ae598dcb70774336" [label=""];
  "sha256:963e1b2ca3f01c6165046fe5ddba01751cc53c40d53f7fd8ae598dcb70774336" -> "sha256:41c8fb5a89d1a70db2996346c989e64d326ec2ea31343affd8d4dd7c559fefb7" [label=""];
  "sha256:41c8fb5a89d1a70db2996346c989e64d326ec2ea31343affd8d4dd7c559fefb7" -> "sha256:fba0854137716893aa9cb14f1179aeeefd9bc1a84ff61c6ff6b089e4327dee1b" [label=""];
  "sha256:fba0854137716893aa9cb14f1179aeeefd9bc1a84ff61c6ff6b089e4327dee1b" -> "sha256:6bd1f6ea6c59a94014f7a022d168b186c27c1436956662e030603e3656817e76" [label=""];
  "sha256:6bd1f6ea6c59a94014f7a022d168b186c27c1436956662e030603e3656817e76" -> "sha256:0651336539af5850c1c304955fc35f7ef03e8bd9dc5eadcbffe85ddbe278722e" [label=""];
  "sha256:18d1a1d43cfdb30cb8f19e2eecd0c66da875975ae690357c58cb1aea36f8e0b7" -> "sha256:0651336539af5850c1c304955fc35f7ef03e8bd9dc5eadcbffe85ddbe278722e" [label=""];
  "sha256:0651336539af5850c1c304955fc35f7ef03e8bd9dc5eadcbffe85ddbe278722e" -> "sha256:bc8e222ebf3fa2ddcbc56d03d4903a1928b3f5b8361539b9ae252edf68168b65" [label=""];
}

