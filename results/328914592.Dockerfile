[app/sources/328914592.Dockerfile]
digraph {
  "sha256:bf249b2a35b04e6a64a20897c570bcd468a45383b25d9fce5972532cc9373b44" [label="docker-image://docker.io/library/openjdk:11.0.1-jre-slim-stretch" shape="ellipse"];
  "sha256:b8656153c6514ace6e800c2c9e5042732a23adcc7c7647ec7ffb080f0be323ce" [label="mkdir{path=/app}" shape="note"];
  "sha256:6b86092dc9f86b359eb7990710ba738fa1989ad9122fdfaaf0f5050104953cd9" [label="local://context" shape="ellipse"];
  "sha256:f6ece3ebf929bfba2756e7fcca6601bad2748ca92526f9c2c8d9fc4bcc43e533" [label="copy{src=/target/hello-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:60fc0aadbdeee3cc921a34eb821ec0924854dec36bd923704b22ee11d9328c3e" [label="sha256:60fc0aadbdeee3cc921a34eb821ec0924854dec36bd923704b22ee11d9328c3e" shape="plaintext"];
  "sha256:bf249b2a35b04e6a64a20897c570bcd468a45383b25d9fce5972532cc9373b44" -> "sha256:b8656153c6514ace6e800c2c9e5042732a23adcc7c7647ec7ffb080f0be323ce" [label=""];
  "sha256:b8656153c6514ace6e800c2c9e5042732a23adcc7c7647ec7ffb080f0be323ce" -> "sha256:f6ece3ebf929bfba2756e7fcca6601bad2748ca92526f9c2c8d9fc4bcc43e533" [label=""];
  "sha256:6b86092dc9f86b359eb7990710ba738fa1989ad9122fdfaaf0f5050104953cd9" -> "sha256:f6ece3ebf929bfba2756e7fcca6601bad2748ca92526f9c2c8d9fc4bcc43e533" [label=""];
  "sha256:f6ece3ebf929bfba2756e7fcca6601bad2748ca92526f9c2c8d9fc4bcc43e533" -> "sha256:60fc0aadbdeee3cc921a34eb821ec0924854dec36bd923704b22ee11d9328c3e" [label=""];
}

