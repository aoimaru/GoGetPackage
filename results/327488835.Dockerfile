[app/sources/327488835.Dockerfile]
digraph {
  "sha256:bbb5434fa58e89c6b5fe2aa5325cdf970da8c6409fdea28cf8fb477c709b450f" [label="docker-image://docker.io/tudorg/xgo-base:latest" shape="ellipse"];
  "sha256:fafe8130246092f912787460c9dc13a76ae8c84e2cf2011f621a0cf7071e0c3b" [label="/bin/sh -c export ROOT_DIST=\"https://storage.googleapis.com/golang/go1.9.4.linux-amd64.tar.gz\" &&   export ROOT_DIST_SHA1=\"ed1bd37c356338a5a04923c183931a96687f202e\" &&     $BOOTSTRAP_PURE" shape="box"];
  "sha256:7baa65e8b4730be17d7dc3d0a34dee7dc8e1c95b8b007db2bf9a666969c21b7c" [label="sha256:7baa65e8b4730be17d7dc3d0a34dee7dc8e1c95b8b007db2bf9a666969c21b7c" shape="plaintext"];
  "sha256:bbb5434fa58e89c6b5fe2aa5325cdf970da8c6409fdea28cf8fb477c709b450f" -> "sha256:fafe8130246092f912787460c9dc13a76ae8c84e2cf2011f621a0cf7071e0c3b" [label=""];
  "sha256:fafe8130246092f912787460c9dc13a76ae8c84e2cf2011f621a0cf7071e0c3b" -> "sha256:7baa65e8b4730be17d7dc3d0a34dee7dc8e1c95b8b007db2bf9a666969c21b7c" [label=""];
}

