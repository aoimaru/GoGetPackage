[app/sources/353287192.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:61b4043afd1fd2d1799175b95c6cd6f66eab92c6794b1d0228809669d37f9e0c" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:85c1677627c8f2b3064f170c702b4123c3399326e2e2044edd80fee4b54b4dba" [label="/bin/sh -c yum install -y        java-1.8.0-openjdk" shape="box"];
  "sha256:9c19493dbe3e9e6c1e57890e3b1c67d8ca71d3bde66a7b749394875437d6f4b1" [label="local://context" shape="ellipse"];
  "sha256:bae06f188339744da32781f8d9c003c882693f1b2ca634983430f34585ee85a8" [label="copy{src=/agent-bond-opts, dest=/opt/run-java-options}" shape="note"];
  "sha256:692e0eca54b3286dfd3913d641ef9de4bdb99c6c2ebf4560bdb5525bee5587a1" [label="/bin/sh -c mkdir -p /opt/agent-bond  && curl http://central.maven.org/maven2/io/fabric8/agent-bond-agent/0.1.3/agent-bond-agent-0.1.3.jar           -o /opt/agent-bond/agent-bond.jar  && chmod 444 /opt/agent-bond/agent-bond.jar  && chmod 755 /opt/run-java-options" shape="box"];
  "sha256:7e0846cbb388e61c5dfd20dc83a02c8d18664c121a4b6b6a4a9d662ce9516c18" [label="copy{src=/jmx_exporter_config.yml, dest=/opt/agent-bond/}" shape="note"];
  "sha256:fe7122cb5394a67d6e0d9a95011d948dad3226f0cc30e6d3a114d13e66816483" [label="copy{src=/run-java.sh, dest=/app/run-java.sh}" shape="note"];
  "sha256:41e5f0014ad610f4803b9a352f59168c4512159d6831db259e44a68d3f9bef0b" [label="/bin/sh -c chmod 755 /app/run-java.sh" shape="box"];
  "sha256:37e542a6c9a9b823c752f6e7390a0350da02b67b3bb40ae03495452ab815b18f" [label="sha256:37e542a6c9a9b823c752f6e7390a0350da02b67b3bb40ae03495452ab815b18f" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:61b4043afd1fd2d1799175b95c6cd6f66eab92c6794b1d0228809669d37f9e0c" [label=""];
  "sha256:61b4043afd1fd2d1799175b95c6cd6f66eab92c6794b1d0228809669d37f9e0c" -> "sha256:85c1677627c8f2b3064f170c702b4123c3399326e2e2044edd80fee4b54b4dba" [label=""];
  "sha256:85c1677627c8f2b3064f170c702b4123c3399326e2e2044edd80fee4b54b4dba" -> "sha256:bae06f188339744da32781f8d9c003c882693f1b2ca634983430f34585ee85a8" [label=""];
  "sha256:9c19493dbe3e9e6c1e57890e3b1c67d8ca71d3bde66a7b749394875437d6f4b1" -> "sha256:bae06f188339744da32781f8d9c003c882693f1b2ca634983430f34585ee85a8" [label=""];
  "sha256:bae06f188339744da32781f8d9c003c882693f1b2ca634983430f34585ee85a8" -> "sha256:692e0eca54b3286dfd3913d641ef9de4bdb99c6c2ebf4560bdb5525bee5587a1" [label=""];
  "sha256:692e0eca54b3286dfd3913d641ef9de4bdb99c6c2ebf4560bdb5525bee5587a1" -> "sha256:7e0846cbb388e61c5dfd20dc83a02c8d18664c121a4b6b6a4a9d662ce9516c18" [label=""];
  "sha256:9c19493dbe3e9e6c1e57890e3b1c67d8ca71d3bde66a7b749394875437d6f4b1" -> "sha256:7e0846cbb388e61c5dfd20dc83a02c8d18664c121a4b6b6a4a9d662ce9516c18" [label=""];
  "sha256:7e0846cbb388e61c5dfd20dc83a02c8d18664c121a4b6b6a4a9d662ce9516c18" -> "sha256:fe7122cb5394a67d6e0d9a95011d948dad3226f0cc30e6d3a114d13e66816483" [label=""];
  "sha256:9c19493dbe3e9e6c1e57890e3b1c67d8ca71d3bde66a7b749394875437d6f4b1" -> "sha256:fe7122cb5394a67d6e0d9a95011d948dad3226f0cc30e6d3a114d13e66816483" [label=""];
  "sha256:fe7122cb5394a67d6e0d9a95011d948dad3226f0cc30e6d3a114d13e66816483" -> "sha256:41e5f0014ad610f4803b9a352f59168c4512159d6831db259e44a68d3f9bef0b" [label=""];
  "sha256:41e5f0014ad610f4803b9a352f59168c4512159d6831db259e44a68d3f9bef0b" -> "sha256:37e542a6c9a9b823c752f6e7390a0350da02b67b3bb40ae03495452ab815b18f" [label=""];
}

