[app/sources/252774749.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:14ceca5f9a42ba30797e2bee8bbbaf3b6b5f7e761fa956c51fd85f0172fef3d9" [label="/bin/sh -c apt-get update && apt-get install -y libjson-webtoken-perl libauthen-ntlm-perl libcgi-pm-perl libcrypt-openssl-rsa-perl libdata-uniqid-perl libfile-copy-recursive-perl libio-socket-ssl-perl libio-socket-inet6-perl libio-tee-perl libhtml-parser-perl libjson-webtoken-perl libmail-imapclient-perl libparse-recdescent-perl libmodule-scandeps-perl libpar-packer-perl libreadonly-perl libsys-meminfo-perl libterm-readkey-perl libtest-mockobject-perl libtest-pod-perl libunicode-string-perl liburi-perl libwww-perl libregexp-common-perl procps wget && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5fe7c6e6f2eb576c9f1a67cf876f8709e56670b2288c46738356f367ced0ed23" [label="/bin/sh -c wget -N https://imapsync.lamiral.info/imapsync && cp imapsync /usr/bin/imapsync && chmod +x /usr/bin/imapsync" shape="box"];
  "sha256:838b26048493183349a8af1cd1c9dc28c4429b9326d0cd4e2b30360370bfa6c2" [label="sha256:838b26048493183349a8af1cd1c9dc28c4429b9326d0cd4e2b30360370bfa6c2" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:14ceca5f9a42ba30797e2bee8bbbaf3b6b5f7e761fa956c51fd85f0172fef3d9" [label=""];
  "sha256:14ceca5f9a42ba30797e2bee8bbbaf3b6b5f7e761fa956c51fd85f0172fef3d9" -> "sha256:5fe7c6e6f2eb576c9f1a67cf876f8709e56670b2288c46738356f367ced0ed23" [label=""];
  "sha256:5fe7c6e6f2eb576c9f1a67cf876f8709e56670b2288c46738356f367ced0ed23" -> "sha256:838b26048493183349a8af1cd1c9dc28c4429b9326d0cd4e2b30360370bfa6c2" [label=""];
}

