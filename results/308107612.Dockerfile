[app/sources/308107612.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:a5c1db133b21fabd6689621c68a0e4fa4ddc54724c21ca261c4b39d8590366eb" [label="/bin/sh -c dpkg --add-architecture i386;     apt-get update;     apt-get install openssl libxml2:i386 -y" shape="box"];
  "sha256:cbf51795907a29d8cbf8b6972b0a33c8a0616d64bcbc13b14654474daa70d4c7" [label="mkdir{path=/wdpksrc}" shape="note"];
  "sha256:ad50e90c24e19943ed6db417ee5f84a24eb1738e5e6a7824c552f334bcba38e9" [label="sha256:ad50e90c24e19943ed6db417ee5f84a24eb1738e5e6a7824c552f334bcba38e9" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:a5c1db133b21fabd6689621c68a0e4fa4ddc54724c21ca261c4b39d8590366eb" [label=""];
  "sha256:a5c1db133b21fabd6689621c68a0e4fa4ddc54724c21ca261c4b39d8590366eb" -> "sha256:cbf51795907a29d8cbf8b6972b0a33c8a0616d64bcbc13b14654474daa70d4c7" [label=""];
  "sha256:cbf51795907a29d8cbf8b6972b0a33c8a0616d64bcbc13b14654474daa70d4c7" -> "sha256:ad50e90c24e19943ed6db417ee5f84a24eb1738e5e6a7824c552f334bcba38e9" [label=""];
}

