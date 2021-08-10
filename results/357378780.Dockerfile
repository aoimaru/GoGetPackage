[app/sources/357378780.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:35acca877e12658d5c12d6ea1e2679b7152a3cad29cde102423c66901b741022" [label="/bin/sh -c apt-get update && apt-get install -y bash-completion btrfs-tools build-essential curl ca-certificates debhelper dh-systemd git libapparmor-dev libdevmapper-dev libsqlite3-dev libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f3281032ca91cfb53ef6488ae3aed64fb1a66e8d24b2758333a4114627ab5773" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:a722b8974ae80a9e14f6c27fd5b1a703018604e03dc354a563210adc0dce8c72" [label="sha256:a722b8974ae80a9e14f6c27fd5b1a703018604e03dc354a563210adc0dce8c72" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:35acca877e12658d5c12d6ea1e2679b7152a3cad29cde102423c66901b741022" [label=""];
  "sha256:35acca877e12658d5c12d6ea1e2679b7152a3cad29cde102423c66901b741022" -> "sha256:f3281032ca91cfb53ef6488ae3aed64fb1a66e8d24b2758333a4114627ab5773" [label=""];
  "sha256:f3281032ca91cfb53ef6488ae3aed64fb1a66e8d24b2758333a4114627ab5773" -> "sha256:a722b8974ae80a9e14f6c27fd5b1a703018604e03dc354a563210adc0dce8c72" [label=""];
}

