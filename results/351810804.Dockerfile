[app/sources/351810804.Dockerfile]
digraph {
  "sha256:e3e082a6488e75c2967ef6297dcc4d945f1d4f4063306106cefa347f0b5948aa" [label="docker-image://quay.io/ucsc_cgl/cmake:3.9.1@sha256:8965d4c407282f7b260ccc6b049324e4ec28d4e401b096b9b2a5dbffc7454e55" shape="ellipse"];
  "sha256:11d1afa98fd8563cd1592872412efb62c3a99f4537f83e9404fa307d61f00255" [label="/bin/sh -c apt-get update  && apt-get install -y \t\tbuild-essential \t\tliblzma-dev \t\tlibbz2-dev \t\tlibz-dev \t\tgit \t\twget \t\tpython" shape="box"];
  "sha256:88a83321aff925d0477f7f760f8d871126e07b1581fa08a926cd382bfce6c95f" [label="/bin/sh -c git clone https://github.com/bioturing/hera.git" shape="box"];
  "sha256:4f1601bc902f8595e7e9518665ea0fec57a2e53efa4f40070e3e03b6730a5c9b" [label="mkdir{path=/hera}" shape="note"];
  "sha256:b4ce3d31c307475f14b4e58828063040b16bc6f0cf78e7e80c39ba04dc031b1d" [label="/bin/sh -c git checkout tags/hera-v1.1" shape="box"];
  "sha256:ce9f2bad52deae39260e9dc21fcbd257d7a77b62c4f2270dcf456008860c5992" [label="/bin/sh -c chmod +x build.sh" shape="box"];
  "sha256:e0fc6b0f17e0830380ef45a6b6dae449ff514c6ed58f16d557f72721643072b1" [label="/bin/sh -c ./build.sh" shape="box"];
  "sha256:f7144724667a23f4f5d2da3bfa43d3e54970964553635712a35d6cfc40dada8b" [label="/bin/sh -c awk 'NR==2 {print \"import os\"} 1' /hera/build/hera_build > /hera/build/foo" shape="box"];
  "sha256:709e65087e4bc30388def6483d626cb9fe63311ba71f4d63bd8d3e2a7a30e146" [label="/bin/sh -c mv /hera/build/foo /hera/build/hera_build; chmod +x /hera/build/hera_build" shape="box"];
  "sha256:6f9a32233d2543176cd1c5127d136c587e5e1abd59f31136c4c679a936042a35" [label="/bin/sh -c mkdir -p /data" shape="box"];
  "sha256:8ca0e2bc1238348ed78aed00acf054b951d59847d2c5ee5807f6340f4dd91da8" [label="mkdir{path=/data}" shape="note"];
  "sha256:06b60eab20a0d19b2f994c6cb4590bc386acf7ed6e54f8ab25b98a16a2349de7" [label="sha256:06b60eab20a0d19b2f994c6cb4590bc386acf7ed6e54f8ab25b98a16a2349de7" shape="plaintext"];
  "sha256:e3e082a6488e75c2967ef6297dcc4d945f1d4f4063306106cefa347f0b5948aa" -> "sha256:11d1afa98fd8563cd1592872412efb62c3a99f4537f83e9404fa307d61f00255" [label=""];
  "sha256:11d1afa98fd8563cd1592872412efb62c3a99f4537f83e9404fa307d61f00255" -> "sha256:88a83321aff925d0477f7f760f8d871126e07b1581fa08a926cd382bfce6c95f" [label=""];
  "sha256:88a83321aff925d0477f7f760f8d871126e07b1581fa08a926cd382bfce6c95f" -> "sha256:4f1601bc902f8595e7e9518665ea0fec57a2e53efa4f40070e3e03b6730a5c9b" [label=""];
  "sha256:4f1601bc902f8595e7e9518665ea0fec57a2e53efa4f40070e3e03b6730a5c9b" -> "sha256:b4ce3d31c307475f14b4e58828063040b16bc6f0cf78e7e80c39ba04dc031b1d" [label=""];
  "sha256:b4ce3d31c307475f14b4e58828063040b16bc6f0cf78e7e80c39ba04dc031b1d" -> "sha256:ce9f2bad52deae39260e9dc21fcbd257d7a77b62c4f2270dcf456008860c5992" [label=""];
  "sha256:ce9f2bad52deae39260e9dc21fcbd257d7a77b62c4f2270dcf456008860c5992" -> "sha256:e0fc6b0f17e0830380ef45a6b6dae449ff514c6ed58f16d557f72721643072b1" [label=""];
  "sha256:e0fc6b0f17e0830380ef45a6b6dae449ff514c6ed58f16d557f72721643072b1" -> "sha256:f7144724667a23f4f5d2da3bfa43d3e54970964553635712a35d6cfc40dada8b" [label=""];
  "sha256:f7144724667a23f4f5d2da3bfa43d3e54970964553635712a35d6cfc40dada8b" -> "sha256:709e65087e4bc30388def6483d626cb9fe63311ba71f4d63bd8d3e2a7a30e146" [label=""];
  "sha256:709e65087e4bc30388def6483d626cb9fe63311ba71f4d63bd8d3e2a7a30e146" -> "sha256:6f9a32233d2543176cd1c5127d136c587e5e1abd59f31136c4c679a936042a35" [label=""];
  "sha256:6f9a32233d2543176cd1c5127d136c587e5e1abd59f31136c4c679a936042a35" -> "sha256:8ca0e2bc1238348ed78aed00acf054b951d59847d2c5ee5807f6340f4dd91da8" [label=""];
  "sha256:8ca0e2bc1238348ed78aed00acf054b951d59847d2c5ee5807f6340f4dd91da8" -> "sha256:06b60eab20a0d19b2f994c6cb4590bc386acf7ed6e54f8ab25b98a16a2349de7" [label=""];
}

