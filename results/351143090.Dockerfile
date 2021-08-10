[app/sources/351143090.Dockerfile]
digraph {
  "sha256:44f2bd05038b94b61b7dcdb89adb945d2ad909d1c08db11d81690c9d9f95033c" [label="docker-image://docker.io/numenta/nupic:latest" shape="ellipse"];
  "sha256:d078d11287397b1d2d5bf0e987d98be9337950a187f933b1b88f7ee7a91f9cab" [label="/bin/sh -c apt-get install -y default-jre-headless" shape="box"];
  "sha256:97591ee7c2548bb5e1597c31aedf04e096f915eeb4aa9b44736fe7802a095136" [label="/bin/sh -c mkdir -p /root/.dynamodb" shape="box"];
  "sha256:c75cc207302fdf4e4fbda748a48a3cb2c9c8fb3fda2addef45cfde955ce59a80" [label="mkdir{path=/root}" shape="note"];
  "sha256:4a86faf24971511000a63672a61ec64e6fbb38f98f9cabb5726e70d8ae7dcd03" [label="/bin/sh -c wget -qO- https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz | /bin/tar xz" shape="box"];
  "sha256:55aec8efae35aabc9e3e68bd610c431cb31b50010b525b04da677f6414681e45" [label="sha256:55aec8efae35aabc9e3e68bd610c431cb31b50010b525b04da677f6414681e45" shape="plaintext"];
  "sha256:44f2bd05038b94b61b7dcdb89adb945d2ad909d1c08db11d81690c9d9f95033c" -> "sha256:d078d11287397b1d2d5bf0e987d98be9337950a187f933b1b88f7ee7a91f9cab" [label=""];
  "sha256:d078d11287397b1d2d5bf0e987d98be9337950a187f933b1b88f7ee7a91f9cab" -> "sha256:97591ee7c2548bb5e1597c31aedf04e096f915eeb4aa9b44736fe7802a095136" [label=""];
  "sha256:97591ee7c2548bb5e1597c31aedf04e096f915eeb4aa9b44736fe7802a095136" -> "sha256:c75cc207302fdf4e4fbda748a48a3cb2c9c8fb3fda2addef45cfde955ce59a80" [label=""];
  "sha256:c75cc207302fdf4e4fbda748a48a3cb2c9c8fb3fda2addef45cfde955ce59a80" -> "sha256:4a86faf24971511000a63672a61ec64e6fbb38f98f9cabb5726e70d8ae7dcd03" [label=""];
  "sha256:4a86faf24971511000a63672a61ec64e6fbb38f98f9cabb5726e70d8ae7dcd03" -> "sha256:55aec8efae35aabc9e3e68bd610c431cb31b50010b525b04da677f6414681e45" [label=""];
}

