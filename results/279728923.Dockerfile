[app/sources/279728923.Dockerfile]
digraph {
  "sha256:4a6a6c7e8948e741b79f7388827a5bc62bcc9c860ece4c5de25a4a14d7aad7f4" [label="docker-image://docker.io/zcalusic/debian-stretch:latest" shape="ellipse"];
  "sha256:63b04af14530412c2f342ab4be0783173ea904e92a420ef020698b6ebd1d0edf" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends        file        gcc        libc6-dev        libfuse-dev        libpcap0.8-dev        make        pkg-config        python        zlib1g-dev     && mkdir -p /usr/src/moosefs     && wget --dot-style=mega -O- \"https://github.com/moosefs/moosefs/archive/${MOOSEFS_VERSION}.tar.gz\" | tar xz --strip-components=1 -C /usr/src/moosefs     && cd /usr/src/moosefs     && ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var/lib --with-default-user=\"$MOOSEFS_USER\" --with-default-group=\"$MOOSEFS_GROUP\" --disable-mfssupervisor --disable-mfscgiserv     && make -j$(nproc) install-strip" shape="box"];
  "sha256:c715a723313a6a0f622d2d51d9aed66f7496850ab72272b5935843fe38e295ac" [label="sha256:c715a723313a6a0f622d2d51d9aed66f7496850ab72272b5935843fe38e295ac" shape="plaintext"];
  "sha256:4a6a6c7e8948e741b79f7388827a5bc62bcc9c860ece4c5de25a4a14d7aad7f4" -> "sha256:63b04af14530412c2f342ab4be0783173ea904e92a420ef020698b6ebd1d0edf" [label=""];
  "sha256:63b04af14530412c2f342ab4be0783173ea904e92a420ef020698b6ebd1d0edf" -> "sha256:c715a723313a6a0f622d2d51d9aed66f7496850ab72272b5935843fe38e295ac" [label=""];
}

