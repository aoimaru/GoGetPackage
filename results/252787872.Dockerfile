[app/sources/252787872.Dockerfile]
digraph {
  "sha256:bba4ca780475c2be9febdf6deaf1a3740e6b07b1fb4bcf1071bd62495befb9c6" [label="docker-image://docker.io/library/golang:1.3" shape="ellipse"];
  "sha256:aa290c3f84f75e62d76533b4a35ec1935dc30bedd532b52e1a6bb8bb550fa197" [label="local://context" shape="ellipse"];
  "sha256:a19182dc917737b762459e0d634403f1cded5e08d47a22f5835dd685d05acf15" [label="copy{src=/, dest=/go/src/github.com/cpuguy83/docker-grand-ambassador}" shape="note"];
  "sha256:a3e6b16dd4724f73e6ced1ea6e6336a5a94972802f731489152a284417f47e88" [label="mkdir{path=/go/src/github.com/cpuguy83/docker-grand-ambassador}" shape="note"];
  "sha256:9fd6d3c20ace0875b3bec36e373cdb3f10bd694cd5cd53a63e600e2917febd72" [label="/bin/sh -c go get && go build && cp docker-grand-ambassador /usr/bin/grand-ambassador" shape="box"];
  "sha256:865f727ebba35584c4cf0febbbe27259f417ffe7ff17079230fb23cbcd47276d" [label="sha256:865f727ebba35584c4cf0febbbe27259f417ffe7ff17079230fb23cbcd47276d" shape="plaintext"];
  "sha256:bba4ca780475c2be9febdf6deaf1a3740e6b07b1fb4bcf1071bd62495befb9c6" -> "sha256:a19182dc917737b762459e0d634403f1cded5e08d47a22f5835dd685d05acf15" [label=""];
  "sha256:aa290c3f84f75e62d76533b4a35ec1935dc30bedd532b52e1a6bb8bb550fa197" -> "sha256:a19182dc917737b762459e0d634403f1cded5e08d47a22f5835dd685d05acf15" [label=""];
  "sha256:a19182dc917737b762459e0d634403f1cded5e08d47a22f5835dd685d05acf15" -> "sha256:a3e6b16dd4724f73e6ced1ea6e6336a5a94972802f731489152a284417f47e88" [label=""];
  "sha256:a3e6b16dd4724f73e6ced1ea6e6336a5a94972802f731489152a284417f47e88" -> "sha256:9fd6d3c20ace0875b3bec36e373cdb3f10bd694cd5cd53a63e600e2917febd72" [label=""];
  "sha256:9fd6d3c20ace0875b3bec36e373cdb3f10bd694cd5cd53a63e600e2917febd72" -> "sha256:865f727ebba35584c4cf0febbbe27259f417ffe7ff17079230fb23cbcd47276d" [label=""];
}

