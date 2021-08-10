[app/sources/435322769.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:56379309935a43a7f62a09695be6fe00e2769968b5053ec0bcc2421cb38de57f" [label="/bin/sh -c apt-get update && apt-get install libpq-dev wget curl unzip sudo -y" shape="box"];
  "sha256:c743faef83dc7a7bdf8e9068d792a88af77d759e71b3b09b6f29ff82179fcbce" [label="/bin/sh -c wget -qO- https://get.haskellstack.org/ | sh" shape="box"];
  "sha256:24b9c7110c6581ba203c0a3f7e78c28b57a34abaa0e4f59f4141c5cc8c1aaf8c" [label="/bin/sh -c stack setup --resolver=lts-13.20" shape="box"];
  "sha256:f5a30787013d37969c97ab188cd30380c464c3187cbd972289139f6cdeb37299" [label="/bin/sh -c useradd -m docker && echo \"docker:docker\" | chpasswd && adduser docker sudo" shape="box"];
  "sha256:d4817c2e17a176f0ddff3d93be6265921480b9f4ed6f8e49dd5cab04bfb6f617" [label="/bin/sh -c wget https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip && unzip protoc-3.5.1-linux-x86_64.zip && sudo mv ./bin/protoc /usr/local/bin" shape="box"];
  "sha256:2f39fcb3d65c1f8ad713ea3369eeacf3e3691f562871c0ab3594033a84059507" [label="sha256:2f39fcb3d65c1f8ad713ea3369eeacf3e3691f562871c0ab3594033a84059507" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:56379309935a43a7f62a09695be6fe00e2769968b5053ec0bcc2421cb38de57f" [label=""];
  "sha256:56379309935a43a7f62a09695be6fe00e2769968b5053ec0bcc2421cb38de57f" -> "sha256:c743faef83dc7a7bdf8e9068d792a88af77d759e71b3b09b6f29ff82179fcbce" [label=""];
  "sha256:c743faef83dc7a7bdf8e9068d792a88af77d759e71b3b09b6f29ff82179fcbce" -> "sha256:24b9c7110c6581ba203c0a3f7e78c28b57a34abaa0e4f59f4141c5cc8c1aaf8c" [label=""];
  "sha256:24b9c7110c6581ba203c0a3f7e78c28b57a34abaa0e4f59f4141c5cc8c1aaf8c" -> "sha256:f5a30787013d37969c97ab188cd30380c464c3187cbd972289139f6cdeb37299" [label=""];
  "sha256:f5a30787013d37969c97ab188cd30380c464c3187cbd972289139f6cdeb37299" -> "sha256:d4817c2e17a176f0ddff3d93be6265921480b9f4ed6f8e49dd5cab04bfb6f617" [label=""];
  "sha256:d4817c2e17a176f0ddff3d93be6265921480b9f4ed6f8e49dd5cab04bfb6f617" -> "sha256:2f39fcb3d65c1f8ad713ea3369eeacf3e3691f562871c0ab3594033a84059507" [label=""];
}

