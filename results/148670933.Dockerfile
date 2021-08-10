[app/sources/148670933.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:d66635f4d7efe8be92e0c83f2c0016f8d52c30193bfae9bea2c43911484e8930" [label="mkdir{path=/servermonitor}" shape="note"];
  "sha256:038696b06a3dc97ee7d076005250904489e72df534ba8dbc20ba0e493001459e" [label="/bin/sh -c git clone https://github.com/ChristianLutzCL/ServerMonitor.git /servermonitor" shape="box"];
  "sha256:98c0b885fb4f1e9297a224657c7d43f78488e209447ef0e4931125689e21a22d" [label="/bin/sh -c pip install -r /servermonitor/requirements.txt" shape="box"];
  "sha256:4dfad94f375b0eea4c485b54f45228ef924437f8a4ea892d7ce1e6e020be859e" [label="/bin/sh -c pip install ." shape="box"];
  "sha256:3dbac0079c5f0ed78798f217a8d5431ee6dceac1f8ef7aa2a272f943a964bd5f" [label="sha256:3dbac0079c5f0ed78798f217a8d5431ee6dceac1f8ef7aa2a272f943a964bd5f" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:d66635f4d7efe8be92e0c83f2c0016f8d52c30193bfae9bea2c43911484e8930" [label=""];
  "sha256:d66635f4d7efe8be92e0c83f2c0016f8d52c30193bfae9bea2c43911484e8930" -> "sha256:038696b06a3dc97ee7d076005250904489e72df534ba8dbc20ba0e493001459e" [label=""];
  "sha256:038696b06a3dc97ee7d076005250904489e72df534ba8dbc20ba0e493001459e" -> "sha256:98c0b885fb4f1e9297a224657c7d43f78488e209447ef0e4931125689e21a22d" [label=""];
  "sha256:98c0b885fb4f1e9297a224657c7d43f78488e209447ef0e4931125689e21a22d" -> "sha256:4dfad94f375b0eea4c485b54f45228ef924437f8a4ea892d7ce1e6e020be859e" [label=""];
  "sha256:4dfad94f375b0eea4c485b54f45228ef924437f8a4ea892d7ce1e6e020be859e" -> "sha256:3dbac0079c5f0ed78798f217a8d5431ee6dceac1f8ef7aa2a272f943a964bd5f" [label=""];
}

