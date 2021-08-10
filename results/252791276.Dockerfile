[app/sources/252791276.Dockerfile]
digraph {
  "sha256:ef3c333eec55b3cb43f1aadb151fbb43b6cc207d5f07860db6e30e6d9ab378b6" [label="docker-image://docker.io/library/erlang:latest" shape="ellipse"];
  "sha256:3715c10b07c6943f4243634a3f43bef0e6f0570312410bf8511ef8dc27fa0e02" [label="local://context" shape="ellipse"];
  "sha256:4c19af458f89df00926235d9d2d6051fdf763638f98a0234ee24d955b1cda30a" [label="copy{src=/, dest=/elsa}" shape="note"];
  "sha256:362b113daea97af78e87493c867db9d2e78157dffe075e6aaf0433c508062801" [label="mkdir{path=/elsa}" shape="note"];
  "sha256:ce4490243e6b27031d4d272ca4c2d9d287c4ac7ea4576e513b0139bcaf8456ea" [label="/bin/sh -c mv /elsa/config/sys.config.docker /elsa/config/sys.config" shape="box"];
  "sha256:3824a1dd51183567490ddd9eee964b9f9b90ec7dd6a54c68f41f5813890689ec" [label="/bin/sh -c /elsa/rebar3 release" shape="box"];
  "sha256:d7e01d68caac66c396dc781818be6061b8928b5ecb8d820a12b17a771c557c60" [label="sha256:d7e01d68caac66c396dc781818be6061b8928b5ecb8d820a12b17a771c557c60" shape="plaintext"];
  "sha256:ef3c333eec55b3cb43f1aadb151fbb43b6cc207d5f07860db6e30e6d9ab378b6" -> "sha256:4c19af458f89df00926235d9d2d6051fdf763638f98a0234ee24d955b1cda30a" [label=""];
  "sha256:3715c10b07c6943f4243634a3f43bef0e6f0570312410bf8511ef8dc27fa0e02" -> "sha256:4c19af458f89df00926235d9d2d6051fdf763638f98a0234ee24d955b1cda30a" [label=""];
  "sha256:4c19af458f89df00926235d9d2d6051fdf763638f98a0234ee24d955b1cda30a" -> "sha256:362b113daea97af78e87493c867db9d2e78157dffe075e6aaf0433c508062801" [label=""];
  "sha256:362b113daea97af78e87493c867db9d2e78157dffe075e6aaf0433c508062801" -> "sha256:ce4490243e6b27031d4d272ca4c2d9d287c4ac7ea4576e513b0139bcaf8456ea" [label=""];
  "sha256:ce4490243e6b27031d4d272ca4c2d9d287c4ac7ea4576e513b0139bcaf8456ea" -> "sha256:3824a1dd51183567490ddd9eee964b9f9b90ec7dd6a54c68f41f5813890689ec" [label=""];
  "sha256:3824a1dd51183567490ddd9eee964b9f9b90ec7dd6a54c68f41f5813890689ec" -> "sha256:d7e01d68caac66c396dc781818be6061b8928b5ecb8d820a12b17a771c557c60" [label=""];
}

