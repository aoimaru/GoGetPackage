[app/sources/345356512.Dockerfile]
digraph {
  "sha256:e4e4f42593aaaba9671d22efe6e219d8b9eb035cb3b8a5c3121b5a813f0e7b98" [label="docker-image://docker.io/balenalib/aarch64-fedora:26-run" shape="ellipse"];
  "sha256:db727fa09152e6fd47bb4352280cdfd170ca079f90dad7d1e01ac6364ddaa89d" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:c69f8ba8c5f18fcf77cf2c29e292bbc40a70db13b83ede2a4a81323004755816" [label="sha256:c69f8ba8c5f18fcf77cf2c29e292bbc40a70db13b83ede2a4a81323004755816" shape="plaintext"];
  "sha256:e4e4f42593aaaba9671d22efe6e219d8b9eb035cb3b8a5c3121b5a813f0e7b98" -> "sha256:db727fa09152e6fd47bb4352280cdfd170ca079f90dad7d1e01ac6364ddaa89d" [label=""];
  "sha256:db727fa09152e6fd47bb4352280cdfd170ca079f90dad7d1e01ac6364ddaa89d" -> "sha256:c69f8ba8c5f18fcf77cf2c29e292bbc40a70db13b83ede2a4a81323004755816" [label=""];
}

