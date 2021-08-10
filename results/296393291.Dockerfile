[app/sources/296393291.Dockerfile]
digraph {
  "sha256:31b01fbca1af51116e6f84bfbbb461ab99d42401fcf7e83997156d32621c6f90" [label="docker-image://docker.io/fabric8/java-alpine-openjdk8-jdk:1.6.2" shape="ellipse"];
  "sha256:4ec0e3b2d1b19da5a084af9164d84748709c359d1970ab295931299e70933310" [label="local://context" shape="ellipse"];
  "sha256:b87ef535b72a1a623c017e521c34868724eacca168622f1c1b4bccf232cc6ae8" [label="copy{src=/target/java-container.jar, dest=/deployments/}" shape="note"];
  "sha256:c06e3e1d532b5e85208f928d1b1ade5d3c184a6c6c646561ad3947f0f6f12c92" [label="sha256:c06e3e1d532b5e85208f928d1b1ade5d3c184a6c6c646561ad3947f0f6f12c92" shape="plaintext"];
  "sha256:31b01fbca1af51116e6f84bfbbb461ab99d42401fcf7e83997156d32621c6f90" -> "sha256:b87ef535b72a1a623c017e521c34868724eacca168622f1c1b4bccf232cc6ae8" [label=""];
  "sha256:4ec0e3b2d1b19da5a084af9164d84748709c359d1970ab295931299e70933310" -> "sha256:b87ef535b72a1a623c017e521c34868724eacca168622f1c1b4bccf232cc6ae8" [label=""];
  "sha256:b87ef535b72a1a623c017e521c34868724eacca168622f1c1b4bccf232cc6ae8" -> "sha256:c06e3e1d532b5e85208f928d1b1ade5d3c184a6c6c646561ad3947f0f6f12c92" [label=""];
}

