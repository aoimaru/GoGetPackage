[app/sources/247902120.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:6a81353e33309f8aa9283050091bd55be1efcaa40f8bd980b26343edf5a096a1" [label="/bin/sh -c apk add ansible openssh" shape="box"];
  "sha256:441c88df0a551bbdbbae6ab9782528c792c068a6fedd4bd971fac6943df74a40" [label="/bin/sh -c mkdir -p /etc/ansible" shape="box"];
  "sha256:aed15265c39175ef85ab3acf9bd4357b24ca9a70f185890a418e32212ede13d5" [label="/bin/sh -c echo \"localhost\" >/etc/ansible/hosts" shape="box"];
  "sha256:4c9b470672c7342ce99b8f3eafd48c6cc6eccec3804bdf738d7cbfbd583782e5" [label="/bin/sh -c ssh-keygen -t rsa -P \"\" -f ~/.ssh/id_rsa" shape="box"];
  "sha256:d0eaa8787e3f70b04e33c8601afa15ac30d9da9836940b6e3a7eedc46f86ec19" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:90e1717dab9a92ccba4472dfe024c052d67f7fbb0545b2baa5ed951883210dab" [label="sha256:90e1717dab9a92ccba4472dfe024c052d67f7fbb0545b2baa5ed951883210dab" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:6a81353e33309f8aa9283050091bd55be1efcaa40f8bd980b26343edf5a096a1" [label=""];
  "sha256:6a81353e33309f8aa9283050091bd55be1efcaa40f8bd980b26343edf5a096a1" -> "sha256:441c88df0a551bbdbbae6ab9782528c792c068a6fedd4bd971fac6943df74a40" [label=""];
  "sha256:441c88df0a551bbdbbae6ab9782528c792c068a6fedd4bd971fac6943df74a40" -> "sha256:aed15265c39175ef85ab3acf9bd4357b24ca9a70f185890a418e32212ede13d5" [label=""];
  "sha256:aed15265c39175ef85ab3acf9bd4357b24ca9a70f185890a418e32212ede13d5" -> "sha256:4c9b470672c7342ce99b8f3eafd48c6cc6eccec3804bdf738d7cbfbd583782e5" [label=""];
  "sha256:4c9b470672c7342ce99b8f3eafd48c6cc6eccec3804bdf738d7cbfbd583782e5" -> "sha256:d0eaa8787e3f70b04e33c8601afa15ac30d9da9836940b6e3a7eedc46f86ec19" [label=""];
  "sha256:d0eaa8787e3f70b04e33c8601afa15ac30d9da9836940b6e3a7eedc46f86ec19" -> "sha256:90e1717dab9a92ccba4472dfe024c052d67f7fbb0545b2baa5ed951883210dab" [label=""];
}

