[app/sources/291685805.Dockerfile]
digraph {
  "sha256:a0aa434d65c7e6a70548dcdecd4346e6084f3e0608364a8cd6186acfbdb46055" [label="docker-image://docker.io/library/postgres:9.4.15-alpine" shape="ellipse"];
  "sha256:a52bf25a67dbac73f25937d5758e4cb16283827cc75ff67f96ca7283ddfda005" [label="/bin/sh -c if [ -e /usr/local/share/postgresql/postgresql.conf.sample ]; then         postgresfile=/usr/local/share/postgresql/postgresql.conf.sample;     else         postgresfile=/usr/share/postgresql/postgresql.conf.sample;     fi &&     echo fsync=off >> $postgresfile &&    echo synchronous_commit=off >> $postgresfile &&    echo full_page_writes=off >> $postgresfile &&    echo bgwriter_lru_maxpages=0 >> $postgresfile" shape="box"];
  "sha256:e77f6e72304b18c998f13194a94c807f6c61e071d6dda5f609451b91386e9e93" [label="sha256:e77f6e72304b18c998f13194a94c807f6c61e071d6dda5f609451b91386e9e93" shape="plaintext"];
  "sha256:a0aa434d65c7e6a70548dcdecd4346e6084f3e0608364a8cd6186acfbdb46055" -> "sha256:a52bf25a67dbac73f25937d5758e4cb16283827cc75ff67f96ca7283ddfda005" [label=""];
  "sha256:a52bf25a67dbac73f25937d5758e4cb16283827cc75ff67f96ca7283ddfda005" -> "sha256:e77f6e72304b18c998f13194a94c807f6c61e071d6dda5f609451b91386e9e93" [label=""];
}

