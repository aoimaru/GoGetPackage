[app/sources/342869109.Dockerfile]
digraph {
  "sha256:c67f89bcb111aee72941facd795c3f502640626c051c266230017c93e9515bd3" [label="docker-image://docker.io/strongdm/pandoc:latest" shape="ellipse"];
  "sha256:6ec6e1ae20e6211627fdfa85769882e6f4d127c86375414f632b6778a2d2deb7" [label="/bin/sh -c apt-get update -y   && apt-get install -y curl" shape="box"];
  "sha256:93f1166fa0b7a14a5ea321e7def0756c1745fbf8245e444af96f7a132a0a843f" [label="/bin/sh -c curl -J -L -o /tmp/comply.tgz https://github.com/strongdm/comply/releases/download/v${COMPLY_VERSION}/comply-v${COMPLY_VERSION}-linux-amd64.tgz   && tar -xzf /tmp/comply.tgz   && mv ./comply-v${COMPLY_VERSION}-linux-amd64 /usr/local/bin/comply" shape="box"];
  "sha256:9f77f6bb66f6e1f8c7714421ad9a9d64b218889310f2a7cc8803d166dc8adc14" [label="mkdir{path=/source}" shape="note"];
  "sha256:d2822c5b378b3e6928d7111ac5f1de11152cc1ee6e72f992af5601b0269f656c" [label="sha256:d2822c5b378b3e6928d7111ac5f1de11152cc1ee6e72f992af5601b0269f656c" shape="plaintext"];
  "sha256:c67f89bcb111aee72941facd795c3f502640626c051c266230017c93e9515bd3" -> "sha256:6ec6e1ae20e6211627fdfa85769882e6f4d127c86375414f632b6778a2d2deb7" [label=""];
  "sha256:6ec6e1ae20e6211627fdfa85769882e6f4d127c86375414f632b6778a2d2deb7" -> "sha256:93f1166fa0b7a14a5ea321e7def0756c1745fbf8245e444af96f7a132a0a843f" [label=""];
  "sha256:93f1166fa0b7a14a5ea321e7def0756c1745fbf8245e444af96f7a132a0a843f" -> "sha256:9f77f6bb66f6e1f8c7714421ad9a9d64b218889310f2a7cc8803d166dc8adc14" [label=""];
  "sha256:9f77f6bb66f6e1f8c7714421ad9a9d64b218889310f2a7cc8803d166dc8adc14" -> "sha256:d2822c5b378b3e6928d7111ac5f1de11152cc1ee6e72f992af5601b0269f656c" [label=""];
}

