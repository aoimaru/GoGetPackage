[app/sources/178534045.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt jessie main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:3a16b2852076778254f44c3c48531aea5ea068757d57ab30cdadc2d7c9931b67" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5f537553dd113dca6a1b110b68149054a6d84841b3f261099971149006119a62" [label="mkdir{path=/data}" shape="note"];
  "sha256:cd67f5fe42cc6d8e4f11c1b73a55c70a57719e786de8e988f335e9bca7c9d316" [label="sha256:cd67f5fe42cc6d8e4f11c1b73a55c70a57719e786de8e988f335e9bca7c9d316" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" [label=""];
  "sha256:232982634fefd7ac64557ece99065e68bd78837170ca2e2c8d90b24476f646bc" -> "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" [label=""];
  "sha256:7e13c820e14be57fb6e9fcbdf09f990d5d980d6e816b72b182d805eb22228c9a" -> "sha256:3a16b2852076778254f44c3c48531aea5ea068757d57ab30cdadc2d7c9931b67" [label=""];
  "sha256:3a16b2852076778254f44c3c48531aea5ea068757d57ab30cdadc2d7c9931b67" -> "sha256:5f537553dd113dca6a1b110b68149054a6d84841b3f261099971149006119a62" [label=""];
  "sha256:5f537553dd113dca6a1b110b68149054a6d84841b3f261099971149006119a62" -> "sha256:cd67f5fe42cc6d8e4f11c1b73a55c70a57719e786de8e988f335e9bca7c9d316" [label=""];
}

