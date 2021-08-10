[app/sources/320537302.Dockerfile]
digraph {
  "sha256:b6787dac943fcb8dae75128700e60f88f264d1477918db614fcd240fe76eff21" [label="docker-image://docker.io/circleci/golang:1.11.2@sha256:bac9f06d3d5fb84ddbef45275a55d20cf530e23e2f82ad179503b020718588a7" shape="ellipse"];
  "sha256:43b56d38bfc7ad2f8190fc11bf453342cb886ec4c89c55343cda6d8085812ab4" [label="/bin/sh -c sudo apt-get update && sudo apt-get install -y     libgtk-3-dev     libpcsclite-dev     libudev-dev     libusb-1.0-0-dev && sudo rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:18c330887c533b1ea84987221c57c560298a1390b1611895c79ece626927849c" [label="/bin/sh -c go get -u github.com/tcnksm/ghr     && go get -u github.com/stevenmatthewt/semantics" shape="box"];
  "sha256:e1932f3ae224d2490f63813cf94c101dfe21a7a27551f71e0c5ef1dbb3432f97" [label="/bin/sh -c curl -L -s https://github.com/golang/dep/releases/download/v0.5.0/dep-linux-amd64 -o /go/bin/dep     && chmod +x /go/bin/dep" shape="box"];
  "sha256:f15c2cf2ee98def5c44c226188cd5e848285e4dde7c8438859a3b42aacf2a7e1" [label="/bin/sh -c mkdir -p /go/src/github.com/mitchellh/gox" shape="box"];
  "sha256:f2ccddd182e084a6280d3819e5e1aaf5b19c9ba3364f8a9bd9cdb613973b21bb" [label="/bin/sh -c git clone --branch master https://github.com/mitchellh/gox.git /go/src/github.com/mitchellh/gox" shape="box"];
  "sha256:afd364afca8eeabeeb1c3502da88a80fad9a902eb68899c5031026b9c1834160" [label="/bin/sh -c cd /go/src/github.com/mitchellh/gox && git reset --hard 9cc487598128d0963ff9dcc51176e722788ec645" shape="box"];
  "sha256:5d8ea895b1fba9f2dab9738d4fe37741c9b016c8b183bf31e85c3814bd2aaddf" [label="/bin/sh -c cd /go/src/github.com/mitchellh/gox && dep ensure && go install -v ./..." shape="box"];
  "sha256:e088c0d26ea9e8bc9abf25fe00a1ac6289737bab22e67b478f074b35d19909b9" [label="sha256:e088c0d26ea9e8bc9abf25fe00a1ac6289737bab22e67b478f074b35d19909b9" shape="plaintext"];
  "sha256:b6787dac943fcb8dae75128700e60f88f264d1477918db614fcd240fe76eff21" -> "sha256:43b56d38bfc7ad2f8190fc11bf453342cb886ec4c89c55343cda6d8085812ab4" [label=""];
  "sha256:43b56d38bfc7ad2f8190fc11bf453342cb886ec4c89c55343cda6d8085812ab4" -> "sha256:18c330887c533b1ea84987221c57c560298a1390b1611895c79ece626927849c" [label=""];
  "sha256:18c330887c533b1ea84987221c57c560298a1390b1611895c79ece626927849c" -> "sha256:e1932f3ae224d2490f63813cf94c101dfe21a7a27551f71e0c5ef1dbb3432f97" [label=""];
  "sha256:e1932f3ae224d2490f63813cf94c101dfe21a7a27551f71e0c5ef1dbb3432f97" -> "sha256:f15c2cf2ee98def5c44c226188cd5e848285e4dde7c8438859a3b42aacf2a7e1" [label=""];
  "sha256:f15c2cf2ee98def5c44c226188cd5e848285e4dde7c8438859a3b42aacf2a7e1" -> "sha256:f2ccddd182e084a6280d3819e5e1aaf5b19c9ba3364f8a9bd9cdb613973b21bb" [label=""];
  "sha256:f2ccddd182e084a6280d3819e5e1aaf5b19c9ba3364f8a9bd9cdb613973b21bb" -> "sha256:afd364afca8eeabeeb1c3502da88a80fad9a902eb68899c5031026b9c1834160" [label=""];
  "sha256:afd364afca8eeabeeb1c3502da88a80fad9a902eb68899c5031026b9c1834160" -> "sha256:5d8ea895b1fba9f2dab9738d4fe37741c9b016c8b183bf31e85c3814bd2aaddf" [label=""];
  "sha256:5d8ea895b1fba9f2dab9738d4fe37741c9b016c8b183bf31e85c3814bd2aaddf" -> "sha256:e088c0d26ea9e8bc9abf25fe00a1ac6289737bab22e67b478f074b35d19909b9" [label=""];
}

