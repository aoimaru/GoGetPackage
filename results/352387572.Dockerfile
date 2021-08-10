[app/sources/352387572.Dockerfile]
digraph {
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" [label="docker-image://docker.io/s390x/ubuntu:16.04" shape="ellipse"];
  "sha256:4d95d606002938cc08b326549f324c0ff3749ed216f4f516fbd57f99c411be40" [label="/bin/sh -c apt-get update && apt-get install -y phantomjs  && apt-get autoremove -y  && apt autoremove -y  && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0c7f7f62ce8dda9b7f1c0ef9a124d0ff356aba105f2bea91f909c92858a433c9" [label="sha256:0c7f7f62ce8dda9b7f1c0ef9a124d0ff356aba105f2bea91f909c92858a433c9" shape="plaintext"];
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" -> "sha256:4d95d606002938cc08b326549f324c0ff3749ed216f4f516fbd57f99c411be40" [label=""];
  "sha256:4d95d606002938cc08b326549f324c0ff3749ed216f4f516fbd57f99c411be40" -> "sha256:0c7f7f62ce8dda9b7f1c0ef9a124d0ff356aba105f2bea91f909c92858a433c9" [label=""];
}

