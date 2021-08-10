[app/sources/342737819.Dockerfile]
digraph {
  "sha256:62d20e244ea7b187593d726a9d075113d45c04bec19e9340754c37b774077d58" [label="docker-image://docker.io/library/zookeeper:3.4" shape="ellipse"];
  "sha256:1413217c03aca6c66593fb2515c9f6d9cf5191e4ba3748bb52c51363c6eb4dce" [label="/bin/sh -c apk add --no-cache iptables" shape="box"];
  "sha256:c025176934c5ce94a91206c2b267db27caafd7d6845275c442a8813aa7c67498" [label="local://context" shape="ellipse"];
  "sha256:f4844f24de20e72a0ca58f6cc1bf1e46608f5eb1f1d64392e62c344cded55d65" [label="copy{src=/custom-entrypoint.sh, dest=/}" shape="note"];
  "sha256:4541bdd1a422c1c464f62b3404f11edc9675fa29dbf6f84e5572c69e572f843b" [label="/bin/sh -c cat /docker-entrypoint.sh >> /custom-entrypoint.sh" shape="box"];
  "sha256:a2ca91f33632e354f4824ea29b2c7bbaef452847d5a4db90e517f17a62d3919c" [label="sha256:a2ca91f33632e354f4824ea29b2c7bbaef452847d5a4db90e517f17a62d3919c" shape="plaintext"];
  "sha256:62d20e244ea7b187593d726a9d075113d45c04bec19e9340754c37b774077d58" -> "sha256:1413217c03aca6c66593fb2515c9f6d9cf5191e4ba3748bb52c51363c6eb4dce" [label=""];
  "sha256:1413217c03aca6c66593fb2515c9f6d9cf5191e4ba3748bb52c51363c6eb4dce" -> "sha256:f4844f24de20e72a0ca58f6cc1bf1e46608f5eb1f1d64392e62c344cded55d65" [label=""];
  "sha256:c025176934c5ce94a91206c2b267db27caafd7d6845275c442a8813aa7c67498" -> "sha256:f4844f24de20e72a0ca58f6cc1bf1e46608f5eb1f1d64392e62c344cded55d65" [label=""];
  "sha256:f4844f24de20e72a0ca58f6cc1bf1e46608f5eb1f1d64392e62c344cded55d65" -> "sha256:4541bdd1a422c1c464f62b3404f11edc9675fa29dbf6f84e5572c69e572f843b" [label=""];
  "sha256:4541bdd1a422c1c464f62b3404f11edc9675fa29dbf6f84e5572c69e572f843b" -> "sha256:a2ca91f33632e354f4824ea29b2c7bbaef452847d5a4db90e517f17a62d3919c" [label=""];
}

