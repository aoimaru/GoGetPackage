[app/sources/232728823.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:3627d7ed89f2319f34876ec9fa1340e5aa4479465ec29165c158b5bf4e496e93" [label="local://context" shape="ellipse"];
  "sha256:ec2f251c19f8a38b09b4760aa72e874d8040cfecd30554ffb8bbeae53b76993f" [label="copy{src=/*.jar, dest=/app.jar}" shape="note"];
  "sha256:e8b2998ebd6c860155af2f8f1872f8bc168fa83180c8640f386b28eabda9a185" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:15ab7ede73c4a9c7b8165c864a6026eae2e1cdfa42a354b713facd13a897e202" [label="sha256:15ab7ede73c4a9c7b8165c864a6026eae2e1cdfa42a354b713facd13a897e202" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:ec2f251c19f8a38b09b4760aa72e874d8040cfecd30554ffb8bbeae53b76993f" [label=""];
  "sha256:3627d7ed89f2319f34876ec9fa1340e5aa4479465ec29165c158b5bf4e496e93" -> "sha256:ec2f251c19f8a38b09b4760aa72e874d8040cfecd30554ffb8bbeae53b76993f" [label=""];
  "sha256:ec2f251c19f8a38b09b4760aa72e874d8040cfecd30554ffb8bbeae53b76993f" -> "sha256:e8b2998ebd6c860155af2f8f1872f8bc168fa83180c8640f386b28eabda9a185" [label=""];
  "sha256:e8b2998ebd6c860155af2f8f1872f8bc168fa83180c8640f386b28eabda9a185" -> "sha256:15ab7ede73c4a9c7b8165c864a6026eae2e1cdfa42a354b713facd13a897e202" [label=""];
}

