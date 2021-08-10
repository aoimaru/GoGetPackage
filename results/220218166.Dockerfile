[app/sources/220218166.Dockerfile]
digraph {
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" [label="docker-image://docker.io/library/postgres:latest" shape="ellipse"];
  "sha256:f08056fc990e0c73cd70c6bc2a871b65f03e70fcf0352e702b677cdb6849b132" [label="local://context" shape="ellipse"];
  "sha256:cb750d2b915a2295f4a3c5732feaac8b89759904952ab1371faae5b623023205" [label="copy{src=/schema.sql, dest=/docker-entrypoint-initdb.d}" shape="note"];
  "sha256:5c184592ce8c34bbe761a5462baeab54b50d9c6006990c6ecc1f5d28acbdaeec" [label="sha256:5c184592ce8c34bbe761a5462baeab54b50d9c6006990c6ecc1f5d28acbdaeec" shape="plaintext"];
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" -> "sha256:cb750d2b915a2295f4a3c5732feaac8b89759904952ab1371faae5b623023205" [label=""];
  "sha256:f08056fc990e0c73cd70c6bc2a871b65f03e70fcf0352e702b677cdb6849b132" -> "sha256:cb750d2b915a2295f4a3c5732feaac8b89759904952ab1371faae5b623023205" [label=""];
  "sha256:cb750d2b915a2295f4a3c5732feaac8b89759904952ab1371faae5b623023205" -> "sha256:5c184592ce8c34bbe761a5462baeab54b50d9c6006990c6ecc1f5d28acbdaeec" [label=""];
}

