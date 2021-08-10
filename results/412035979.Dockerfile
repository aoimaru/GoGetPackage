[app/sources/412035979.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:042f43697b5d3e63bb6ea3c7ca5573639c55685eb39c8a59b02eb2a6950de140" [label="/bin/sh -c apt-get update &&     apt-get install -y \t\t\tcurl \t\t\tpython \t\t\tsudo \t\t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e6987b5271743cdfec9c76deddc73482d528a54821186fca768c159c5e5d8169" [label="/bin/sh -c useradd -ms /bin/bash user \t\t&& echo 'user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers" shape="box"];
  "sha256:10554223e851c173d2d264cc6adcf03e35414ad84b0d8b47048546eb823dc2e3" [label="sha256:10554223e851c173d2d264cc6adcf03e35414ad84b0d8b47048546eb823dc2e3" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:042f43697b5d3e63bb6ea3c7ca5573639c55685eb39c8a59b02eb2a6950de140" [label=""];
  "sha256:042f43697b5d3e63bb6ea3c7ca5573639c55685eb39c8a59b02eb2a6950de140" -> "sha256:e6987b5271743cdfec9c76deddc73482d528a54821186fca768c159c5e5d8169" [label=""];
  "sha256:e6987b5271743cdfec9c76deddc73482d528a54821186fca768c159c5e5d8169" -> "sha256:10554223e851c173d2d264cc6adcf03e35414ad84b0d8b47048546eb823dc2e3" [label=""];
}

