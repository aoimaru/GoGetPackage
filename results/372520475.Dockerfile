[app/sources/372520475.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:cabc9662c6a1258afdc53c5f12e457bf0377a66501aba039810081431042f8cc" [label="/bin/sh -c apt-get update     && apt-get -y --no-install-recommends install         automake         build-essential         ca-certificates         git         libc-ares2         libc-ares-dev         libev4         libev-dev         libevent-2.0-5         libevent-dev         libssl1.0.0         libssl-dev         libtool         pkg-config         wget     && mkdir -p /opt && cd /opt     && git clone https://github.com/pgbouncer/pgbouncer.git     && cd /opt/pgbouncer     && git checkout pgbouncer_1_7_2     && git submodule init     && git submodule update     && ./autogen.sh     && ./configure --enable-evdns=no     && make     && make install     && apt-get remove -y         automake         build-essential         ca-certificates         git         libc-ares-dev         libev-dev         libevent-dev         libssl-dev         libtool         pkg-config         wget     && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*     && mkdir -p /etc/pgbouncer/     && mkdir -p /var/run/postgresql/     && mkdir -p /var/log/postgresql/     && groupadd --system postgres     && useradd -g postgres postgres     && touch /var/log/postgresql     && chown postgres:postgres /var/log/postgresql     && chown postgres:postgres /var/run/postgresql" shape="box"];
  "sha256:6658cc996e907e423ea6bf0abfc9c9b01db52e74e92a367f737556b87951752f" [label="local://context" shape="ellipse"];
  "sha256:3bb3c1a5594cddbf4a0e7b95dd60fda5f3becaa53dcb52b56857925b784b0daa" [label="copy{src=/run.sh, dest=/usr/local/bin/run}" shape="note"];
  "sha256:ee2431c5abf0707a550c0bb3d843df6f139a5f8f497184b758828c76765c5e5c" [label="/bin/sh -c chmod +x /usr/local/bin/run" shape="box"];
  "sha256:90683b32454e0e98c040e6654d6556b14b556a5b6496088c8c5b587c43f09c9a" [label="sha256:90683b32454e0e98c040e6654d6556b14b556a5b6496088c8c5b587c43f09c9a" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:cabc9662c6a1258afdc53c5f12e457bf0377a66501aba039810081431042f8cc" [label=""];
  "sha256:cabc9662c6a1258afdc53c5f12e457bf0377a66501aba039810081431042f8cc" -> "sha256:3bb3c1a5594cddbf4a0e7b95dd60fda5f3becaa53dcb52b56857925b784b0daa" [label=""];
  "sha256:6658cc996e907e423ea6bf0abfc9c9b01db52e74e92a367f737556b87951752f" -> "sha256:3bb3c1a5594cddbf4a0e7b95dd60fda5f3becaa53dcb52b56857925b784b0daa" [label=""];
  "sha256:3bb3c1a5594cddbf4a0e7b95dd60fda5f3becaa53dcb52b56857925b784b0daa" -> "sha256:ee2431c5abf0707a550c0bb3d843df6f139a5f8f497184b758828c76765c5e5c" [label=""];
  "sha256:ee2431c5abf0707a550c0bb3d843df6f139a5f8f497184b758828c76765c5e5c" -> "sha256:90683b32454e0e98c040e6654d6556b14b556a5b6496088c8c5b587c43f09c9a" [label=""];
}

