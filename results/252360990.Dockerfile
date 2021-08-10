[app/sources/252360990.Dockerfile]
digraph {
  "sha256:ea4cacd8b3b36ab15ea1dc0cedf64019ef9ff870383b7d234e25b2bb6857e288" [label="docker-image://docker.io/library/ubuntu:yakkety" shape="ellipse"];
  "sha256:01a2cd67eb7f30a1d0ecb1633228dc3899f6612b32c9dad7fe856ccd53fb6b38" [label="/bin/sh -c apt-get update  && apt-get dist-upgrade -y  && apt-get install -y mesa-opencl-icd=${MESA_VERSION} clinfo" shape="box"];
  "sha256:2a9e37d66b8f792407d8ec87c1441c60b803140b3ca904dd7cedd4ec9e3adbab" [label="/bin/sh -c apt-get clean  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:978642f2bc0908996db48698163fc56be9a5ca760ff632731144686860eac706" [label="sha256:978642f2bc0908996db48698163fc56be9a5ca760ff632731144686860eac706" shape="plaintext"];
  "sha256:ea4cacd8b3b36ab15ea1dc0cedf64019ef9ff870383b7d234e25b2bb6857e288" -> "sha256:01a2cd67eb7f30a1d0ecb1633228dc3899f6612b32c9dad7fe856ccd53fb6b38" [label=""];
  "sha256:01a2cd67eb7f30a1d0ecb1633228dc3899f6612b32c9dad7fe856ccd53fb6b38" -> "sha256:2a9e37d66b8f792407d8ec87c1441c60b803140b3ca904dd7cedd4ec9e3adbab" [label=""];
  "sha256:2a9e37d66b8f792407d8ec87c1441c60b803140b3ca904dd7cedd4ec9e3adbab" -> "sha256:978642f2bc0908996db48698163fc56be9a5ca760ff632731144686860eac706" [label=""];
}

