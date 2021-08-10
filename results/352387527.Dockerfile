[app/sources/352387527.Dockerfile]
digraph {
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" [label="docker-image://docker.io/s390x/ubuntu:16.04" shape="ellipse"];
  "sha256:9c1c814deef100f0f898b8a877df46a9bf2dda26a2d0bac18f43ce0d00826b5f" [label="mkdir{path=/root}" shape="note"];
  "sha256:bc6c3de7bc029283c4218126c2bf668aefb7528982c31bfdcb6a1c142a308442" [label="/bin/sh -c apt-get update    && apt-get install  -y          gcc          make          ruby          ruby-dev   && gem install fluentd -v 1.5.0   && gem list fluentd   && fluentd -s /etc/fluent   && mkdir -p /fluentd/log   && apt-get remove -y          gcc          make   && apt-get autoremove -y   && apt autoremove -y   && apt-get clean   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4667082ae3c95e7113591fc149cf38c78a19d4eaae9e939ed3caca1162f189c5" [label="sha256:4667082ae3c95e7113591fc149cf38c78a19d4eaae9e939ed3caca1162f189c5" shape="plaintext"];
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" -> "sha256:9c1c814deef100f0f898b8a877df46a9bf2dda26a2d0bac18f43ce0d00826b5f" [label=""];
  "sha256:9c1c814deef100f0f898b8a877df46a9bf2dda26a2d0bac18f43ce0d00826b5f" -> "sha256:bc6c3de7bc029283c4218126c2bf668aefb7528982c31bfdcb6a1c142a308442" [label=""];
  "sha256:bc6c3de7bc029283c4218126c2bf668aefb7528982c31bfdcb6a1c142a308442" -> "sha256:4667082ae3c95e7113591fc149cf38c78a19d4eaae9e939ed3caca1162f189c5" [label=""];
}

