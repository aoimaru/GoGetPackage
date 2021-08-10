[app/sources/166203091.Dockerfile]
digraph {
  "sha256:dbb0f83f5aeae0ba67afbfd310241e0f72e4fd5a6b517670283d1360f8dd7e2d" [label="docker-image://docker.io/scalyr/scalyr-k8s-agent:latest" shape="ellipse"];
  "sha256:525b29271f3eb501a1b349208e75308c515704969fdf18ece101e08047fe7992" [label="local://context" shape="ellipse"];
  "sha256:d7b597f0aeeeb1ed5edd03f8637b92301046fe8f2c1273de85fe5521e8c64e69" [label="copy{src=/agent_config.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:20c447a79e287535b775a8b5f958190ff5186c8e34c3990ffd435990afc47fbf" [label="/bin/sh -c tar --no-same-owner -C /etc/scalyr-agent-2 -zxf /tmp/agent_config.tar.gz &&   rm /tmp/agent_config.tar.gz" shape="box"];
  "sha256:7d2a6341de4eed4126e0f92ae2c9c440a62687ffa5578bf682c363c1caacb393" [label="sha256:7d2a6341de4eed4126e0f92ae2c9c440a62687ffa5578bf682c363c1caacb393" shape="plaintext"];
  "sha256:dbb0f83f5aeae0ba67afbfd310241e0f72e4fd5a6b517670283d1360f8dd7e2d" -> "sha256:d7b597f0aeeeb1ed5edd03f8637b92301046fe8f2c1273de85fe5521e8c64e69" [label=""];
  "sha256:525b29271f3eb501a1b349208e75308c515704969fdf18ece101e08047fe7992" -> "sha256:d7b597f0aeeeb1ed5edd03f8637b92301046fe8f2c1273de85fe5521e8c64e69" [label=""];
  "sha256:d7b597f0aeeeb1ed5edd03f8637b92301046fe8f2c1273de85fe5521e8c64e69" -> "sha256:20c447a79e287535b775a8b5f958190ff5186c8e34c3990ffd435990afc47fbf" [label=""];
  "sha256:20c447a79e287535b775a8b5f958190ff5186c8e34c3990ffd435990afc47fbf" -> "sha256:7d2a6341de4eed4126e0f92ae2c9c440a62687ffa5578bf682c363c1caacb393" [label=""];
}

