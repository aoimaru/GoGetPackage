[app/sources/325089798.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:bec88230360462394ad6d659c8cc2bd9f4683c31cdeeff00270b94937da391d0" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     gcc libc6-dev ca-certificates     gcc-powerpc64-linux-gnu libc6-dev-ppc64-cross     binfmt-support qemu-user-static qemu-system-ppc" shape="box"];
  "sha256:ab96c4bbf8f8adf71d441ba4048110a03e002cad912c1fccc85b5a6bd1873e06" [label="sha256:ab96c4bbf8f8adf71d441ba4048110a03e002cad912c1fccc85b5a6bd1873e06" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:bec88230360462394ad6d659c8cc2bd9f4683c31cdeeff00270b94937da391d0" [label=""];
  "sha256:bec88230360462394ad6d659c8cc2bd9f4683c31cdeeff00270b94937da391d0" -> "sha256:ab96c4bbf8f8adf71d441ba4048110a03e002cad912c1fccc85b5a6bd1873e06" [label=""];
}

