[app/sources/474741173.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:72b72aa3c94be079fe2c916cc578426432b11701807b56b0b9ed2b8f89a54af1" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     git     gcc     g++     wget     bash     default-jdk     automake     make     cmake     libsparsehash-dev     zlib1g-dev     bzip2     ant" shape="box"];
  "sha256:09b563c98e25663b67bdc859daffc268bcdd9e37e801d495548e6f03e4d0d062" [label="/bin/sh -c wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh     && bash Miniconda3-latest-Linux-x86_64.sh -b" shape="box"];
  "sha256:fcf275932f13974e573eebaee32d0b30b65fd732aa9ed09c13fc9bf17cfef245" [label="/bin/sh -c conda config --add channels defaults" shape="box"];
  "sha256:e2e1bbe244a00673244172f69450a830663ac94bba6c115663180bce8b113064" [label="/bin/sh -c conda config --add channels bioconda" shape="box"];
  "sha256:9e482577b2c7b83ab0a4784c253f56b5bab596aac78b8dc25d2574017e7446d8" [label="/bin/sh -c conda config --add channels conda-forge" shape="box"];
  "sha256:5cea1a642b6cd350f446ea9f1ad388304594658aee5229a0a2edcb1ce91d287d" [label="/bin/sh -c conda install --update-deps -y samtools" shape="box"];
  "sha256:0aba206fecd67369f0d3cfec0dcd13681410291568ea430b7b3b735a5a180f32" [label="/bin/sh -c conda install --update-deps -y numpy" shape="box"];
  "sha256:d4fd1b979193caee40cb356fe5b77ad2b44c54e99e1599c8175227d9c123414a" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a1dd21dd119464295db0988a9e0cd8b15cb549f0020e67143021917a3485420f" [label="/bin/sh -c git clone https://github.com/bonsai-team/matam.git" shape="box"];
  "sha256:d5b314a1046958b877d71ef375e07fd63d49d87c5d44d4c220addd73e9c4390c" [label="mkdir{path=/matam}" shape="note"];
  "sha256:87995106201d8f1149f06843e116767c57dc600bb2f1a6cc80894e06ab88d55d" [label="/bin/sh -c ./build.py" shape="box"];
  "sha256:7a71cd4ac70fe96b31e167070a782dcdae043dcb0a8e634f2e44bd74d08bc39f" [label="sha256:7a71cd4ac70fe96b31e167070a782dcdae043dcb0a8e634f2e44bd74d08bc39f" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:72b72aa3c94be079fe2c916cc578426432b11701807b56b0b9ed2b8f89a54af1" [label=""];
  "sha256:72b72aa3c94be079fe2c916cc578426432b11701807b56b0b9ed2b8f89a54af1" -> "sha256:09b563c98e25663b67bdc859daffc268bcdd9e37e801d495548e6f03e4d0d062" [label=""];
  "sha256:09b563c98e25663b67bdc859daffc268bcdd9e37e801d495548e6f03e4d0d062" -> "sha256:fcf275932f13974e573eebaee32d0b30b65fd732aa9ed09c13fc9bf17cfef245" [label=""];
  "sha256:fcf275932f13974e573eebaee32d0b30b65fd732aa9ed09c13fc9bf17cfef245" -> "sha256:e2e1bbe244a00673244172f69450a830663ac94bba6c115663180bce8b113064" [label=""];
  "sha256:e2e1bbe244a00673244172f69450a830663ac94bba6c115663180bce8b113064" -> "sha256:9e482577b2c7b83ab0a4784c253f56b5bab596aac78b8dc25d2574017e7446d8" [label=""];
  "sha256:9e482577b2c7b83ab0a4784c253f56b5bab596aac78b8dc25d2574017e7446d8" -> "sha256:5cea1a642b6cd350f446ea9f1ad388304594658aee5229a0a2edcb1ce91d287d" [label=""];
  "sha256:5cea1a642b6cd350f446ea9f1ad388304594658aee5229a0a2edcb1ce91d287d" -> "sha256:0aba206fecd67369f0d3cfec0dcd13681410291568ea430b7b3b735a5a180f32" [label=""];
  "sha256:0aba206fecd67369f0d3cfec0dcd13681410291568ea430b7b3b735a5a180f32" -> "sha256:d4fd1b979193caee40cb356fe5b77ad2b44c54e99e1599c8175227d9c123414a" [label=""];
  "sha256:d4fd1b979193caee40cb356fe5b77ad2b44c54e99e1599c8175227d9c123414a" -> "sha256:a1dd21dd119464295db0988a9e0cd8b15cb549f0020e67143021917a3485420f" [label=""];
  "sha256:a1dd21dd119464295db0988a9e0cd8b15cb549f0020e67143021917a3485420f" -> "sha256:d5b314a1046958b877d71ef375e07fd63d49d87c5d44d4c220addd73e9c4390c" [label=""];
  "sha256:d5b314a1046958b877d71ef375e07fd63d49d87c5d44d4c220addd73e9c4390c" -> "sha256:87995106201d8f1149f06843e116767c57dc600bb2f1a6cc80894e06ab88d55d" [label=""];
  "sha256:87995106201d8f1149f06843e116767c57dc600bb2f1a6cc80894e06ab88d55d" -> "sha256:7a71cd4ac70fe96b31e167070a782dcdae043dcb0a8e634f2e44bd74d08bc39f" [label=""];
}

