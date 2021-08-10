[app/sources/312283081.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:37537d28a96b41e242a1af8f97deb7435be6faa56d7657dbf1808e8017d61b8a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     build-essential     libopenblas-dev     git     python3-dev     python3-pip     swig     libmysqlclient-dev     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2f33855cefe7bb7299959c1aa57dde0f36da5ff50cd2db0031da1f02a6ed4a8a" [label="/bin/sh -c pip3 install setuptools tornado==5.0.2 mysqlclient" shape="box"];
  "sha256:ce07e0a452c9d0b1c41dac6819c3bcb0e2344705c36ed48b509fa752831322bb" [label="local://context" shape="ellipse"];
  "sha256:98d396b5afb4be62fbe295b5e56cccebebfa518c561d88eabb09cdba965db71f" [label="copy{src=/, dest=/xdecoder}" shape="note"];
  "sha256:5558952bc49b0d9686a27df06a0e9e8ef4808dd40905d42e6b8d700727589ff5" [label="mkdir{path=/xdecoder}" shape="note"];
  "sha256:bf60706dc7f638df9006409b43841b59bced8e676e22453303c2f2b68edf868c" [label="/bin/sh -c make server && make clean" shape="box"];
  "sha256:21f719ee23b8f558fe8b715c2727c731360c9ae4e46856f82971db6b018c612a" [label="/bin/sh -c pwd && ls" shape="box"];
  "sha256:6ff9dda42a2d85db06852c5d898ed381fff8d5d8ffe89a5d7f04a869a0fe0651" [label="sha256:6ff9dda42a2d85db06852c5d898ed381fff8d5d8ffe89a5d7f04a869a0fe0651" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:37537d28a96b41e242a1af8f97deb7435be6faa56d7657dbf1808e8017d61b8a" [label=""];
  "sha256:37537d28a96b41e242a1af8f97deb7435be6faa56d7657dbf1808e8017d61b8a" -> "sha256:2f33855cefe7bb7299959c1aa57dde0f36da5ff50cd2db0031da1f02a6ed4a8a" [label=""];
  "sha256:2f33855cefe7bb7299959c1aa57dde0f36da5ff50cd2db0031da1f02a6ed4a8a" -> "sha256:98d396b5afb4be62fbe295b5e56cccebebfa518c561d88eabb09cdba965db71f" [label=""];
  "sha256:ce07e0a452c9d0b1c41dac6819c3bcb0e2344705c36ed48b509fa752831322bb" -> "sha256:98d396b5afb4be62fbe295b5e56cccebebfa518c561d88eabb09cdba965db71f" [label=""];
  "sha256:98d396b5afb4be62fbe295b5e56cccebebfa518c561d88eabb09cdba965db71f" -> "sha256:5558952bc49b0d9686a27df06a0e9e8ef4808dd40905d42e6b8d700727589ff5" [label=""];
  "sha256:5558952bc49b0d9686a27df06a0e9e8ef4808dd40905d42e6b8d700727589ff5" -> "sha256:bf60706dc7f638df9006409b43841b59bced8e676e22453303c2f2b68edf868c" [label=""];
  "sha256:bf60706dc7f638df9006409b43841b59bced8e676e22453303c2f2b68edf868c" -> "sha256:21f719ee23b8f558fe8b715c2727c731360c9ae4e46856f82971db6b018c612a" [label=""];
  "sha256:21f719ee23b8f558fe8b715c2727c731360c9ae4e46856f82971db6b018c612a" -> "sha256:6ff9dda42a2d85db06852c5d898ed381fff8d5d8ffe89a5d7f04a869a0fe0651" [label=""];
}

