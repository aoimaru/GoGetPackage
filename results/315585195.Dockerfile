[app/sources/315585195.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:17f6f96c4477fbeccba972f3300cf144e425d415c52696a5df22f8731c608b76" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y     iproute2     iptables  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c0427fd0338634dc266a75e5ce6ab8983bbda25438b412c0eaa904c3c4bfa353" [label="local://context" shape="ellipse"];
  "sha256:4acadab5c922b361b634e11fff3bfd026e23f04f7ec9b278e61cb200027feb39" [label="copy{src=/istio-iptables.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:c33c5509e856a6e8a131fb0ac3199bc546194d3580576636f74291819336dc49" [label="sha256:c33c5509e856a6e8a131fb0ac3199bc546194d3580576636f74291819336dc49" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:17f6f96c4477fbeccba972f3300cf144e425d415c52696a5df22f8731c608b76" [label=""];
  "sha256:17f6f96c4477fbeccba972f3300cf144e425d415c52696a5df22f8731c608b76" -> "sha256:4acadab5c922b361b634e11fff3bfd026e23f04f7ec9b278e61cb200027feb39" [label=""];
  "sha256:c0427fd0338634dc266a75e5ce6ab8983bbda25438b412c0eaa904c3c4bfa353" -> "sha256:4acadab5c922b361b634e11fff3bfd026e23f04f7ec9b278e61cb200027feb39" [label=""];
  "sha256:4acadab5c922b361b634e11fff3bfd026e23f04f7ec9b278e61cb200027feb39" -> "sha256:c33c5509e856a6e8a131fb0ac3199bc546194d3580576636f74291819336dc49" [label=""];
}

