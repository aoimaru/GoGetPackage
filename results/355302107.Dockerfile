[app/sources/355302107.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:7726b089f8309b25935021a5ba56e0881f2b2db8e31ce5354203bb97aefd7235" [label="/bin/sh -c apt-get update && apt-get install -y python" shape="box"];
  "sha256:66a731153025e897b214a0d63494b01a5bac634932a83d0de3e7f71c21e62a94" [label="local://context" shape="ellipse"];
  "sha256:fe83b7acf00f1602b3ce7ee86b36cd84c43750fcd23a49e0aca39b8c61d76085" [label="copy{src=/pinger.py, dest=/}" shape="note"];
  "sha256:c47577792f96dffe2fb922699f4af25659e6460404464db5e73bd77a0474ce08" [label="sha256:c47577792f96dffe2fb922699f4af25659e6460404464db5e73bd77a0474ce08" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:7726b089f8309b25935021a5ba56e0881f2b2db8e31ce5354203bb97aefd7235" [label=""];
  "sha256:7726b089f8309b25935021a5ba56e0881f2b2db8e31ce5354203bb97aefd7235" -> "sha256:fe83b7acf00f1602b3ce7ee86b36cd84c43750fcd23a49e0aca39b8c61d76085" [label=""];
  "sha256:66a731153025e897b214a0d63494b01a5bac634932a83d0de3e7f71c21e62a94" -> "sha256:fe83b7acf00f1602b3ce7ee86b36cd84c43750fcd23a49e0aca39b8c61d76085" [label=""];
  "sha256:fe83b7acf00f1602b3ce7ee86b36cd84c43750fcd23a49e0aca39b8c61d76085" -> "sha256:c47577792f96dffe2fb922699f4af25659e6460404464db5e73bd77a0474ce08" [label=""];
}

