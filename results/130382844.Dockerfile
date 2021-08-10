[app/sources/130382844.Dockerfile]
digraph {
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" [label="docker-image://docker.io/library/ubuntu:17.04" shape="ellipse"];
  "sha256:4d99b04234a82c68942140780319bdc1803f9b764aefcdebad89d5566ff22c45" [label="mkdir{path=/root}" shape="note"];
  "sha256:ba29dffdb563c3db3acd62e7ec42edc4bb082037479c8ccb84a9d0005d04efff" [label="local://context" shape="ellipse"];
  "sha256:ff50147352e64c27cb27454782d95836dbdcc0a31227d595f9499452c7b4b1a7" [label="copy{src=/plumed2.tgz, dest=/root/}" shape="note"];
  "sha256:3cf19fc54b22ebce373c6ae13133a09d51cdef64a0532cce3c11877dd52b4fdb" [label="/bin/sh -c buildDeps=\"git\"  && runtimeDeps=\"gawk libopenblas-base libgomp1 make openssh-client openmpi-bin vim zlib1g git g++ libopenblas-dev libopenmpi-dev xxd zlib1g-dev\"  && apt-get -yq update  && apt-get -yq upgrade  && apt -yq install $buildDeps $runtimeDeps --no-install-recommends  && tar xzf plumed2.tgz  && cd plumed2  && ./configure --enable-modules=all CXXFLAGS=-O3  && make -j 4  && make install  && cd ../  && rm -fr plumed2  && rm -f plumed2.tgz  && apt-get purge -y --auto-remove $buildDeps  && apt -yq install $runtimeDeps --no-install-recommends  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a5e7e54b9651afd5528ac8dcc37ec0dc9d6e419f92a7e0860eab097049bb558f" [label="/bin/sh -c useradd -ms /bin/bash plumed" shape="box"];
  "sha256:bdf935e2300aea5df80759154c0126c9a959c4e5bbbc7e73b08bb76d1b1efe04" [label="mkdir{path=/home/plumed}" shape="note"];
  "sha256:53fb495abc920fdd3766bb7fcc7789d1d74290a377eb6e7168c88fcffff340a1" [label="sha256:53fb495abc920fdd3766bb7fcc7789d1d74290a377eb6e7168c88fcffff340a1" shape="plaintext"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" -> "sha256:4d99b04234a82c68942140780319bdc1803f9b764aefcdebad89d5566ff22c45" [label=""];
  "sha256:4d99b04234a82c68942140780319bdc1803f9b764aefcdebad89d5566ff22c45" -> "sha256:ff50147352e64c27cb27454782d95836dbdcc0a31227d595f9499452c7b4b1a7" [label=""];
  "sha256:ba29dffdb563c3db3acd62e7ec42edc4bb082037479c8ccb84a9d0005d04efff" -> "sha256:ff50147352e64c27cb27454782d95836dbdcc0a31227d595f9499452c7b4b1a7" [label=""];
  "sha256:ff50147352e64c27cb27454782d95836dbdcc0a31227d595f9499452c7b4b1a7" -> "sha256:3cf19fc54b22ebce373c6ae13133a09d51cdef64a0532cce3c11877dd52b4fdb" [label=""];
  "sha256:3cf19fc54b22ebce373c6ae13133a09d51cdef64a0532cce3c11877dd52b4fdb" -> "sha256:a5e7e54b9651afd5528ac8dcc37ec0dc9d6e419f92a7e0860eab097049bb558f" [label=""];
  "sha256:a5e7e54b9651afd5528ac8dcc37ec0dc9d6e419f92a7e0860eab097049bb558f" -> "sha256:bdf935e2300aea5df80759154c0126c9a959c4e5bbbc7e73b08bb76d1b1efe04" [label=""];
  "sha256:bdf935e2300aea5df80759154c0126c9a959c4e5bbbc7e73b08bb76d1b1efe04" -> "sha256:53fb495abc920fdd3766bb7fcc7789d1d74290a377eb6e7168c88fcffff340a1" [label=""];
}

