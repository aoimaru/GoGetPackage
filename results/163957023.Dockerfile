[app/sources/163957023.Dockerfile]
digraph {
  "sha256:45ef94b0625e2256426b394af7de0b6705ab9107e114d83dd2269ad82419dce2" [label="docker-image://docker.io/library/alpine:latest@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:b796a010cda46c123689f9ef7e4b5e43580df821d01c3d7e03a0a58bece92193" [label="local://context" shape="ellipse"];
  "sha256:0fd2b0690ce1cb07805d9f0822e309254bf4950e7c6679654e91445eab52c458" [label="copy{src=/etcd, dest=/usr/local/bin/}" shape="note"];
  "sha256:49d73cec54116c6ae7cea341630597695e9c68cfc9d0a4e6ae69303110c72070" [label="copy{src=/etcdctl, dest=/usr/local/bin/}" shape="note"];
  "sha256:d702de628a0a418eab05bf21422acf2bd60fce18712ee16cff049413339a95d4" [label="/bin/sh -c mkdir -p /var/etcd/" shape="box"];
  "sha256:70cf61d52fed79eb2c988bd1121fb4b5234105ffb2300da5aaa527fbbacae8d0" [label="/bin/sh -c mkdir -p /var/lib/etcd/" shape="box"];
  "sha256:86a8a61bb526e0dd38ea7de1f5d8988e8c298b4bc07f564b84b22c67c5c866d3" [label="/bin/sh -c echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf" shape="box"];
  "sha256:7759e13d246162af5c73421a29dc59d89d3258fa67cd1e4a524359ed44345204" [label="sha256:7759e13d246162af5c73421a29dc59d89d3258fa67cd1e4a524359ed44345204" shape="plaintext"];
  "sha256:45ef94b0625e2256426b394af7de0b6705ab9107e114d83dd2269ad82419dce2" -> "sha256:0fd2b0690ce1cb07805d9f0822e309254bf4950e7c6679654e91445eab52c458" [label=""];
  "sha256:b796a010cda46c123689f9ef7e4b5e43580df821d01c3d7e03a0a58bece92193" -> "sha256:0fd2b0690ce1cb07805d9f0822e309254bf4950e7c6679654e91445eab52c458" [label=""];
  "sha256:0fd2b0690ce1cb07805d9f0822e309254bf4950e7c6679654e91445eab52c458" -> "sha256:49d73cec54116c6ae7cea341630597695e9c68cfc9d0a4e6ae69303110c72070" [label=""];
  "sha256:b796a010cda46c123689f9ef7e4b5e43580df821d01c3d7e03a0a58bece92193" -> "sha256:49d73cec54116c6ae7cea341630597695e9c68cfc9d0a4e6ae69303110c72070" [label=""];
  "sha256:49d73cec54116c6ae7cea341630597695e9c68cfc9d0a4e6ae69303110c72070" -> "sha256:d702de628a0a418eab05bf21422acf2bd60fce18712ee16cff049413339a95d4" [label=""];
  "sha256:d702de628a0a418eab05bf21422acf2bd60fce18712ee16cff049413339a95d4" -> "sha256:70cf61d52fed79eb2c988bd1121fb4b5234105ffb2300da5aaa527fbbacae8d0" [label=""];
  "sha256:70cf61d52fed79eb2c988bd1121fb4b5234105ffb2300da5aaa527fbbacae8d0" -> "sha256:86a8a61bb526e0dd38ea7de1f5d8988e8c298b4bc07f564b84b22c67c5c866d3" [label=""];
  "sha256:86a8a61bb526e0dd38ea7de1f5d8988e8c298b4bc07f564b84b22c67c5c866d3" -> "sha256:7759e13d246162af5c73421a29dc59d89d3258fa67cd1e4a524359ed44345204" [label=""];
}

