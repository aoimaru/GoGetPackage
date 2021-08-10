[app/sources/280723195.Dockerfile]
digraph {
  "sha256:eb16d96d8685c78a2054db4ed3baec4fc274d08288023d8137892d840c7f8676" [label="docker-image://docker.io/clouthinkin/jre:latest" shape="ellipse"];
  "sha256:ec56a8c22e3f8c35fd800e4f34a814f92657be503ada7f2a2003a764aaaa2548" [label="local://context" shape="ellipse"];
  "sha256:e1ce7b08889e845bb0aa1f33d351b8d48de105d214b65bc4815b418ee01fd499" [label="copy{src=/build/libs/sample-0.1.0-SNAPSHOT.jar, dest=/}" shape="note"];
  "sha256:103d41e1b7be69e7310de11ca6ca3d4d507f62e346db14a57e735b6dd81a2a68" [label="copy{src=/docker/container_files, dest=/}" shape="note"];
  "sha256:124f44cc0dcdb41a6fff3ca222bc98611f171a34fd6e8404a28074ae3c145ff0" [label="/bin/sh -c chmod +x /*.sh" shape="box"];
  "sha256:7d6b1d0362dde780f5b2a5c6f0021bcbe41af2f7f6613ecc0b0663a2685d4699" [label="sha256:7d6b1d0362dde780f5b2a5c6f0021bcbe41af2f7f6613ecc0b0663a2685d4699" shape="plaintext"];
  "sha256:eb16d96d8685c78a2054db4ed3baec4fc274d08288023d8137892d840c7f8676" -> "sha256:e1ce7b08889e845bb0aa1f33d351b8d48de105d214b65bc4815b418ee01fd499" [label=""];
  "sha256:ec56a8c22e3f8c35fd800e4f34a814f92657be503ada7f2a2003a764aaaa2548" -> "sha256:e1ce7b08889e845bb0aa1f33d351b8d48de105d214b65bc4815b418ee01fd499" [label=""];
  "sha256:e1ce7b08889e845bb0aa1f33d351b8d48de105d214b65bc4815b418ee01fd499" -> "sha256:103d41e1b7be69e7310de11ca6ca3d4d507f62e346db14a57e735b6dd81a2a68" [label=""];
  "sha256:ec56a8c22e3f8c35fd800e4f34a814f92657be503ada7f2a2003a764aaaa2548" -> "sha256:103d41e1b7be69e7310de11ca6ca3d4d507f62e346db14a57e735b6dd81a2a68" [label=""];
  "sha256:103d41e1b7be69e7310de11ca6ca3d4d507f62e346db14a57e735b6dd81a2a68" -> "sha256:124f44cc0dcdb41a6fff3ca222bc98611f171a34fd6e8404a28074ae3c145ff0" [label=""];
  "sha256:124f44cc0dcdb41a6fff3ca222bc98611f171a34fd6e8404a28074ae3c145ff0" -> "sha256:7d6b1d0362dde780f5b2a5c6f0021bcbe41af2f7f6613ecc0b0663a2685d4699" [label=""];
}

