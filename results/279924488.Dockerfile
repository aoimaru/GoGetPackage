[app/sources/279924488.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:5d4dbf9f9260112f24c9bf2bc070fd90bb064cda3f5d33f05620738d68a67904" [label="/bin/sh -c adduser --disabled-password --gecos '' web" shape="box"];
  "sha256:1e1f960723bc3a70dc5c583e71f5cce8f04ea2531d95959f69a8d610416709a5" [label="local://context" shape="ellipse"];
  "sha256:1b21ddf0e52d3f818607cc205f6c04537a123d752e016cd4e7ec386cdf087089" [label="copy{src=/, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:aac916e50f7837d3d371dde91d4054eb152bffe8faf6cc9d44ee2368baba006a" [label="sha256:aac916e50f7837d3d371dde91d4054eb152bffe8faf6cc9d44ee2368baba006a" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:5d4dbf9f9260112f24c9bf2bc070fd90bb064cda3f5d33f05620738d68a67904" [label=""];
  "sha256:5d4dbf9f9260112f24c9bf2bc070fd90bb064cda3f5d33f05620738d68a67904" -> "sha256:1b21ddf0e52d3f818607cc205f6c04537a123d752e016cd4e7ec386cdf087089" [label=""];
  "sha256:1e1f960723bc3a70dc5c583e71f5cce8f04ea2531d95959f69a8d610416709a5" -> "sha256:1b21ddf0e52d3f818607cc205f6c04537a123d752e016cd4e7ec386cdf087089" [label=""];
  "sha256:1b21ddf0e52d3f818607cc205f6c04537a123d752e016cd4e7ec386cdf087089" -> "sha256:aac916e50f7837d3d371dde91d4054eb152bffe8faf6cc9d44ee2368baba006a" [label=""];
}

