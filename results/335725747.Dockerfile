[app/sources/335725747.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:9910d7680ca9187be0ee5025c14b2b428fbbe9e8bad496be97aa156ffc043a0b" [label="local://context" shape="ellipse"];
  "sha256:4f797a33dd03d672472089172dc9d2ffd4d1ecda5107dc708523c44567ad8471" [label="copy{src=/gd.sh, dest=/opt}" shape="note"];
  "sha256:c652bf49d9e013d5ff4b812b0183114aec59214ee4efc50c0f92f7f8d0252c6f" [label="mkdir{path=/opt}" shape="note"];
  "sha256:8916ba5f2cb4741f67cebe12c1221eab53fcf863841fae06d7b2d4ddc789b822" [label="/bin/sh -c set -ex;     apt-get update -y;     apt-get upgrade -y;     apt-get install -y --no-install-recommends ${APT_PACKAGES};     apt-get install -y --no-install-recommends ${BUILD_PACKAGES};     ln -s /usr/bin/idle3 /usr/bin/idle;     ln -s /usr/bin/pydoc3 /usr/bin/pydoc;     ln -s /usr/bin/python3 /usr/bin/python;     ln -s /usr/bin/python3-config /usr/bin/python-config;     ln -s /usr/bin/pip3 /usr/bin/pip;     pip install -U -v setuptools wheel;     cd /opt &&     git clone https://github.com/deeppomf/DeepCreamPy.git &&     cd /opt/DeepCreamPy &&     pip install -U -v -r requirements.txt &&     mkdir -p models/ &&     bash /opt/gd.sh ${MODELS};     unzip model.zip &&     mv model.h5 models &&     apt-get remove --purge --auto-remove -y ${BUILD_PACKAGES};     apt-get clean;     apt-get autoclean;     apt-get autoremove;     rm -rf /tmp/* /var/tmp/*;     rm -rf /var/lib/apt/lists/*;     rm -f /var/cache/apt/archives/*.deb         /var/cache/apt/archives/partial/*.deb         /var/cache/apt/*.bin;     find /usr/lib/python3 -name __pycache__ | xargs rm -r;     rm -rf /root/.[acpw]*;" shape="box"];
  "sha256:4de368a37e0d5e92eddfcaa5495961e4d0d71590929fd0779bda0e5dd2f9bd5e" [label="mkdir{path=/opt/DeepCreamPy}" shape="note"];
  "sha256:f0d5fca0e4fee4c6a3c37a34b9e4ee61468b1f6c561e730731938ec01524c9d6" [label="sha256:f0d5fca0e4fee4c6a3c37a34b9e4ee61468b1f6c561e730731938ec01524c9d6" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:4f797a33dd03d672472089172dc9d2ffd4d1ecda5107dc708523c44567ad8471" [label=""];
  "sha256:9910d7680ca9187be0ee5025c14b2b428fbbe9e8bad496be97aa156ffc043a0b" -> "sha256:4f797a33dd03d672472089172dc9d2ffd4d1ecda5107dc708523c44567ad8471" [label=""];
  "sha256:4f797a33dd03d672472089172dc9d2ffd4d1ecda5107dc708523c44567ad8471" -> "sha256:c652bf49d9e013d5ff4b812b0183114aec59214ee4efc50c0f92f7f8d0252c6f" [label=""];
  "sha256:c652bf49d9e013d5ff4b812b0183114aec59214ee4efc50c0f92f7f8d0252c6f" -> "sha256:8916ba5f2cb4741f67cebe12c1221eab53fcf863841fae06d7b2d4ddc789b822" [label=""];
  "sha256:8916ba5f2cb4741f67cebe12c1221eab53fcf863841fae06d7b2d4ddc789b822" -> "sha256:4de368a37e0d5e92eddfcaa5495961e4d0d71590929fd0779bda0e5dd2f9bd5e" [label=""];
  "sha256:4de368a37e0d5e92eddfcaa5495961e4d0d71590929fd0779bda0e5dd2f9bd5e" -> "sha256:f0d5fca0e4fee4c6a3c37a34b9e4ee61468b1f6c561e730731938ec01524c9d6" [label=""];
}

