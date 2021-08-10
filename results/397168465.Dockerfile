[app/sources/397168465.Dockerfile]
digraph {
  "sha256:566cddfa396aaba216e8d29ee6ca3e1ff975dc9904d7358d52b0d0990fd4e519" [label="docker-image://docker.io/library/postgres:9.5.4" shape="ellipse"];
  "sha256:ce5292ea9f80f230db6373770abaa271c09ba421393ff6b4b00a0c1ba7dffa50" [label="local://context" shape="ellipse"];
  "sha256:19f00b2016a693f96658def9a9f3925284a3a1f6336415b43314ebd106a71778" [label="copy{src=/create_extensions.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:f68e3742e9477e2177999e5aaf5528e156990faace4690192d1f61d0e99cb862" [label="sha256:f68e3742e9477e2177999e5aaf5528e156990faace4690192d1f61d0e99cb862" shape="plaintext"];
  "sha256:566cddfa396aaba216e8d29ee6ca3e1ff975dc9904d7358d52b0d0990fd4e519" -> "sha256:19f00b2016a693f96658def9a9f3925284a3a1f6336415b43314ebd106a71778" [label=""];
  "sha256:ce5292ea9f80f230db6373770abaa271c09ba421393ff6b4b00a0c1ba7dffa50" -> "sha256:19f00b2016a693f96658def9a9f3925284a3a1f6336415b43314ebd106a71778" [label=""];
  "sha256:19f00b2016a693f96658def9a9f3925284a3a1f6336415b43314ebd106a71778" -> "sha256:f68e3742e9477e2177999e5aaf5528e156990faace4690192d1f61d0e99cb862" [label=""];
}

