[app/sources/307054455.Dockerfile]
digraph {
  "sha256:c73cafaa4114eb4da76f35b97d57e1a25d62d9bf73eca1ead4cc321c39591e45" [label="docker-image://docker.io/library/golang:1.6.3" shape="ellipse"];
  "sha256:575ce85b82bde25fadefa453f06d1f693aa1f6cdbeeedb51b19bdce310e986d6" [label="/bin/sh -c go get github.com/fsouza/go-dockerclient         github.com/docker/go-units" shape="box"];
  "sha256:f8f1b64dd498f2fdfee4216ed71637d3254a125ca51a75059aff8d7d85171240" [label="sha256:f8f1b64dd498f2fdfee4216ed71637d3254a125ca51a75059aff8d7d85171240" shape="plaintext"];
  "sha256:c73cafaa4114eb4da76f35b97d57e1a25d62d9bf73eca1ead4cc321c39591e45" -> "sha256:575ce85b82bde25fadefa453f06d1f693aa1f6cdbeeedb51b19bdce310e986d6" [label=""];
  "sha256:575ce85b82bde25fadefa453f06d1f693aa1f6cdbeeedb51b19bdce310e986d6" -> "sha256:f8f1b64dd498f2fdfee4216ed71637d3254a125ca51a75059aff8d7d85171240" [label=""];
}

