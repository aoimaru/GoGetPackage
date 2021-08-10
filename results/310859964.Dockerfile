[app/sources/310859964.Dockerfile]
digraph {
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" [label="docker-image://docker.io/library/ubuntu:19.04" shape="ellipse"];
  "sha256:e28609ed6387bc2c2570b08909492aa716ccdeac7a5cb49505d1e0749549fbc7" [label="/bin/sh -c apt-get update && apt-get install -y     autoconf     bison     flex     g++     gcc     gettext     git     lhasa     libgmpxx4ldbl     libgmp-dev     libmpfr6     libmpfr-dev     libmpc3     libmpc-dev     libncurses-dev     make     rsync     texinfo    wget     && rm -rf /var/lib/apt/lists/* &&     cd /root &&     git clone https://github.com/bebbo/amiga-gcc.git &&     cd /root/amiga-gcc &&     git checkout -qf 6e37ed41722824e384166c1780c2b1b424cd374e &&     mkdir -p /opt/amiga &&     make update &&     make all &&     cd / &&     rm -rf /root/amiga-gcc &&     apt-get purge -y     autoconf     bison     flex     g++     gcc     gettext     git     lhasa     libgmp-dev     libmpfr-dev     libmpc-dev     libncurses-dev     make     rsync     texinfo    wget     && apt-get -y autoremove" shape="box"];
  "sha256:e6079bdf2b899c32b8cb1ea2acfa834e18281db531152e2c576a430cf7d5df0e" [label="sha256:e6079bdf2b899c32b8cb1ea2acfa834e18281db531152e2c576a430cf7d5df0e" shape="plaintext"];
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" -> "sha256:e28609ed6387bc2c2570b08909492aa716ccdeac7a5cb49505d1e0749549fbc7" [label=""];
  "sha256:e28609ed6387bc2c2570b08909492aa716ccdeac7a5cb49505d1e0749549fbc7" -> "sha256:e6079bdf2b899c32b8cb1ea2acfa834e18281db531152e2c576a430cf7d5df0e" [label=""];
}

