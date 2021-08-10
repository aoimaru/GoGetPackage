[app/sources/274849929.Dockerfile]
digraph {
  "sha256:c6a6cd47936a9777ed3e64be68b754f5b2b3dfbd53fe786caf5f65a129660cfd" [label="docker-image://docker.io/grpc/clang:latest" shape="ellipse"];
  "sha256:cc0e4048c559a3a43b409b5d3f1b8037bde4431c8c84c24159a98140af5fd302" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   libtool   libgflags-dev   libgtest-dev   && apt-get clean" shape="box"];
  "sha256:84f647f8b103bf420b1333c98f943632cc2c578e41743c743a0bb123da486d0e" [label="/bin/sh -c git clone --recursive https://github.com/grpc/grpc.git" shape="box"];
  "sha256:9b3bf1295ee9ed75c30149b417e5544c6cf7038ed229b1489d759e6df0ac8b93" [label="sha256:9b3bf1295ee9ed75c30149b417e5544c6cf7038ed229b1489d759e6df0ac8b93" shape="plaintext"];
  "sha256:c6a6cd47936a9777ed3e64be68b754f5b2b3dfbd53fe786caf5f65a129660cfd" -> "sha256:cc0e4048c559a3a43b409b5d3f1b8037bde4431c8c84c24159a98140af5fd302" [label=""];
  "sha256:cc0e4048c559a3a43b409b5d3f1b8037bde4431c8c84c24159a98140af5fd302" -> "sha256:84f647f8b103bf420b1333c98f943632cc2c578e41743c743a0bb123da486d0e" [label=""];
  "sha256:84f647f8b103bf420b1333c98f943632cc2c578e41743c743a0bb123da486d0e" -> "sha256:9b3bf1295ee9ed75c30149b417e5544c6cf7038ed229b1489d759e6df0ac8b93" [label=""];
}

