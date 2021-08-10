[app/sources/360652284.Dockerfile]
digraph {
  "sha256:ffb51281f3bdcbbfafa1af30df2d1ccd9e27d0decbe9091cb500b0509f450834" [label="docker-image://docker.io/beevelop/nodejs:6" shape="ellipse"];
  "sha256:b8071292e088d9c5f71aaf1419cf0ac36e1d6a8114cced523a0c50b3ab5e8e8b" [label="/bin/sh -c apt-get update &&   apt-get install -y python python-dev python-pip python-virtualenv &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:351d2b0b061bd00d49388e93823fd0c8a76ad671d7aa5fe2e2d8d3a765096167" [label="sha256:351d2b0b061bd00d49388e93823fd0c8a76ad671d7aa5fe2e2d8d3a765096167" shape="plaintext"];
  "sha256:ffb51281f3bdcbbfafa1af30df2d1ccd9e27d0decbe9091cb500b0509f450834" -> "sha256:b8071292e088d9c5f71aaf1419cf0ac36e1d6a8114cced523a0c50b3ab5e8e8b" [label=""];
  "sha256:b8071292e088d9c5f71aaf1419cf0ac36e1d6a8114cced523a0c50b3ab5e8e8b" -> "sha256:351d2b0b061bd00d49388e93823fd0c8a76ad671d7aa5fe2e2d8d3a765096167" [label=""];
}

