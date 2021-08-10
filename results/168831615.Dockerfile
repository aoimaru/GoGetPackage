[app/sources/168831615.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:7f6f76371333f516887610738513130225771e6b7270b9c4a41a790d179b3a7c" [label="/bin/sh -c useradd docker \t&& mkdir /home/docker \t&& chown docker:docker /home/docker \t&& addgroup docker staff" shape="box"];
  "sha256:cb99dc82242ea7067e1f81aefbbfda264764bec1804c8d3ecd3fd718f49d3d0e" [label="/bin/sh -c apt-get update \t&& apt-get install -y --no-install-recommends \t\ted \t\tless \t\tlocales \t\tvim-tiny \t\twget \t\tca-certificates \t\tfonts-texgyre \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9ea661608b15e38233973cfe5618bf0989d4d607d64054815de21c2b31b97e3d" [label="/bin/sh -c echo \"en_US.UTF-8 UTF-8\" >> /etc/locale.gen \t&& locale-gen en_US.utf8 \t&& /usr/sbin/update-locale LANG=en_US.UTF-8         && ln -s /etc/locale.alias /usr/share/locale/locale.alias         && apt install locales" shape="box"];
  "sha256:acc53e0075ef8af789e29b2619d30f54695bc9e39caaabc06fd1d9bb61b3feb6" [label="/bin/sh -c wget http://www.scilab.org/download/6.0.1/scilab-6.0.1.bin.linux-x86_64.tar.gz &&     tar -xvzf scilab-6.0.1.bin.linux-x86_64.tar.gz &&     ln -s $PWD/scilab-6.0.1/bin/scilab /usr/bin/scilab &&     ln -s $PWD/scilab-6.0.1/bin/scilab-cli /usr/bin/scilab-cli &&     rm *.tar.gz" shape="box"];
  "sha256:3bddd00a84314f483edc19f4fae44b2d489fb63336b696d7db4e9bad3063b4f0" [label="sha256:3bddd00a84314f483edc19f4fae44b2d489fb63336b696d7db4e9bad3063b4f0" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:7f6f76371333f516887610738513130225771e6b7270b9c4a41a790d179b3a7c" [label=""];
  "sha256:7f6f76371333f516887610738513130225771e6b7270b9c4a41a790d179b3a7c" -> "sha256:cb99dc82242ea7067e1f81aefbbfda264764bec1804c8d3ecd3fd718f49d3d0e" [label=""];
  "sha256:cb99dc82242ea7067e1f81aefbbfda264764bec1804c8d3ecd3fd718f49d3d0e" -> "sha256:9ea661608b15e38233973cfe5618bf0989d4d607d64054815de21c2b31b97e3d" [label=""];
  "sha256:9ea661608b15e38233973cfe5618bf0989d4d607d64054815de21c2b31b97e3d" -> "sha256:acc53e0075ef8af789e29b2619d30f54695bc9e39caaabc06fd1d9bb61b3feb6" [label=""];
  "sha256:acc53e0075ef8af789e29b2619d30f54695bc9e39caaabc06fd1d9bb61b3feb6" -> "sha256:3bddd00a84314f483edc19f4fae44b2d489fb63336b696d7db4e9bad3063b4f0" [label=""];
}

