[app/sources/269900353.Dockerfile]
digraph {
  "sha256:331d4cfb43af3a83baed005914742d4fa3b615b820ac1c2930848cdd3f0b30aa" [label="docker-image://docker.io/library/docker:18.06.0-ce-git" shape="ellipse"];
  "sha256:0621e14add403d1dc6e0cfa978caf2bee56eed089d9eba7234ec34d198c2873d" [label="/bin/sh -c mkdir -p git-lfs && wget -qO- https://github.com/git-lfs/git-lfs/releases/download/v${GIT_LFS_VERSION}/git-lfs-linux-amd64-v${GIT_LFS_VERSION}.tar.gz | tar xz -C git-lfs;  \tmv git-lfs/git-lfs /usr/bin/ && rm -rf git-lfs && git lfs install" shape="box"];
  "sha256:36d047a8b3b7168be060f49573afdaccf3707f61a757b874c4ed7115d8d13836" [label="sha256:36d047a8b3b7168be060f49573afdaccf3707f61a757b874c4ed7115d8d13836" shape="plaintext"];
  "sha256:331d4cfb43af3a83baed005914742d4fa3b615b820ac1c2930848cdd3f0b30aa" -> "sha256:0621e14add403d1dc6e0cfa978caf2bee56eed089d9eba7234ec34d198c2873d" [label=""];
  "sha256:0621e14add403d1dc6e0cfa978caf2bee56eed089d9eba7234ec34d198c2873d" -> "sha256:36d047a8b3b7168be060f49573afdaccf3707f61a757b874c4ed7115d8d13836" [label=""];
}

