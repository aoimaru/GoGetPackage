[app/sources/231857178.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:653f1b0d379491dc5ef6f59e80f087059bd2bf29c6a1184a312ef83cde0472f8" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y &&    DEBIAN_FRONTEND=noninteractive apt-get install -y sudo git make build-essential mummer last-align python-numpy python-matplotlib time bwa samtools software-properties-common gnuplot    zlib1g-dev mc wget libatlas-base-dev python-pip python-pandas cmake default-jre" shape="box"];
  "sha256:c65e4350399ac8ed05c3c3e625978e67df47dfd217805750b1ca773d76e9a4bf" [label="mkdir{path=/opt}" shape="note"];
  "sha256:40ba87fb7518c917c61a086a9cad4964e99dd179cada4cac26c037d46439720a" [label="/bin/sh -c git clone https://github.com/marbl/canu.git &&    cd canu/src && make -j && cd -" shape="box"];
  "sha256:c30919b7b08bf2764ae9b2d91df57064deb675e42c657755601f226143b7be50" [label="/bin/sh -c git clone https://github.com/lh3/minimap2 && (cd minimap2 && make) &&    cp minimap2/minimap2 /usr/local/bin && rm -r minimap2" shape="box"];
  "sha256:cd8a8683ce0993bb71cb6953b419957ce86c768dc149a454affa73e7c74bdfe7" [label="/bin/sh -c git clone https://github.com/lh3/miniasm && (cd miniasm && make) &&    cp miniasm/miniasm /usr/local/bin/ && rm -r miniasm" shape="box"];
  "sha256:7db12ea0488c391ef4d6083fc9fa30ce1e691aaaa5e7aac9492031599f1c18b4" [label="/bin/sh -c git clone https://github.com/timmassingham/simNGS.git && (cd simNGS/src && make -f Makefile.linux) &&    cp simNGS/bin/* /usr/local/bin/ && rm -r simNGS" shape="box"];
  "sha256:4a10d4c077ddf2abb4efff2be4f819f22f3a680df177fb179ed6f8f38310c10b" [label="mkdir{path=/home}" shape="note"];
  "sha256:46392240a7dcdf5bfca36f346b6c3e1a55543d132ee415f42567b6cc3227d585" [label="/bin/sh -c DUMMY=${CACHEBUST} git clone https://github.com/nanoporetech/ont-assembly-polish.git" shape="box"];
  "sha256:5bce22d0adaffb8e2f6bd4c3aa49b8e0ea49e08a4ea90960d079e9a59465bafb" [label="mkdir{path=/home/ont-assembly-polish}" shape="note"];
  "sha256:7e96934c1a9be836792f9a8b190111d30a99f72fa2b7bcf7ec25eedc75a57e8b" [label="sha256:7e96934c1a9be836792f9a8b190111d30a99f72fa2b7bcf7ec25eedc75a57e8b" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:653f1b0d379491dc5ef6f59e80f087059bd2bf29c6a1184a312ef83cde0472f8" [label=""];
  "sha256:653f1b0d379491dc5ef6f59e80f087059bd2bf29c6a1184a312ef83cde0472f8" -> "sha256:c65e4350399ac8ed05c3c3e625978e67df47dfd217805750b1ca773d76e9a4bf" [label=""];
  "sha256:c65e4350399ac8ed05c3c3e625978e67df47dfd217805750b1ca773d76e9a4bf" -> "sha256:40ba87fb7518c917c61a086a9cad4964e99dd179cada4cac26c037d46439720a" [label=""];
  "sha256:40ba87fb7518c917c61a086a9cad4964e99dd179cada4cac26c037d46439720a" -> "sha256:c30919b7b08bf2764ae9b2d91df57064deb675e42c657755601f226143b7be50" [label=""];
  "sha256:c30919b7b08bf2764ae9b2d91df57064deb675e42c657755601f226143b7be50" -> "sha256:cd8a8683ce0993bb71cb6953b419957ce86c768dc149a454affa73e7c74bdfe7" [label=""];
  "sha256:cd8a8683ce0993bb71cb6953b419957ce86c768dc149a454affa73e7c74bdfe7" -> "sha256:7db12ea0488c391ef4d6083fc9fa30ce1e691aaaa5e7aac9492031599f1c18b4" [label=""];
  "sha256:7db12ea0488c391ef4d6083fc9fa30ce1e691aaaa5e7aac9492031599f1c18b4" -> "sha256:4a10d4c077ddf2abb4efff2be4f819f22f3a680df177fb179ed6f8f38310c10b" [label=""];
  "sha256:4a10d4c077ddf2abb4efff2be4f819f22f3a680df177fb179ed6f8f38310c10b" -> "sha256:46392240a7dcdf5bfca36f346b6c3e1a55543d132ee415f42567b6cc3227d585" [label=""];
  "sha256:46392240a7dcdf5bfca36f346b6c3e1a55543d132ee415f42567b6cc3227d585" -> "sha256:5bce22d0adaffb8e2f6bd4c3aa49b8e0ea49e08a4ea90960d079e9a59465bafb" [label=""];
  "sha256:5bce22d0adaffb8e2f6bd4c3aa49b8e0ea49e08a4ea90960d079e9a59465bafb" -> "sha256:7e96934c1a9be836792f9a8b190111d30a99f72fa2b7bcf7ec25eedc75a57e8b" [label=""];
}

