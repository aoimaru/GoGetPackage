[app/sources/263129817.Dockerfile]
digraph {
  "sha256:8e20a6f7988acb66c307d194da1221e408476ef3820d8f61f47031ce94f69ff6" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:faa3c7fa29d13134824a6da43cc702445cc7cc0203fcaeae712a01573b90fec1" [label="copy{src=/zoneinfo.zip, dest=/usr/local/go/lib/time/zoneinfo.zip}" shape="note"];
  "sha256:2aebacee5d2b396f088306924a4773f19d1d1cc40baac6368b8d04ee5423dc3f" [label="/bin/sh -c apt-get update && apt-get install -y curl ca-certificates git && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:492741c5c5b8af91fd7a6559b695e0a550d49fceec7e5e8d6c434f54cf8ccbd9" [label="copy{src=/pipeline, dest=/usr/bin/}" shape="note"];
  "sha256:4c0cee5c930637d1c1836090a1e88ecee9ca7a7dcbf7864f552a2dfef4868e6d" [label="sha256:4c0cee5c930637d1c1836090a1e88ecee9ca7a7dcbf7864f552a2dfef4868e6d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:faa3c7fa29d13134824a6da43cc702445cc7cc0203fcaeae712a01573b90fec1" [label=""];
  "sha256:8e20a6f7988acb66c307d194da1221e408476ef3820d8f61f47031ce94f69ff6" -> "sha256:faa3c7fa29d13134824a6da43cc702445cc7cc0203fcaeae712a01573b90fec1" [label=""];
  "sha256:faa3c7fa29d13134824a6da43cc702445cc7cc0203fcaeae712a01573b90fec1" -> "sha256:2aebacee5d2b396f088306924a4773f19d1d1cc40baac6368b8d04ee5423dc3f" [label=""];
  "sha256:2aebacee5d2b396f088306924a4773f19d1d1cc40baac6368b8d04ee5423dc3f" -> "sha256:492741c5c5b8af91fd7a6559b695e0a550d49fceec7e5e8d6c434f54cf8ccbd9" [label=""];
  "sha256:8e20a6f7988acb66c307d194da1221e408476ef3820d8f61f47031ce94f69ff6" -> "sha256:492741c5c5b8af91fd7a6559b695e0a550d49fceec7e5e8d6c434f54cf8ccbd9" [label=""];
  "sha256:492741c5c5b8af91fd7a6559b695e0a550d49fceec7e5e8d6c434f54cf8ccbd9" -> "sha256:4c0cee5c930637d1c1836090a1e88ecee9ca7a7dcbf7864f552a2dfef4868e6d" [label=""];
}

