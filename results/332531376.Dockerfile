[app/sources/332531376.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:16dc79056cf5992c33baddae9b486984a1f56f12cd421d0bf3f2b1d5fe68c664" [label="/bin/sh -c apt-get update && apt-get install -y -q --no-install-recommends     curl     ca-certificates     pkg-config     build-essential     libzmq3-dev  && curl -s -S -o /tmp/setup-node.sh https://deb.nodesource.com/setup_8.x  && chmod 755 /tmp/setup-node.sh  && /tmp/setup-node.sh  && apt-get install nodejs -y -q  && rm /tmp/setup-node.sh  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && npm install -g prebuild-install" shape="box"];
  "sha256:07a56c924289dd99aa9dc0aafe7deed9a6b7aa9be70f2d865eaa5d749aa78bbc" [label="mkdir{path=/bitagora-ballots}" shape="note"];
  "sha256:1553d39bbc53429f68763202f9168516f50f294d4fc89ddf315ec4381f6e7cd5" [label="local://context" shape="ellipse"];
  "sha256:649c649712570f6ca91a12fe751c433f021df7b6fcb71c5973ad8c1ada594136" [label="copy{src=/, dest=/bitagora-ballots}" shape="note"];
  "sha256:c19b22e80a6c3abe5a756016faac7ab5edd4dc03913da6d0fade28e17bde968e" [label="/bin/sh -c if [ ! -z $HTTP_PROXY ] && [ -z $http_proxy ]; then   http_proxy=$HTTP_PROXY;  fi;  if [ ! -z $HTTPS_PROXY ] && [ -z $https_proxy ]; then   https_proxy=$HTTPS_PROXY;  fi;  if [ ! -z $http_proxy ]; then   npm config set proxy $http_proxy;  fi;  if [ ! -z $https_proxy ]; then   npm config set https-proxy $https_proxy;  fi" shape="box"];
  "sha256:d50441a4b0400e4023dd3496208a92f8003c1c062d43af6d1f21f8de5ef067fc" [label="sha256:d50441a4b0400e4023dd3496208a92f8003c1c062d43af6d1f21f8de5ef067fc" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:16dc79056cf5992c33baddae9b486984a1f56f12cd421d0bf3f2b1d5fe68c664" [label=""];
  "sha256:16dc79056cf5992c33baddae9b486984a1f56f12cd421d0bf3f2b1d5fe68c664" -> "sha256:07a56c924289dd99aa9dc0aafe7deed9a6b7aa9be70f2d865eaa5d749aa78bbc" [label=""];
  "sha256:07a56c924289dd99aa9dc0aafe7deed9a6b7aa9be70f2d865eaa5d749aa78bbc" -> "sha256:649c649712570f6ca91a12fe751c433f021df7b6fcb71c5973ad8c1ada594136" [label=""];
  "sha256:1553d39bbc53429f68763202f9168516f50f294d4fc89ddf315ec4381f6e7cd5" -> "sha256:649c649712570f6ca91a12fe751c433f021df7b6fcb71c5973ad8c1ada594136" [label=""];
  "sha256:649c649712570f6ca91a12fe751c433f021df7b6fcb71c5973ad8c1ada594136" -> "sha256:c19b22e80a6c3abe5a756016faac7ab5edd4dc03913da6d0fade28e17bde968e" [label=""];
  "sha256:c19b22e80a6c3abe5a756016faac7ab5edd4dc03913da6d0fade28e17bde968e" -> "sha256:d50441a4b0400e4023dd3496208a92f8003c1c062d43af6d1f21f8de5ef067fc" [label=""];
}

