[app/sources/417400777.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:61c593858b7fd285cf08de40d5a9f4f06d121a7cef76be96ce6aee8d8adbeb12" [label="/bin/sh -c yum -q -y install     curl     gcc     gcc-c++     git     java-1.8.0-openjdk-devel     make     openssl     python     python-devel     python-setuptools     rpm-build     which   && yum clean all   && rm -rf /var/cache/yum" shape="box"];
  "sha256:1f53b25671ebf9445c43cf01c9fd3344c71e5cd4314df97c19e4a9bb3ce95f1d" [label="/bin/sh -c curl -LSs -o /usr/local/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64   && chmod 755 /usr/local/bin/jq" shape="box"];
  "sha256:05b7ce88a6afd53db2e1e3df05b5d4b1f27c7e1aa1824397a25e84d5b30774d5" [label="sha256:05b7ce88a6afd53db2e1e3df05b5d4b1f27c7e1aa1824397a25e84d5b30774d5" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:61c593858b7fd285cf08de40d5a9f4f06d121a7cef76be96ce6aee8d8adbeb12" [label=""];
  "sha256:61c593858b7fd285cf08de40d5a9f4f06d121a7cef76be96ce6aee8d8adbeb12" -> "sha256:1f53b25671ebf9445c43cf01c9fd3344c71e5cd4314df97c19e4a9bb3ce95f1d" [label=""];
  "sha256:1f53b25671ebf9445c43cf01c9fd3344c71e5cd4314df97c19e4a9bb3ce95f1d" -> "sha256:05b7ce88a6afd53db2e1e3df05b5d4b1f27c7e1aa1824397a25e84d5b30774d5" [label=""];
}

