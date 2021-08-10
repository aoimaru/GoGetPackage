[app/sources/284517841.Dockerfile]
digraph {
  "sha256:af4543f66fdf160297263c6edfe8d4f1027c3a74b366b2f0bb18e85200dee347" [label="docker-image://docker.io/library/ubuntu:xenial@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:d85bda639d67decc9f151ee59590beeb6210034ce5cdf91c61cadec08113d726" [label="/bin/sh -c apt-get update && apt-get install -y netbase nfs-common=1:1.2.8-9ubuntu12 glusterfs-client=3.7.6-1ubuntu1" shape="box"];
  "sha256:63375d9a76cd8acd6089a94c521de87698bd32b8d28137069fcde593b286e6df" [label="sha256:63375d9a76cd8acd6089a94c521de87698bd32b8d28137069fcde593b286e6df" shape="plaintext"];
  "sha256:af4543f66fdf160297263c6edfe8d4f1027c3a74b366b2f0bb18e85200dee347" -> "sha256:d85bda639d67decc9f151ee59590beeb6210034ce5cdf91c61cadec08113d726" [label=""];
  "sha256:d85bda639d67decc9f151ee59590beeb6210034ce5cdf91c61cadec08113d726" -> "sha256:63375d9a76cd8acd6089a94c521de87698bd32b8d28137069fcde593b286e6df" [label=""];
}

