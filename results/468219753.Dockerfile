[app/sources/468219753.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:1526aae73218280200fcc6708b2c216f505018bc2c74af568ff71b157f138195" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:1fbaeca63dd12902c377ac44055eb1b8631c908511b4e25bda35082b0ae9f954" [label="/bin/sh -c apt-get install -y  wget bzip2" shape="box"];
  "sha256:23d7d069ca28326c2d1eb5f3dbc18eca1f6bf1c7577c49bb79de6c5acb1111a6" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:1754ab80134d3ad347f8e61f7f43881d39eed036d4f75728db934488740f0e6c" [label="/bin/sh -c if [ ! -d /app/anaconda ]; then         wget -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda-latest-Linux-x86_64.sh         -O /app/anaconda.sh &&         bash /app/anaconda.sh -b -p /app/anaconda &&         rm -rf /app/anaconda.sh ; fi" shape="box"];
  "sha256:5e5642a2ea9160d04427536e1549f31cbac5b83f5871e8317287d57958ead3f6" [label="/bin/sh -c apt-get clean &&     apt-get autoclean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:d0a9a04874feaa642c38e75f4d6ef02b212b0fd2ca7887e654d916f6958aa97c" [label="/bin/sh -c conda config --add channels defaults" shape="box"];
  "sha256:4dad9f6704bdf83a56c07d5cc031c6b2a252f0507d4a27693dfa7f076f36bde2" [label="/bin/sh -c conda config --add channels bioconda" shape="box"];
  "sha256:1de0adcfc0c27b48ff999854478ffb407466f1f803c71b27fbd4445eb3413cd4" [label="/bin/sh -c conda config --add channels conda-forge" shape="box"];
  "sha256:0d6067e77adcde7639a1df29c5e41c9b2905359b06695537bc0201dd81afd58f" [label="/bin/sh -c conda install -y libgd=2.2.4 python=3.6.0 biopython=1.69 ete3=3.0.0b35  perl-list-moreutils perl-params-validate perl-clone circos=0.69 perl-bioperl blast=2.2.31  hmmer=3.1b2  bwa=0.7.12 samtools=1.3.1 infernal=1.1.1 tbl2asn openjdk ;     conda clean -y -a" shape="box"];
  "sha256:53288673fb16847fadd0d8b1ed1301f79971cbe5154a7f24900a454f7ad24ece" [label="/bin/sh -c mkdir /mitoz_tmp && cd /mitoz_tmp && wget -c https://raw.githubusercontent.com/linzhi2013/MitoZ/master/version_2.4-alpha/release_MitoZ_v2.4-alpha.tar.bz2 &&  tar -jxvf release_MitoZ_v2.4-alpha.tar.bz2  && mv release_MitoZ_v2.4-alpha /app && rm -rf /mitoz_tmp" shape="box"];
  "sha256:53b92f067fc15e22f0d17798258660666ccd69d83db8d3e353778d26f8e6a041" [label="/bin/sh -c cd / ;  python3 -c 'from ete3 import NCBITaxa; ncbi = NCBITaxa()' ; rm -rf taxdump.tar.gz" shape="box"];
  "sha256:9e5aa5939b5f8e6c8d660f09958a715653912b0a8dd3d388b5fa82e00c79e599" [label="mkdir{path=/project}" shape="note"];
  "sha256:668a0945dd73915c89639f584beb55f2288a888fc0222b234981107d5a9d512f" [label="sha256:668a0945dd73915c89639f584beb55f2288a888fc0222b234981107d5a9d512f" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:1526aae73218280200fcc6708b2c216f505018bc2c74af568ff71b157f138195" [label=""];
  "sha256:1526aae73218280200fcc6708b2c216f505018bc2c74af568ff71b157f138195" -> "sha256:1fbaeca63dd12902c377ac44055eb1b8631c908511b4e25bda35082b0ae9f954" [label=""];
  "sha256:1fbaeca63dd12902c377ac44055eb1b8631c908511b4e25bda35082b0ae9f954" -> "sha256:23d7d069ca28326c2d1eb5f3dbc18eca1f6bf1c7577c49bb79de6c5acb1111a6" [label=""];
  "sha256:23d7d069ca28326c2d1eb5f3dbc18eca1f6bf1c7577c49bb79de6c5acb1111a6" -> "sha256:1754ab80134d3ad347f8e61f7f43881d39eed036d4f75728db934488740f0e6c" [label=""];
  "sha256:1754ab80134d3ad347f8e61f7f43881d39eed036d4f75728db934488740f0e6c" -> "sha256:5e5642a2ea9160d04427536e1549f31cbac5b83f5871e8317287d57958ead3f6" [label=""];
  "sha256:5e5642a2ea9160d04427536e1549f31cbac5b83f5871e8317287d57958ead3f6" -> "sha256:d0a9a04874feaa642c38e75f4d6ef02b212b0fd2ca7887e654d916f6958aa97c" [label=""];
  "sha256:d0a9a04874feaa642c38e75f4d6ef02b212b0fd2ca7887e654d916f6958aa97c" -> "sha256:4dad9f6704bdf83a56c07d5cc031c6b2a252f0507d4a27693dfa7f076f36bde2" [label=""];
  "sha256:4dad9f6704bdf83a56c07d5cc031c6b2a252f0507d4a27693dfa7f076f36bde2" -> "sha256:1de0adcfc0c27b48ff999854478ffb407466f1f803c71b27fbd4445eb3413cd4" [label=""];
  "sha256:1de0adcfc0c27b48ff999854478ffb407466f1f803c71b27fbd4445eb3413cd4" -> "sha256:0d6067e77adcde7639a1df29c5e41c9b2905359b06695537bc0201dd81afd58f" [label=""];
  "sha256:0d6067e77adcde7639a1df29c5e41c9b2905359b06695537bc0201dd81afd58f" -> "sha256:53288673fb16847fadd0d8b1ed1301f79971cbe5154a7f24900a454f7ad24ece" [label=""];
  "sha256:53288673fb16847fadd0d8b1ed1301f79971cbe5154a7f24900a454f7ad24ece" -> "sha256:53b92f067fc15e22f0d17798258660666ccd69d83db8d3e353778d26f8e6a041" [label=""];
  "sha256:53b92f067fc15e22f0d17798258660666ccd69d83db8d3e353778d26f8e6a041" -> "sha256:9e5aa5939b5f8e6c8d660f09958a715653912b0a8dd3d388b5fa82e00c79e599" [label=""];
  "sha256:9e5aa5939b5f8e6c8d660f09958a715653912b0a8dd3d388b5fa82e00c79e599" -> "sha256:668a0945dd73915c89639f584beb55f2288a888fc0222b234981107d5a9d512f" [label=""];
}

