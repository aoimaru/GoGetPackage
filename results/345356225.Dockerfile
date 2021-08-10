[app/sources/345356225.Dockerfile]
digraph {
  "sha256:8b36ef8c6fc5327211f6fa2f4e3f922ef270a3a33a2a0fde13500973163113f8" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:xenial-build" shape="ellipse"];
  "sha256:ae166a6aa946652342aff60479fe32b2dcf01de9e4be83d3ed201591fd83869a" [label="/bin/sh -c echo \"deb [arch=armhf] http://repos.rcn-ee.net/ubuntu/ xenial main\" >> /etc/apt/sources.list \t&& apt-key adv --keyserver keyserver.ubuntu.com --recv-key D284E608A4C46402" shape="box"];
  "sha256:8c104b87d3a20506800fd4eca62d6d193a3c7073e9c063de926b942d8d9f377d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8cc374fdedfabf0b333b11378ae9b4aaebfeed702c4970190d35963e5416efdf" [label="sha256:8cc374fdedfabf0b333b11378ae9b4aaebfeed702c4970190d35963e5416efdf" shape="plaintext"];
  "sha256:8b36ef8c6fc5327211f6fa2f4e3f922ef270a3a33a2a0fde13500973163113f8" -> "sha256:ae166a6aa946652342aff60479fe32b2dcf01de9e4be83d3ed201591fd83869a" [label=""];
  "sha256:ae166a6aa946652342aff60479fe32b2dcf01de9e4be83d3ed201591fd83869a" -> "sha256:8c104b87d3a20506800fd4eca62d6d193a3c7073e9c063de926b942d8d9f377d" [label=""];
  "sha256:8c104b87d3a20506800fd4eca62d6d193a3c7073e9c063de926b942d8d9f377d" -> "sha256:8cc374fdedfabf0b333b11378ae9b4aaebfeed702c4970190d35963e5416efdf" [label=""];
}

