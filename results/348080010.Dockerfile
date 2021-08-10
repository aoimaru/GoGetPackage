[app/sources/348080010.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:c841fd0cc73d9e0eba5cfbeea6489ae3e813b42d57006aba29b1b9cca3022ec0" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:9d6f2c6058b50d71bbfe156a645eb7407c9f02e162bd07b3c6114dfabf2fb6da" [label="/bin/sh -c apt-get install -yq build-essential libpcap-dev libncurses-dev --no-install-recommends" shape="box"];
  "sha256:a5840e21c6eeb861ca621a2b8a4b61d66b5e312ce1a0fa07174aca53959e1282" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:3a0dcb6017c3c9ce97114a0924b3764710bd6be3eaf8b4052a7121acf6b54d05" [label="/bin/sh -c wget --no-check-certificate http://www.ex-parrot.com/pdw/$PROG/download/$PROG-$VERS.$EXT && tar -xzf $PROG-$VERS.$EXT" shape="box"];
  "sha256:8675a62a928befac5831bcc9f33b805d3e7047954833716c8a507c38e892104d" [label="mkdir{path=/home/opennsm/iftop-0.9}" shape="note"];
  "sha256:69f3c54a1ec853a193ec051a715cd186d1d62494dc7ad0f64e9b15096b126259" [label="/bin/sh -c make" shape="box"];
  "sha256:4c37fa1cd6fb2d393aa9c7bfff0c8e398d851ac5b3d11cdbef3e4baeec1557a1" [label="/bin/sh -c make install" shape="box"];
  "sha256:29dd8f4d1c3af49e0a40736bf78d55d69e773a8f6686429f6a48d42a83a4a670" [label="/bin/sh -c chmod u+s /usr/local/sbin/$PROG" shape="box"];
  "sha256:72cf09bb6bcf24c7155d0356c9a8163903b653ad49aad2267d6a87ee76d19310" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:b61bcea8964f2fcf047b246d1ed5cde46aa50b5190c269c8f273f3d1b497e007" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:c6d93e41fd707e6cdf6ad5c16315f611223dc36c56bd4b092fe94d12c4b63165" [label="sha256:c6d93e41fd707e6cdf6ad5c16315f611223dc36c56bd4b092fe94d12c4b63165" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:c841fd0cc73d9e0eba5cfbeea6489ae3e813b42d57006aba29b1b9cca3022ec0" [label=""];
  "sha256:c841fd0cc73d9e0eba5cfbeea6489ae3e813b42d57006aba29b1b9cca3022ec0" -> "sha256:9d6f2c6058b50d71bbfe156a645eb7407c9f02e162bd07b3c6114dfabf2fb6da" [label=""];
  "sha256:9d6f2c6058b50d71bbfe156a645eb7407c9f02e162bd07b3c6114dfabf2fb6da" -> "sha256:a5840e21c6eeb861ca621a2b8a4b61d66b5e312ce1a0fa07174aca53959e1282" [label=""];
  "sha256:a5840e21c6eeb861ca621a2b8a4b61d66b5e312ce1a0fa07174aca53959e1282" -> "sha256:3a0dcb6017c3c9ce97114a0924b3764710bd6be3eaf8b4052a7121acf6b54d05" [label=""];
  "sha256:3a0dcb6017c3c9ce97114a0924b3764710bd6be3eaf8b4052a7121acf6b54d05" -> "sha256:8675a62a928befac5831bcc9f33b805d3e7047954833716c8a507c38e892104d" [label=""];
  "sha256:8675a62a928befac5831bcc9f33b805d3e7047954833716c8a507c38e892104d" -> "sha256:69f3c54a1ec853a193ec051a715cd186d1d62494dc7ad0f64e9b15096b126259" [label=""];
  "sha256:69f3c54a1ec853a193ec051a715cd186d1d62494dc7ad0f64e9b15096b126259" -> "sha256:4c37fa1cd6fb2d393aa9c7bfff0c8e398d851ac5b3d11cdbef3e4baeec1557a1" [label=""];
  "sha256:4c37fa1cd6fb2d393aa9c7bfff0c8e398d851ac5b3d11cdbef3e4baeec1557a1" -> "sha256:29dd8f4d1c3af49e0a40736bf78d55d69e773a8f6686429f6a48d42a83a4a670" [label=""];
  "sha256:29dd8f4d1c3af49e0a40736bf78d55d69e773a8f6686429f6a48d42a83a4a670" -> "sha256:72cf09bb6bcf24c7155d0356c9a8163903b653ad49aad2267d6a87ee76d19310" [label=""];
  "sha256:72cf09bb6bcf24c7155d0356c9a8163903b653ad49aad2267d6a87ee76d19310" -> "sha256:b61bcea8964f2fcf047b246d1ed5cde46aa50b5190c269c8f273f3d1b497e007" [label=""];
  "sha256:b61bcea8964f2fcf047b246d1ed5cde46aa50b5190c269c8f273f3d1b497e007" -> "sha256:c6d93e41fd707e6cdf6ad5c16315f611223dc36c56bd4b092fe94d12c4b63165" [label=""];
}

