[app/sources/252786295.Dockerfile]
digraph {
  "sha256:6c7ebbc51b6deb983f5face6324228882c53c7272d46ee952683c226c385b44c" [label="docker-image://docker.io/prom/blackbox-exporter:latest" shape="ellipse"];
  "sha256:1ab3effe4dbb2e215270cbf0fea7acc310aef1c06cfb609f950951eda6e6c422" [label="/bin/sh -c mkdir -p /etc/blackbox" shape="box"];
  "sha256:71c1a0d5f9fc6d7f8370699da80a27349a0858f211422d9792bf5850915113d2" [label="local://context" shape="ellipse"];
  "sha256:ee9261e9262edfabf32e8fa8bad5ed93c89b7f9e2200ff7ce8da43cfc973bf96" [label="copy{src=/blackbox.yml, dest=/etc/blackbox/}" shape="note"];
  "sha256:56d22e7c831dada8396ca6dd31f8ba767747ccfb9a7d50bb6f8274d5a17c338b" [label="sha256:56d22e7c831dada8396ca6dd31f8ba767747ccfb9a7d50bb6f8274d5a17c338b" shape="plaintext"];
  "sha256:6c7ebbc51b6deb983f5face6324228882c53c7272d46ee952683c226c385b44c" -> "sha256:1ab3effe4dbb2e215270cbf0fea7acc310aef1c06cfb609f950951eda6e6c422" [label=""];
  "sha256:1ab3effe4dbb2e215270cbf0fea7acc310aef1c06cfb609f950951eda6e6c422" -> "sha256:ee9261e9262edfabf32e8fa8bad5ed93c89b7f9e2200ff7ce8da43cfc973bf96" [label=""];
  "sha256:71c1a0d5f9fc6d7f8370699da80a27349a0858f211422d9792bf5850915113d2" -> "sha256:ee9261e9262edfabf32e8fa8bad5ed93c89b7f9e2200ff7ce8da43cfc973bf96" [label=""];
  "sha256:ee9261e9262edfabf32e8fa8bad5ed93c89b7f9e2200ff7ce8da43cfc973bf96" -> "sha256:56d22e7c831dada8396ca6dd31f8ba767747ccfb9a7d50bb6f8274d5a17c338b" [label=""];
}

