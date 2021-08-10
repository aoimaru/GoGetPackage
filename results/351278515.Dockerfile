[app/sources/351278515.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:459dd66a5fa11145f3b5c0ec336f84200047534f6da20a3fc1c194184612a1ba" [label="/bin/sh -c apt-get install -y iptables bridge-utils" shape="box"];
  "sha256:cf7aefb0daeca13f6bcbc1ad596644cf80f5f36ccba3b6857a1c536783fe896b" [label="local://context" shape="ellipse"];
  "sha256:e56473892a9da846c8e800cfbaa78717ec834ada94952973ff20da2610dfc164" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:0836c1e18c1c806cf411ceae5243213de438f3c66160a7e4426878b2c896ee8c" [label="/bin/sh -c chmod +x start.sh" shape="box"];
  "sha256:62dbdd642527fb9edc39aab226cf65df4d49ec7d02d5e1a4c54b5d7b3ff58045" [label="sha256:62dbdd642527fb9edc39aab226cf65df4d49ec7d02d5e1a4c54b5d7b3ff58045" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:459dd66a5fa11145f3b5c0ec336f84200047534f6da20a3fc1c194184612a1ba" [label=""];
  "sha256:459dd66a5fa11145f3b5c0ec336f84200047534f6da20a3fc1c194184612a1ba" -> "sha256:e56473892a9da846c8e800cfbaa78717ec834ada94952973ff20da2610dfc164" [label=""];
  "sha256:cf7aefb0daeca13f6bcbc1ad596644cf80f5f36ccba3b6857a1c536783fe896b" -> "sha256:e56473892a9da846c8e800cfbaa78717ec834ada94952973ff20da2610dfc164" [label=""];
  "sha256:e56473892a9da846c8e800cfbaa78717ec834ada94952973ff20da2610dfc164" -> "sha256:0836c1e18c1c806cf411ceae5243213de438f3c66160a7e4426878b2c896ee8c" [label=""];
  "sha256:0836c1e18c1c806cf411ceae5243213de438f3c66160a7e4426878b2c896ee8c" -> "sha256:62dbdd642527fb9edc39aab226cf65df4d49ec7d02d5e1a4c54b5d7b3ff58045" [label=""];
}

