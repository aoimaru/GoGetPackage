[app/sources/308588519.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:aba65977a2ab69a37e7ea873c296e6e5cacb433c2fa8fc632975f0f2ba053ff8" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:9affd285d99d1239c5d8e0055c4755c56717a170d4cee6fd2e18aa1ae13bc6a9" [label="local://context" shape="ellipse"];
  "sha256:f8121fb91f2a51ff6a79fe920222e0c378ff1b72e0b02dbda20074241012ffbe" [label="copy{src=/magnum-auto-healer, dest=/bin/}" shape="note"];
  "sha256:5e6dd5fd64bbafebcbb4942f995d65580e74f0808385479748441dacb58e6f6d" [label="sha256:5e6dd5fd64bbafebcbb4942f995d65580e74f0808385479748441dacb58e6f6d" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:aba65977a2ab69a37e7ea873c296e6e5cacb433c2fa8fc632975f0f2ba053ff8" [label=""];
  "sha256:aba65977a2ab69a37e7ea873c296e6e5cacb433c2fa8fc632975f0f2ba053ff8" -> "sha256:f8121fb91f2a51ff6a79fe920222e0c378ff1b72e0b02dbda20074241012ffbe" [label=""];
  "sha256:9affd285d99d1239c5d8e0055c4755c56717a170d4cee6fd2e18aa1ae13bc6a9" -> "sha256:f8121fb91f2a51ff6a79fe920222e0c378ff1b72e0b02dbda20074241012ffbe" [label=""];
  "sha256:f8121fb91f2a51ff6a79fe920222e0c378ff1b72e0b02dbda20074241012ffbe" -> "sha256:5e6dd5fd64bbafebcbb4942f995d65580e74f0808385479748441dacb58e6f6d" [label=""];
}

