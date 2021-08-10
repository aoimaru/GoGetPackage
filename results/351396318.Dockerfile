[app/sources/351396318.Dockerfile]
digraph {
  "sha256:72b956fbb1fd454a6ba7d7a42ac1d378b8034afa417cf9a3aa4fb794ffa3cd2e" [label="docker-image://docker.io/picoded/zip-cloner-base:latest" shape="ellipse"];
  "sha256:7f403f9892062c2c6d11c36c72f56d6a68a51ed71df36982962e161fa3f273b2" [label="/bin/sh -c apt-get update && \tapt-get install -y default-jre && \tapt-get clean;" shape="box"];
  "sha256:9b93ea67be51a1142fae15f3dba480daab61ea61e72c93a80bca015e87037e99" [label="sha256:9b93ea67be51a1142fae15f3dba480daab61ea61e72c93a80bca015e87037e99" shape="plaintext"];
  "sha256:72b956fbb1fd454a6ba7d7a42ac1d378b8034afa417cf9a3aa4fb794ffa3cd2e" -> "sha256:7f403f9892062c2c6d11c36c72f56d6a68a51ed71df36982962e161fa3f273b2" [label=""];
  "sha256:7f403f9892062c2c6d11c36c72f56d6a68a51ed71df36982962e161fa3f273b2" -> "sha256:9b93ea67be51a1142fae15f3dba480daab61ea61e72c93a80bca015e87037e99" [label=""];
}

