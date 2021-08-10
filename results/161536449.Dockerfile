[app/sources/161536449.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:c977e468468fc5e4ff2739d4e63adb3010d61fcbf7d3db054921937f106f45f8" [label="local://context" shape="ellipse"];
  "sha256:ff605fa2d22cc3850524339db7921c2dacf40556d7f9cf8bec6c0640a8365686" [label="copy{src=/, dest=/srv}" shape="note"];
  "sha256:f2500020b6660d0a741da1cbddb6b0f221daf32ae390187550bec2c1b35a2791" [label="mkdir{path=/srv}" shape="note"];
  "sha256:77aa5e260782f02e4c479596f1ec8020ce64c8fa3df868a220bccecea5911563" [label="/bin/sh -c apt-get update     && apt-get install --no-install-recommends -y         build-essential         cmake         default-libmysqlclient-dev         libboost-iostreams-dev         libboost-system-dev         libev-dev         libjemalloc-dev         libmysql++-dev         pkg-config     && mkdir build     && cd build     && cmake ..     && make     && apt-get purge -y         build-essential         cmake         pkg-config     && apt-get autoremove -y     && apt-get clean -y     && rm -rf /var/lib/apt/lists/*     && mv /srv/build/ocelot /srv/ocelot     && mv /srv/ocelot.conf.dist /srv/ocelot.conf" shape="box"];
  "sha256:1fa4889c172f1a749e352fd256e49900b6062aa2442c2d91adaff4f604035232" [label="sha256:1fa4889c172f1a749e352fd256e49900b6062aa2442c2d91adaff4f604035232" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:ff605fa2d22cc3850524339db7921c2dacf40556d7f9cf8bec6c0640a8365686" [label=""];
  "sha256:c977e468468fc5e4ff2739d4e63adb3010d61fcbf7d3db054921937f106f45f8" -> "sha256:ff605fa2d22cc3850524339db7921c2dacf40556d7f9cf8bec6c0640a8365686" [label=""];
  "sha256:ff605fa2d22cc3850524339db7921c2dacf40556d7f9cf8bec6c0640a8365686" -> "sha256:f2500020b6660d0a741da1cbddb6b0f221daf32ae390187550bec2c1b35a2791" [label=""];
  "sha256:f2500020b6660d0a741da1cbddb6b0f221daf32ae390187550bec2c1b35a2791" -> "sha256:77aa5e260782f02e4c479596f1ec8020ce64c8fa3df868a220bccecea5911563" [label=""];
  "sha256:77aa5e260782f02e4c479596f1ec8020ce64c8fa3df868a220bccecea5911563" -> "sha256:1fa4889c172f1a749e352fd256e49900b6062aa2442c2d91adaff4f604035232" [label=""];
}

