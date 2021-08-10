[app/sources/476544932.Dockerfile]
digraph {
  "sha256:8908dcaf495598a7121c2a9ed6678542b4e8763c700e11c028919531f463b405" [label="docker-image://docker.io/library/postgres:10" shape="ellipse"];
  "sha256:e25335d39c09f8914a61490a180e47ae4f7756f94e4693791a2c4acb6bbb8695" [label="/bin/sh -c sed -i 's/$/ 9.5/' /etc/apt/sources.list.d/pgdg.list" shape="box"];
  "sha256:aec029444ab2733bc25b8052e2a71c7ce66a5171200df8ee3a600f441648bb92" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tpostgresql-9.5=9.5.18-1.pgdg90+1 \t\tpostgresql-contrib-9.5=9.5.18-1.pgdg90+1 \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9f4d34e8543fb550ba6aadb6262b5503a17cf86784f6f808a2f2579692ddd591" [label="/bin/sh -c mkdir -p \"$PGDATAOLD\" \"$PGDATANEW\" \t&& chown -R postgres:postgres /var/lib/postgresql" shape="box"];
  "sha256:25be8d6f78c290bf1919fa2517ff46a2a3ed70cc8a936fb3624c9ddd4131bb60" [label="mkdir{path=/var/lib/postgresql}" shape="note"];
  "sha256:03bda884b121352273548cac57b7843e5f6770a41c57b66131a4cc42980e0850" [label="local://context" shape="ellipse"];
  "sha256:3a56c20e7779d5b2d1f05a8626f72a980cabae96a0a1d048f4ac11c85edb2164" [label="copy{src=/docker-upgrade, dest=/usr/local/bin/}" shape="note"];
  "sha256:65c679de956883f8a8c6e2fce2e64599ed9bd006443a4f3e5674f93472aa259b" [label="sha256:65c679de956883f8a8c6e2fce2e64599ed9bd006443a4f3e5674f93472aa259b" shape="plaintext"];
  "sha256:8908dcaf495598a7121c2a9ed6678542b4e8763c700e11c028919531f463b405" -> "sha256:e25335d39c09f8914a61490a180e47ae4f7756f94e4693791a2c4acb6bbb8695" [label=""];
  "sha256:e25335d39c09f8914a61490a180e47ae4f7756f94e4693791a2c4acb6bbb8695" -> "sha256:aec029444ab2733bc25b8052e2a71c7ce66a5171200df8ee3a600f441648bb92" [label=""];
  "sha256:aec029444ab2733bc25b8052e2a71c7ce66a5171200df8ee3a600f441648bb92" -> "sha256:9f4d34e8543fb550ba6aadb6262b5503a17cf86784f6f808a2f2579692ddd591" [label=""];
  "sha256:9f4d34e8543fb550ba6aadb6262b5503a17cf86784f6f808a2f2579692ddd591" -> "sha256:25be8d6f78c290bf1919fa2517ff46a2a3ed70cc8a936fb3624c9ddd4131bb60" [label=""];
  "sha256:25be8d6f78c290bf1919fa2517ff46a2a3ed70cc8a936fb3624c9ddd4131bb60" -> "sha256:3a56c20e7779d5b2d1f05a8626f72a980cabae96a0a1d048f4ac11c85edb2164" [label=""];
  "sha256:03bda884b121352273548cac57b7843e5f6770a41c57b66131a4cc42980e0850" -> "sha256:3a56c20e7779d5b2d1f05a8626f72a980cabae96a0a1d048f4ac11c85edb2164" [label=""];
  "sha256:3a56c20e7779d5b2d1f05a8626f72a980cabae96a0a1d048f4ac11c85edb2164" -> "sha256:65c679de956883f8a8c6e2fce2e64599ed9bd006443a4f3e5674f93472aa259b" [label=""];
}

