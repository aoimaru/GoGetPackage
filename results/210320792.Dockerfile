[app/sources/210320792.Dockerfile]
digraph {
  "sha256:85445e1d307c8b3e46b3a2dd759648016f07f7438178b70e1e5db6474937f372" [label="docker-image://gcr.io/google_appengine/nodejs@sha256:10d0691c6e80b09d32649c69e83a9358d1cf9429a991f868eb2dbfe33fff776f" shape="ellipse"];
  "sha256:3c6c7b2fa227d876f29b33af0fe491f6835306c3bbaca0a7c55d45c68fbfe423" [label="/bin/sh -c /usr/local/bin/install_node '>=0.12.7'" shape="box"];
  "sha256:bd9c91eb6d3488001acefbcbe890c50854b9bfe94c78c43650146687878a0156" [label="local://context" shape="ellipse"];
  "sha256:8a3d8fea30cafaad668ef00195584e2b56b6e37ceffb69a53529f5bf0dfe915f" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:1edef3503c5f6a3ffdf77a4ef366cc4af74e7dcaec6480e80caead0bc1c51692" [label="/bin/sh -c npm install --unsafe-perm ||   ((if [ -f npm-debug.log ]; then       cat npm-debug.log;     fi) && false)" shape="box"];
  "sha256:892a527125c80f871166d05804dde81fa31f0c082ce88e7dafc05108cb010f77" [label="sha256:892a527125c80f871166d05804dde81fa31f0c082ce88e7dafc05108cb010f77" shape="plaintext"];
  "sha256:85445e1d307c8b3e46b3a2dd759648016f07f7438178b70e1e5db6474937f372" -> "sha256:3c6c7b2fa227d876f29b33af0fe491f6835306c3bbaca0a7c55d45c68fbfe423" [label=""];
  "sha256:3c6c7b2fa227d876f29b33af0fe491f6835306c3bbaca0a7c55d45c68fbfe423" -> "sha256:8a3d8fea30cafaad668ef00195584e2b56b6e37ceffb69a53529f5bf0dfe915f" [label=""];
  "sha256:bd9c91eb6d3488001acefbcbe890c50854b9bfe94c78c43650146687878a0156" -> "sha256:8a3d8fea30cafaad668ef00195584e2b56b6e37ceffb69a53529f5bf0dfe915f" [label=""];
  "sha256:8a3d8fea30cafaad668ef00195584e2b56b6e37ceffb69a53529f5bf0dfe915f" -> "sha256:1edef3503c5f6a3ffdf77a4ef366cc4af74e7dcaec6480e80caead0bc1c51692" [label=""];
  "sha256:1edef3503c5f6a3ffdf77a4ef366cc4af74e7dcaec6480e80caead0bc1c51692" -> "sha256:892a527125c80f871166d05804dde81fa31f0c082ce88e7dafc05108cb010f77" [label=""];
}

