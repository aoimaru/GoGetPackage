[app/sources/253989743.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:aa4a6b909fad00184bf2ab91db4857c3a6c1ebd9c73cdf741d65ec3bbbbb450a" [label="local://context" shape="ellipse"];
  "sha256:6e30e102ba925320c802f51b4b921dd9dc082862a31cceccee750ffd83e4cfd7" [label="copy{src=/target/apia-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:1b18273b56d7ca71028d626a2497d59a3bb556415313422321bdffed4a663ea3" [label="sha256:1b18273b56d7ca71028d626a2497d59a3bb556415313422321bdffed4a663ea3" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:6e30e102ba925320c802f51b4b921dd9dc082862a31cceccee750ffd83e4cfd7" [label=""];
  "sha256:aa4a6b909fad00184bf2ab91db4857c3a6c1ebd9c73cdf741d65ec3bbbbb450a" -> "sha256:6e30e102ba925320c802f51b4b921dd9dc082862a31cceccee750ffd83e4cfd7" [label=""];
  "sha256:6e30e102ba925320c802f51b4b921dd9dc082862a31cceccee750ffd83e4cfd7" -> "sha256:1b18273b56d7ca71028d626a2497d59a3bb556415313422321bdffed4a663ea3" [label=""];
}

