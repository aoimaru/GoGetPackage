[app/sources/269910542.Dockerfile]
digraph {
  "sha256:0c3add6c55e3a12a33ce9f7773aac8e68b04af8d26a877a5a6243cad6ccc06b7" [label="local://context" shape="ellipse"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:751cf329e5117466fa7bc50638772a9fde8a41c45e74bd9fd66be1e7fd700800" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:5d928f0c75fa8bad9073cffcc8da6cf1253d23e8ae0499b64bf97fd408733aec" [label="mkdir{path=/app}" shape="note"];
  "sha256:aea2f7fa0093e38f3bc2af7f54110386cd99f1f94b56ce9ce7eadc74a33e09aa" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:f4d682c62331c5715acd7080116feb7c66a2878a1ffebf839db49ee0ab53a7db" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a844a18e05575534c2b3eeef197d859b8b9f7394ebe25b748d05a3094b08f0bf" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:4df8995bda21869731a58e277efd9630fc0ccfad553b19d1859a2a42c8508729" [label="sha256:4df8995bda21869731a58e277efd9630fc0ccfad553b19d1859a2a42c8508729" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:751cf329e5117466fa7bc50638772a9fde8a41c45e74bd9fd66be1e7fd700800" [label=""];
  "sha256:751cf329e5117466fa7bc50638772a9fde8a41c45e74bd9fd66be1e7fd700800" -> "sha256:5d928f0c75fa8bad9073cffcc8da6cf1253d23e8ae0499b64bf97fd408733aec" [label=""];
  "sha256:5d928f0c75fa8bad9073cffcc8da6cf1253d23e8ae0499b64bf97fd408733aec" -> "sha256:aea2f7fa0093e38f3bc2af7f54110386cd99f1f94b56ce9ce7eadc74a33e09aa" [label=""];
  "sha256:0c3add6c55e3a12a33ce9f7773aac8e68b04af8d26a877a5a6243cad6ccc06b7" -> "sha256:aea2f7fa0093e38f3bc2af7f54110386cd99f1f94b56ce9ce7eadc74a33e09aa" [label=""];
  "sha256:aea2f7fa0093e38f3bc2af7f54110386cd99f1f94b56ce9ce7eadc74a33e09aa" -> "sha256:f4d682c62331c5715acd7080116feb7c66a2878a1ffebf839db49ee0ab53a7db" [label=""];
  "sha256:f4d682c62331c5715acd7080116feb7c66a2878a1ffebf839db49ee0ab53a7db" -> "sha256:a844a18e05575534c2b3eeef197d859b8b9f7394ebe25b748d05a3094b08f0bf" [label=""];
  "sha256:0c3add6c55e3a12a33ce9f7773aac8e68b04af8d26a877a5a6243cad6ccc06b7" -> "sha256:a844a18e05575534c2b3eeef197d859b8b9f7394ebe25b748d05a3094b08f0bf" [label=""];
  "sha256:a844a18e05575534c2b3eeef197d859b8b9f7394ebe25b748d05a3094b08f0bf" -> "sha256:4df8995bda21869731a58e277efd9630fc0ccfad553b19d1859a2a42c8508729" [label=""];
}

