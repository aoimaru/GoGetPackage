[app/sources/218902458.Dockerfile]
digraph {
  "sha256:08fbf694e2732f9d397896387c0fc5f08de24a7470c39296e976cb81ea56c357" [label="docker-image://docker.io/ripcordsoftware/ubuntu-avancedb-dev:16.04" shape="ellipse"];
  "sha256:31767818218e927454de00c904ba1f0c444bdc8681daad386d5d86b8e93c646b" [label="local://context" shape="ellipse"];
  "sha256:e9d9dde8c0486390d3d13a8690a76d09811b6b9ed54cc2c15a9c5b580ce1c55d" [label="copy{src=/AvanceDB, dest=/home/avancedb/AvanceDB/}" shape="note"];
  "sha256:c24a386d3dc3a69599f41b9c475d543c839e09ee941030477cfac86793270563" [label="/bin/sh -c chown -R avancedb:avancedb /home/avancedb" shape="box"];
  "sha256:eb0cf0e7a8da90dcb570e42571055880232108ae9529087aaf15bc6c2a5f3a56" [label="sha256:eb0cf0e7a8da90dcb570e42571055880232108ae9529087aaf15bc6c2a5f3a56" shape="plaintext"];
  "sha256:08fbf694e2732f9d397896387c0fc5f08de24a7470c39296e976cb81ea56c357" -> "sha256:e9d9dde8c0486390d3d13a8690a76d09811b6b9ed54cc2c15a9c5b580ce1c55d" [label=""];
  "sha256:31767818218e927454de00c904ba1f0c444bdc8681daad386d5d86b8e93c646b" -> "sha256:e9d9dde8c0486390d3d13a8690a76d09811b6b9ed54cc2c15a9c5b580ce1c55d" [label=""];
  "sha256:e9d9dde8c0486390d3d13a8690a76d09811b6b9ed54cc2c15a9c5b580ce1c55d" -> "sha256:c24a386d3dc3a69599f41b9c475d543c839e09ee941030477cfac86793270563" [label=""];
  "sha256:c24a386d3dc3a69599f41b9c475d543c839e09ee941030477cfac86793270563" -> "sha256:eb0cf0e7a8da90dcb570e42571055880232108ae9529087aaf15bc6c2a5f3a56" [label=""];
}

