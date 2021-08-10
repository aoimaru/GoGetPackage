[app/sources/252786128.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:9c7ba1042f559af0dff83f10b83041b2f3c059d99f7d3bbccfdf5b4b4ec761e3" [label="/bin/sh -c apt-get update && apt-get install -y curl unzip xdg-user-dirs && rm -rf /var/lib/apt/lists/" shape="box"];
  "sha256:c5815125cadf61a070d8c26eab0214e9925f0dbabeb1da737991d794affac11a" [label="local://context" shape="ellipse"];
  "sha256:a8a89ad5ed8c1a8eb9dd80079eea696fb31a1770585e9b282d8eb39bfd4c1d53" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6eabb3dbf108ddf628fd35027f167f383769bdb9a58113898fc60c625f04b1c6" [label="copy{src=/update.sh, dest=/update.sh}" shape="note"];
  "sha256:bf85b52cd874bdcbf6de408b18b644032df42da7ee22ee6ad0da9c87f4d1c3a9" [label="/bin/sh -c chmod +x /update.sh && chmod +x /entrypoint.sh && sleep 1 && /update.sh" shape="box"];
  "sha256:a9329fe84e3877fe46a8fc64b2d1ceabfb3e305da22ee9d0cd2e9a4e27f5cf94" [label="copy{src=/DefaultGame.ini, dest=/LinuxServer/}" shape="note"];
  "sha256:814dec97c1454ec1e50d5284cf1ec2ea465de8257da083fffe11b27e3b93d02f" [label="sha256:814dec97c1454ec1e50d5284cf1ec2ea465de8257da083fffe11b27e3b93d02f" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:9c7ba1042f559af0dff83f10b83041b2f3c059d99f7d3bbccfdf5b4b4ec761e3" [label=""];
  "sha256:9c7ba1042f559af0dff83f10b83041b2f3c059d99f7d3bbccfdf5b4b4ec761e3" -> "sha256:a8a89ad5ed8c1a8eb9dd80079eea696fb31a1770585e9b282d8eb39bfd4c1d53" [label=""];
  "sha256:c5815125cadf61a070d8c26eab0214e9925f0dbabeb1da737991d794affac11a" -> "sha256:a8a89ad5ed8c1a8eb9dd80079eea696fb31a1770585e9b282d8eb39bfd4c1d53" [label=""];
  "sha256:a8a89ad5ed8c1a8eb9dd80079eea696fb31a1770585e9b282d8eb39bfd4c1d53" -> "sha256:6eabb3dbf108ddf628fd35027f167f383769bdb9a58113898fc60c625f04b1c6" [label=""];
  "sha256:c5815125cadf61a070d8c26eab0214e9925f0dbabeb1da737991d794affac11a" -> "sha256:6eabb3dbf108ddf628fd35027f167f383769bdb9a58113898fc60c625f04b1c6" [label=""];
  "sha256:6eabb3dbf108ddf628fd35027f167f383769bdb9a58113898fc60c625f04b1c6" -> "sha256:bf85b52cd874bdcbf6de408b18b644032df42da7ee22ee6ad0da9c87f4d1c3a9" [label=""];
  "sha256:bf85b52cd874bdcbf6de408b18b644032df42da7ee22ee6ad0da9c87f4d1c3a9" -> "sha256:a9329fe84e3877fe46a8fc64b2d1ceabfb3e305da22ee9d0cd2e9a4e27f5cf94" [label=""];
  "sha256:c5815125cadf61a070d8c26eab0214e9925f0dbabeb1da737991d794affac11a" -> "sha256:a9329fe84e3877fe46a8fc64b2d1ceabfb3e305da22ee9d0cd2e9a4e27f5cf94" [label=""];
  "sha256:a9329fe84e3877fe46a8fc64b2d1ceabfb3e305da22ee9d0cd2e9a4e27f5cf94" -> "sha256:814dec97c1454ec1e50d5284cf1ec2ea465de8257da083fffe11b27e3b93d02f" [label=""];
}

