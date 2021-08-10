[app/sources/247222605.Dockerfile]
digraph {
  "sha256:1b3490c04736717bef161c5af9921b097e99bee5a6c4bb6f71267d017e8b74ad" [label="docker-image://docker.io/library/postgres:9.6.2-alpine" shape="ellipse"];
  "sha256:605d1f014c64f2eb536f7dfea63256ea982eaab9ea2dca1cdffff3208daaca65" [label="local://context" shape="ellipse"];
  "sha256:988710606d20011a520c424462375d52ef8f0cc30111cac06b372acb05aa7e7e" [label="copy{src=/schema.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:ca100651b9fbe7c1ee0dcd1123a0bcfd3243620979ab4c32412d42215752a9a4" [label="sha256:ca100651b9fbe7c1ee0dcd1123a0bcfd3243620979ab4c32412d42215752a9a4" shape="plaintext"];
  "sha256:1b3490c04736717bef161c5af9921b097e99bee5a6c4bb6f71267d017e8b74ad" -> "sha256:988710606d20011a520c424462375d52ef8f0cc30111cac06b372acb05aa7e7e" [label=""];
  "sha256:605d1f014c64f2eb536f7dfea63256ea982eaab9ea2dca1cdffff3208daaca65" -> "sha256:988710606d20011a520c424462375d52ef8f0cc30111cac06b372acb05aa7e7e" [label=""];
  "sha256:988710606d20011a520c424462375d52ef8f0cc30111cac06b372acb05aa7e7e" -> "sha256:ca100651b9fbe7c1ee0dcd1123a0bcfd3243620979ab4c32412d42215752a9a4" [label=""];
}

