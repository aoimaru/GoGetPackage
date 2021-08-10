[app/sources/234036480.Dockerfile]
digraph {
  "sha256:def0dd4daca515510159d8f6f915c4a46c7e0ab81577eb7cbd559630e9f4fb5a" [label="docker-image://docker.io/library/ubuntu:zesty" shape="ellipse"];
  "sha256:020553d40bfef5da458fdcf23a1f7f2799d57794e9edc00a2d610e49319f6799" [label="/bin/sh -c perl -i -pe 's#archive.ubuntu.com#old-releases.ubuntu.com#g' /etc/apt/sources.list && \tperl -i -pe 's#security.ubuntu.com#old-releases.ubuntu.com#g' /etc/apt/sources.list" shape="box"];
  "sha256:8202dbc3f9a19b09614298433787792166576d02f22a6b38f5c4ad099b1ac643" [label="/bin/sh -c apt-get update \t&& apt-get install --no-install-recommends -y dpkg python2.7 sqlite3         && apt-get autoremove -y \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:409a75c311b05f423336f01e179450cade624b37682542c4ee1285763917d698" [label="sha256:409a75c311b05f423336f01e179450cade624b37682542c4ee1285763917d698" shape="plaintext"];
  "sha256:def0dd4daca515510159d8f6f915c4a46c7e0ab81577eb7cbd559630e9f4fb5a" -> "sha256:020553d40bfef5da458fdcf23a1f7f2799d57794e9edc00a2d610e49319f6799" [label=""];
  "sha256:020553d40bfef5da458fdcf23a1f7f2799d57794e9edc00a2d610e49319f6799" -> "sha256:8202dbc3f9a19b09614298433787792166576d02f22a6b38f5c4ad099b1ac643" [label=""];
  "sha256:8202dbc3f9a19b09614298433787792166576d02f22a6b38f5c4ad099b1ac643" -> "sha256:409a75c311b05f423336f01e179450cade624b37682542c4ee1285763917d698" [label=""];
}

