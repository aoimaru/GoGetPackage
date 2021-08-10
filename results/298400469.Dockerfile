[app/sources/298400469.Dockerfile]
digraph {
  "sha256:06b85414ea0450589e019a0c05fcccc6c57516f8a9b619136279b11039f6495a" [label="local://context" shape="ellipse"];
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" [label="docker-image://docker.io/library/postgres:latest" shape="ellipse"];
  "sha256:f4803337efa98410b68b98003fe15a3ab3264eb53dc8497189187c808030d59c" [label="copy{src=/docker-entrypoint-initdb.d/*, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:3bf17658d038c858b45cd98a5f3155b07f1db381c4ef10a384330ae03d4ed971" [label="sha256:3bf17658d038c858b45cd98a5f3155b07f1db381c4ef10a384330ae03d4ed971" shape="plaintext"];
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" -> "sha256:f4803337efa98410b68b98003fe15a3ab3264eb53dc8497189187c808030d59c" [label=""];
  "sha256:06b85414ea0450589e019a0c05fcccc6c57516f8a9b619136279b11039f6495a" -> "sha256:f4803337efa98410b68b98003fe15a3ab3264eb53dc8497189187c808030d59c" [label=""];
  "sha256:f4803337efa98410b68b98003fe15a3ab3264eb53dc8497189187c808030d59c" -> "sha256:3bf17658d038c858b45cd98a5f3155b07f1db381c4ef10a384330ae03d4ed971" [label=""];
}

