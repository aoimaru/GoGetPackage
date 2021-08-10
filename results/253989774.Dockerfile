[app/sources/253989774.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:67bccc27260c226baaecb0a9c44131d10987889e3c142e914a96b6d373ee5074" [label="local://context" shape="ellipse"];
  "sha256:2720028aec0f1e00b15ea7aab6e3857c25aa92fef5b405ed6235706da3770678" [label="copy{src=/target/apia-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:3165ef8cad4ced356e353700d9c9fe5d552a1d0b8e3319bce0bc8c7434f8041f" [label="sha256:3165ef8cad4ced356e353700d9c9fe5d552a1d0b8e3319bce0bc8c7434f8041f" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:2720028aec0f1e00b15ea7aab6e3857c25aa92fef5b405ed6235706da3770678" [label=""];
  "sha256:67bccc27260c226baaecb0a9c44131d10987889e3c142e914a96b6d373ee5074" -> "sha256:2720028aec0f1e00b15ea7aab6e3857c25aa92fef5b405ed6235706da3770678" [label=""];
  "sha256:2720028aec0f1e00b15ea7aab6e3857c25aa92fef5b405ed6235706da3770678" -> "sha256:3165ef8cad4ced356e353700d9c9fe5d552a1d0b8e3319bce0bc8c7434f8041f" [label=""];
}

