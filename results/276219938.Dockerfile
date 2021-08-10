[app/sources/276219938.Dockerfile]
digraph {
  "sha256:4bd114487b8e9c741d858a72cc114df8db9e0a637ac8dc4697c622b090e85af3" [label="docker-image://docker.io/library/gcc:latest" shape="ellipse"];
  "sha256:97c78c9ea522d391ae17d9ac3383f0e799a502e9714a91f5cfd93fcdae8eb920" [label="/bin/sh -c apt-get update &&       apt-get install -y       gsl-bin       libgsl0-dbg       libgsl0-dev       libgsl0ldbl" shape="box"];
  "sha256:85f8a2c7ea05d9a0a61732d6c4420018d952665741fb3732898e8becf7d45a30" [label="sha256:85f8a2c7ea05d9a0a61732d6c4420018d952665741fb3732898e8becf7d45a30" shape="plaintext"];
  "sha256:4bd114487b8e9c741d858a72cc114df8db9e0a637ac8dc4697c622b090e85af3" -> "sha256:97c78c9ea522d391ae17d9ac3383f0e799a502e9714a91f5cfd93fcdae8eb920" [label=""];
  "sha256:97c78c9ea522d391ae17d9ac3383f0e799a502e9714a91f5cfd93fcdae8eb920" -> "sha256:85f8a2c7ea05d9a0a61732d6c4420018d952665741fb3732898e8becf7d45a30" [label=""];
}

