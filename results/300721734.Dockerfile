[app/sources/300721734.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:9d78a2f0b532ef06b16978ae8d08e9b42ddc712e0487acd4c6f7c39d607d63c5" [label="local://context" shape="ellipse"];
  "sha256:8f1c0d0e5db1c0b05f5ecc2c312f3fc062f02cc6e6b0b2083c2c63456043b15e" [label="copy{src=/target/easyframe-monitor-master-SNAPSHOT-exec.jar, dest=/monitor.jar}" shape="note"];
  "sha256:dca5eaad1c850347465883c859051358a062e1a71eebe087d3f276ed8c798717" [label="/bin/sh -c sh -c 'touch /monitor.jar'" shape="box"];
  "sha256:e65f7e111f8d31184255a531f9951952b2377335c51b79c796bbc6cc3d1be2c3" [label="sha256:e65f7e111f8d31184255a531f9951952b2377335c51b79c796bbc6cc3d1be2c3" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:8f1c0d0e5db1c0b05f5ecc2c312f3fc062f02cc6e6b0b2083c2c63456043b15e" [label=""];
  "sha256:9d78a2f0b532ef06b16978ae8d08e9b42ddc712e0487acd4c6f7c39d607d63c5" -> "sha256:8f1c0d0e5db1c0b05f5ecc2c312f3fc062f02cc6e6b0b2083c2c63456043b15e" [label=""];
  "sha256:8f1c0d0e5db1c0b05f5ecc2c312f3fc062f02cc6e6b0b2083c2c63456043b15e" -> "sha256:dca5eaad1c850347465883c859051358a062e1a71eebe087d3f276ed8c798717" [label=""];
  "sha256:dca5eaad1c850347465883c859051358a062e1a71eebe087d3f276ed8c798717" -> "sha256:e65f7e111f8d31184255a531f9951952b2377335c51b79c796bbc6cc3d1be2c3" [label=""];
}

