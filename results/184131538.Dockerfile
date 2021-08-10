[app/sources/184131538.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:9258727b0abf2296e562395dd27459e063b0d25f372f21c0e21f801f1b265a6f" [label="/bin/sh -c apt-get update && apt-get install -y gnupg" shape="box"];
  "sha256:f55093bce085e0078cf2da729d0f1cb8fa16535094b242696093071201996720" [label="/bin/sh -c echo \"deb http://repo.sawtooth.me/ubuntu/1.0/stable xenial universe\" >> /etc/apt/sources.list &&     (apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 8AA7AF1F1091A5FD ||     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 8AA7AF1F1091A5FD) &&     apt-get update" shape="box"];
  "sha256:406d5a864a158278785157ff2ec9db5a741a4f3c00bd34a48d84b432225499bf" [label="/bin/sh -c apt-get install -y --allow-unauthenticated -q     python3     python3-pip     python3-sawtooth-cli     python3-sawtooth-sdk     python3-sawtooth-signing" shape="box"];
  "sha256:baf8b5b66c20080c5af8d875310cca3a2e96b6deb852e0404519ae4790c48c06" [label="/bin/sh -c pip3 install     grpcio-tools     nose2" shape="box"];
  "sha256:5e52972fb05a951cc27113af7aeb361f4df6d3409dde59e82c7a5a3306927181" [label="mkdir{path=/project/cert_registry}" shape="note"];
  "sha256:149eb15a3278d8593110947e3a11a41a736e2d181e7821b41ea66fcf6fa52bff" [label="sha256:149eb15a3278d8593110947e3a11a41a736e2d181e7821b41ea66fcf6fa52bff" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:9258727b0abf2296e562395dd27459e063b0d25f372f21c0e21f801f1b265a6f" [label=""];
  "sha256:9258727b0abf2296e562395dd27459e063b0d25f372f21c0e21f801f1b265a6f" -> "sha256:f55093bce085e0078cf2da729d0f1cb8fa16535094b242696093071201996720" [label=""];
  "sha256:f55093bce085e0078cf2da729d0f1cb8fa16535094b242696093071201996720" -> "sha256:406d5a864a158278785157ff2ec9db5a741a4f3c00bd34a48d84b432225499bf" [label=""];
  "sha256:406d5a864a158278785157ff2ec9db5a741a4f3c00bd34a48d84b432225499bf" -> "sha256:baf8b5b66c20080c5af8d875310cca3a2e96b6deb852e0404519ae4790c48c06" [label=""];
  "sha256:baf8b5b66c20080c5af8d875310cca3a2e96b6deb852e0404519ae4790c48c06" -> "sha256:5e52972fb05a951cc27113af7aeb361f4df6d3409dde59e82c7a5a3306927181" [label=""];
  "sha256:5e52972fb05a951cc27113af7aeb361f4df6d3409dde59e82c7a5a3306927181" -> "sha256:149eb15a3278d8593110947e3a11a41a736e2d181e7821b41ea66fcf6fa52bff" [label=""];
}

