[app/sources/157450718.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:f6acf9c4e4a1c5c97815414a23f09060fcc61dab176b6a25344dc246aad58575" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     cmake     wget     unzip     git     python3     python3-pip     python3-biopython     python3-biopython-sql     python3-pysam     zlib1g-dev     libboost1.65-all-dev     curl     liblzma-dev     libjemalloc-dev     libjemalloc1     libghc-bzlib-dev     samtools ;     pip3 install gffutils" shape="box"];
  "sha256:4d1ef239bfa6711b9cd020f13c4e16b11489c84082feff959fd64abd95ca3c8a" [label="/bin/sh -c git clone --recursive https://github.com/AlgoLab/galig.git ;     cd galig ;     make prerequisites ;     make" shape="box"];
  "sha256:41f940cc0cf36f33966a9630ef3a3b41a5d916fa03dbe0afeed9987a5c0674e9" [label="sha256:41f940cc0cf36f33966a9630ef3a3b41a5d916fa03dbe0afeed9987a5c0674e9" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:f6acf9c4e4a1c5c97815414a23f09060fcc61dab176b6a25344dc246aad58575" [label=""];
  "sha256:f6acf9c4e4a1c5c97815414a23f09060fcc61dab176b6a25344dc246aad58575" -> "sha256:4d1ef239bfa6711b9cd020f13c4e16b11489c84082feff959fd64abd95ca3c8a" [label=""];
  "sha256:4d1ef239bfa6711b9cd020f13c4e16b11489c84082feff959fd64abd95ca3c8a" -> "sha256:41f940cc0cf36f33966a9630ef3a3b41a5d916fa03dbe0afeed9987a5c0674e9" [label=""];
}

