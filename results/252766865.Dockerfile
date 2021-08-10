[app/sources/252766865.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:da0f59848af09aa770d405bd33a189dd8d82fec346616e80578211ddff110306" [label="local://context" shape="ellipse"];
  "sha256:1e58979d962b283efd98a2b6d2001592f5dbfb1f07f5fd235518d65480ad31d3" [label="copy{src=/redis-server_2.8.19.deb, dest=/redis-server.deb}" shape="note"];
  "sha256:273c5fbd8d028f9622b4dcd148a31c2a090f5204c1c94f67b6218d9c5089bea9" [label="/bin/sh -c dpkg -i redis-server.deb" shape="box"];
  "sha256:4a6a00980f6adc5fbcb50eb9f996c0592d06ea7183c7eaef8d9e4f013e248a45" [label="sha256:4a6a00980f6adc5fbcb50eb9f996c0592d06ea7183c7eaef8d9e4f013e248a45" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:1e58979d962b283efd98a2b6d2001592f5dbfb1f07f5fd235518d65480ad31d3" [label=""];
  "sha256:da0f59848af09aa770d405bd33a189dd8d82fec346616e80578211ddff110306" -> "sha256:1e58979d962b283efd98a2b6d2001592f5dbfb1f07f5fd235518d65480ad31d3" [label=""];
  "sha256:1e58979d962b283efd98a2b6d2001592f5dbfb1f07f5fd235518d65480ad31d3" -> "sha256:273c5fbd8d028f9622b4dcd148a31c2a090f5204c1c94f67b6218d9c5089bea9" [label=""];
  "sha256:273c5fbd8d028f9622b4dcd148a31c2a090f5204c1c94f67b6218d9c5089bea9" -> "sha256:4a6a00980f6adc5fbcb50eb9f996c0592d06ea7183c7eaef8d9e4f013e248a45" [label=""];
}

