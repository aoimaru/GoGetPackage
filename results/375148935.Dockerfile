[app/sources/375148935.Dockerfile]
digraph {
  "sha256:785d41d065382deb3aa68ce5efce8c3f240eea4084f2a8dd2d3aae509031eb54" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:5dedb59f451fd514561d767fbf0a048c54cc1ce42866dee7ac1d11e2d0a07649" [label="/bin/sh -c apt-get -qq update &&     apt-get -qqy install \tgit \tsudo" shape="box"];
  "sha256:6ea707ab7fc088e84d8afacab0f9b61b28ed0abcdc8c2d41460c8769a5663542" [label="copy{src=/bitcoinair.tar.gz, dest=/bitcoinair.tar.gz}" shape="note"];
  "sha256:91f48baa0a1b64c559573f180576eedbfa72e63a94cbbd5a6c34eafb40a2489e" [label="/bin/sh -c tar -xvf /bitcoinair.tar.gz" shape="box"];
  "sha256:0544a68fc2865af84395d56e2be4ec9d67609d1fb60fdc4cc8b5843e66b078b8" [label="/bin/sh -c cd /bitcoinair && ./scripts/dependencies-ubuntu.sh && ./scripts/install-ubuntu.sh && \tapt-get purge git build-essential -qy && \tapt-get autoremove -qy && \tapt-get clean" shape="box"];
  "sha256:e6446e5e0c3bc32f694fc61d25f4db27e7ca84c3456be72f9a28c68871d79611" [label="sha256:e6446e5e0c3bc32f694fc61d25f4db27e7ca84c3456be72f9a28c68871d79611" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:5dedb59f451fd514561d767fbf0a048c54cc1ce42866dee7ac1d11e2d0a07649" [label=""];
  "sha256:5dedb59f451fd514561d767fbf0a048c54cc1ce42866dee7ac1d11e2d0a07649" -> "sha256:6ea707ab7fc088e84d8afacab0f9b61b28ed0abcdc8c2d41460c8769a5663542" [label=""];
  "sha256:785d41d065382deb3aa68ce5efce8c3f240eea4084f2a8dd2d3aae509031eb54" -> "sha256:6ea707ab7fc088e84d8afacab0f9b61b28ed0abcdc8c2d41460c8769a5663542" [label=""];
  "sha256:6ea707ab7fc088e84d8afacab0f9b61b28ed0abcdc8c2d41460c8769a5663542" -> "sha256:91f48baa0a1b64c559573f180576eedbfa72e63a94cbbd5a6c34eafb40a2489e" [label=""];
  "sha256:91f48baa0a1b64c559573f180576eedbfa72e63a94cbbd5a6c34eafb40a2489e" -> "sha256:0544a68fc2865af84395d56e2be4ec9d67609d1fb60fdc4cc8b5843e66b078b8" [label=""];
  "sha256:0544a68fc2865af84395d56e2be4ec9d67609d1fb60fdc4cc8b5843e66b078b8" -> "sha256:e6446e5e0c3bc32f694fc61d25f4db27e7ca84c3456be72f9a28c68871d79611" [label=""];
}

