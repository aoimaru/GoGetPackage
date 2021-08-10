[app/sources/327010411.Dockerfile]
digraph {
  "sha256:4a4dce4a77e67c450f71f642e91b76f7d5d21944b6ad884fe088c0b1fcaf7d8d" [label="docker-image://docker.io/itzg/bungeecord:latest" shape="ellipse"];
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" [label="docker-image://docker.io/library/maven:latest" shape="ellipse"];
  "sha256:6af27746b870874c6d1c014e241aab73539658fc5c49a428390f75a10575430c" [label="mkdir{path=/build}" shape="note"];
  "sha256:933469bfd8eb297dae8eae64142f0ac3e01ad86e1059a9cb57b31a4fe319c034" [label="local://context" shape="ellipse"];
  "sha256:efd8c2cc24a93a16bcd332e5255596a1a922735154d9aaf38534dd7c3e6477a1" [label="copy{src=/src, dest=/build/}" shape="note"];
  "sha256:b6adc28c35c97bf37fa5fdadf4a3571c208239654dfd5152bd695ed9d6bc11f6" [label="copy{src=/pom.xml, dest=/build/}" shape="note"];
  "sha256:2ee522f5c723325d0f5d184a853d772c15fc952622fff80d779a341bdbcacffb" [label="/bin/sh -c mvn package" shape="box"];
  "sha256:e7146ccdff7d1e3bf7feb5cab40861f776a958119ea48795c965d000872d922f" [label="copy{src=/build/target/assembly/DockerizedCraft.jar, dest=/server/plugins/DockerizedCraft.jar}" shape="note"];
  "sha256:92e2e7addd2c3e73abbd2d03ce52783342386ba8010debe1d295a59238e95739" [label="sha256:92e2e7addd2c3e73abbd2d03ce52783342386ba8010debe1d295a59238e95739" shape="plaintext"];
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" -> "sha256:6af27746b870874c6d1c014e241aab73539658fc5c49a428390f75a10575430c" [label=""];
  "sha256:6af27746b870874c6d1c014e241aab73539658fc5c49a428390f75a10575430c" -> "sha256:efd8c2cc24a93a16bcd332e5255596a1a922735154d9aaf38534dd7c3e6477a1" [label=""];
  "sha256:933469bfd8eb297dae8eae64142f0ac3e01ad86e1059a9cb57b31a4fe319c034" -> "sha256:efd8c2cc24a93a16bcd332e5255596a1a922735154d9aaf38534dd7c3e6477a1" [label=""];
  "sha256:efd8c2cc24a93a16bcd332e5255596a1a922735154d9aaf38534dd7c3e6477a1" -> "sha256:b6adc28c35c97bf37fa5fdadf4a3571c208239654dfd5152bd695ed9d6bc11f6" [label=""];
  "sha256:933469bfd8eb297dae8eae64142f0ac3e01ad86e1059a9cb57b31a4fe319c034" -> "sha256:b6adc28c35c97bf37fa5fdadf4a3571c208239654dfd5152bd695ed9d6bc11f6" [label=""];
  "sha256:b6adc28c35c97bf37fa5fdadf4a3571c208239654dfd5152bd695ed9d6bc11f6" -> "sha256:2ee522f5c723325d0f5d184a853d772c15fc952622fff80d779a341bdbcacffb" [label=""];
  "sha256:4a4dce4a77e67c450f71f642e91b76f7d5d21944b6ad884fe088c0b1fcaf7d8d" -> "sha256:e7146ccdff7d1e3bf7feb5cab40861f776a958119ea48795c965d000872d922f" [label=""];
  "sha256:2ee522f5c723325d0f5d184a853d772c15fc952622fff80d779a341bdbcacffb" -> "sha256:e7146ccdff7d1e3bf7feb5cab40861f776a958119ea48795c965d000872d922f" [label=""];
  "sha256:e7146ccdff7d1e3bf7feb5cab40861f776a958119ea48795c965d000872d922f" -> "sha256:92e2e7addd2c3e73abbd2d03ce52783342386ba8010debe1d295a59238e95739" [label=""];
}

