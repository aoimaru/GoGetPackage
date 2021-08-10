[app/sources/425992939.Dockerfile]
digraph {
  "sha256:8c5e784ba1b297a53588f4ad657f1d3b98c8d5488b85982c449a2ee3168e06a8" [label="docker-image://docker.io/linuxmintd/mint18-amd64:latest" shape="ellipse"];
  "sha256:37050af1db61426ab094679723cae97da249cd83bc2c950eef64207e7e4906c7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends       build-essential       ccache       cmake       gettext       git       libcurl4-openssl-dev       liblua5.3-dev       libwxgtk-webview3.0-dev       lsb-release       rapidjson-dev  && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0a19b92e1627a746d87a0b95091c99980c9e1bb5db02971b0b2529a7f1577e12" [label="sha256:0a19b92e1627a746d87a0b95091c99980c9e1bb5db02971b0b2529a7f1577e12" shape="plaintext"];
  "sha256:8c5e784ba1b297a53588f4ad657f1d3b98c8d5488b85982c449a2ee3168e06a8" -> "sha256:37050af1db61426ab094679723cae97da249cd83bc2c950eef64207e7e4906c7" [label=""];
  "sha256:37050af1db61426ab094679723cae97da249cd83bc2c950eef64207e7e4906c7" -> "sha256:0a19b92e1627a746d87a0b95091c99980c9e1bb5db02971b0b2529a7f1577e12" [label=""];
}

