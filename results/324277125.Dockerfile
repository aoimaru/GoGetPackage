[app/sources/324277125.Dockerfile]
digraph {
  "sha256:ee90a37175cafeeea59801d2e844f7ff2706ae354af75e018a611331c3e348fa" [label="docker-image://docker.io/roffe/kubectl:latest" shape="ellipse"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:3b3b695db3b9d12366b78a1f320b3692bfb0f9d8fccdec1e60453a7d0e7b8048" [label="mkdir{path=/go/src/component-kubectl-cmd}" shape="note"];
  "sha256:69e8357c9b6fb5083792310132b5ece431c3ba4feb0d07aa39491439d6ada7ff" [label="local://context" shape="ellipse"];
  "sha256:4fbffc8c0a06461dc910ec3cd0bc323f91e003bb4d442bf14a27828d150402b3" [label="copy{src=/, dest=/go/src/component-kubectl-cmd}" shape="note"];
  "sha256:dda065c31172aae149f0ffa0af40ede91a493077ac8b26e8bf73c7d1038d2fd6" [label="/bin/sh -c set -ex && go build -v -o /go/bin/component-kubectl-cmd -gcflags '-N -l' ./*.go" shape="box"];
  "sha256:093a2aeeaf15e22e09ae69053f8e55f4028f5de0dd003d209758acfde47f48f6" [label="copy{src=/go/bin/component-kubectl-cmd, dest=/usr/bin/}" shape="note"];
  "sha256:47d9c05ed1115bc7c724bdc94a46067b207945aa97b1c977273a10faf26b9963" [label="sha256:47d9c05ed1115bc7c724bdc94a46067b207945aa97b1c977273a10faf26b9963" shape="plaintext"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:3b3b695db3b9d12366b78a1f320b3692bfb0f9d8fccdec1e60453a7d0e7b8048" [label=""];
  "sha256:3b3b695db3b9d12366b78a1f320b3692bfb0f9d8fccdec1e60453a7d0e7b8048" -> "sha256:4fbffc8c0a06461dc910ec3cd0bc323f91e003bb4d442bf14a27828d150402b3" [label=""];
  "sha256:69e8357c9b6fb5083792310132b5ece431c3ba4feb0d07aa39491439d6ada7ff" -> "sha256:4fbffc8c0a06461dc910ec3cd0bc323f91e003bb4d442bf14a27828d150402b3" [label=""];
  "sha256:4fbffc8c0a06461dc910ec3cd0bc323f91e003bb4d442bf14a27828d150402b3" -> "sha256:dda065c31172aae149f0ffa0af40ede91a493077ac8b26e8bf73c7d1038d2fd6" [label=""];
  "sha256:ee90a37175cafeeea59801d2e844f7ff2706ae354af75e018a611331c3e348fa" -> "sha256:093a2aeeaf15e22e09ae69053f8e55f4028f5de0dd003d209758acfde47f48f6" [label=""];
  "sha256:dda065c31172aae149f0ffa0af40ede91a493077ac8b26e8bf73c7d1038d2fd6" -> "sha256:093a2aeeaf15e22e09ae69053f8e55f4028f5de0dd003d209758acfde47f48f6" [label=""];
  "sha256:093a2aeeaf15e22e09ae69053f8e55f4028f5de0dd003d209758acfde47f48f6" -> "sha256:47d9c05ed1115bc7c724bdc94a46067b207945aa97b1c977273a10faf26b9963" [label=""];
}

