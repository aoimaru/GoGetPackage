[app/sources/361391818.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:ceb5f0cfc820184a4dfb8a70418d08bb39c6a9ecdcc33faf014e1c38d64ec4b7" [label="local://context" shape="ellipse"];
  "sha256:e2664ab1001673984567c4c20adc51a017137c84c678daf645ccc464bcf73db4" [label="/bin/sh -c apt-get update && apt-get install -y   build-essential   git   gcc-8   g++-8   python3   sudo  && rm -rf /var/lib/apt/lists/*  && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8  && update-alternatives --install /usr/bin/python python /usr/bin/python3 10  && rm -rf /usr/local/lib/python3.6" shape="box"];
  "sha256:72a74059c07338fdf789a41a84a16739f18771727d727dd8f721ce8b6f204ffb" [label="mkdir{path=/src}" shape="note"];
  "sha256:67a86b4f319dcdf5974456278f6fa72cba872e2f24b7917ff132a6ba101ac797" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:3ad67442123996522eedfbcb7940b456df4e6f385f78383394c5412f044d8ae4" [label="/bin/sh -c git submodule update --init --recursive  && support/install_all_configs PREFIX=/usr/local" shape="box"];
  "sha256:b3eb88e028d06da37580014b568a3cf822573182c010e084c60d3ea8121fd1b4" [label="copy{src=/usr/local/lib/libmesh*, dest=/usr/local/lib/}" shape="note"];
  "sha256:67f6c4d55b1cddb6041295df769473d572c39c9033e984e1beaa80d54dd5a5ed" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:4efd5a0377d3e94365c48aa96aaff9c4d6296fec7b7f96210fea26afcfc376d1" [label="sha256:4efd5a0377d3e94365c48aa96aaff9c4d6296fec7b7f96210fea26afcfc376d1" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:e2664ab1001673984567c4c20adc51a017137c84c678daf645ccc464bcf73db4" [label=""];
  "sha256:e2664ab1001673984567c4c20adc51a017137c84c678daf645ccc464bcf73db4" -> "sha256:72a74059c07338fdf789a41a84a16739f18771727d727dd8f721ce8b6f204ffb" [label=""];
  "sha256:72a74059c07338fdf789a41a84a16739f18771727d727dd8f721ce8b6f204ffb" -> "sha256:67a86b4f319dcdf5974456278f6fa72cba872e2f24b7917ff132a6ba101ac797" [label=""];
  "sha256:ceb5f0cfc820184a4dfb8a70418d08bb39c6a9ecdcc33faf014e1c38d64ec4b7" -> "sha256:67a86b4f319dcdf5974456278f6fa72cba872e2f24b7917ff132a6ba101ac797" [label=""];
  "sha256:67a86b4f319dcdf5974456278f6fa72cba872e2f24b7917ff132a6ba101ac797" -> "sha256:3ad67442123996522eedfbcb7940b456df4e6f385f78383394c5412f044d8ae4" [label=""];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:b3eb88e028d06da37580014b568a3cf822573182c010e084c60d3ea8121fd1b4" [label=""];
  "sha256:3ad67442123996522eedfbcb7940b456df4e6f385f78383394c5412f044d8ae4" -> "sha256:b3eb88e028d06da37580014b568a3cf822573182c010e084c60d3ea8121fd1b4" [label=""];
  "sha256:b3eb88e028d06da37580014b568a3cf822573182c010e084c60d3ea8121fd1b4" -> "sha256:67f6c4d55b1cddb6041295df769473d572c39c9033e984e1beaa80d54dd5a5ed" [label=""];
  "sha256:67f6c4d55b1cddb6041295df769473d572c39c9033e984e1beaa80d54dd5a5ed" -> "sha256:4efd5a0377d3e94365c48aa96aaff9c4d6296fec7b7f96210fea26afcfc376d1" [label=""];
}

