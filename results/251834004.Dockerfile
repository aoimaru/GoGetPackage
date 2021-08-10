[app/sources/251834004.Dockerfile]
digraph {
  "sha256:92e70c58406607fbf526ff993dd9cb5b2db6ef37701dd2d2d8d677397936aa24" [label="docker-image://docker.io/library/golang:1.7.1" shape="ellipse"];
  "sha256:6788cda17d1cc4714c5d6eacb738700730899eea883eedbd8bbdab9affe22193" [label="local://context" shape="ellipse"];
  "sha256:c0e8fcf60ef9ba28c836430a90efac98c8d17806c8e4e83fe7affe3873a3aec1" [label="copy{src=/, dest=/go/src/github.com/Devatoria/admiral}" shape="note"];
  "sha256:9bf7c7190927a7e4509f8fe065d9f7783a9e3794216354cc3f2dad235f02e659" [label="mkdir{path=/go/src/github.com/Devatoria/admiral}" shape="note"];
  "sha256:00088b29e5c528c98ef9759a5ecee8ef67b5c7a2b64b53a9840aadaa3080c8bf" [label="/bin/sh -c go get -u github.com/kardianos/govendor" shape="box"];
  "sha256:4ee7169bd95584ecbe89cf4fa698255134f2fa55922cff91c4ba11316e235aa5" [label="/bin/sh -c govendor sync" shape="box"];
  "sha256:01b9ee29eee2759b33b2c8cfbe065f6ee96f125db5ccae62b291cb1f58d69659" [label="/bin/sh -c go build" shape="box"];
  "sha256:5f20aae529e8ef747094bc35adc7895040a7bf359b59ac6bead34d6883f364d2" [label="sha256:5f20aae529e8ef747094bc35adc7895040a7bf359b59ac6bead34d6883f364d2" shape="plaintext"];
  "sha256:92e70c58406607fbf526ff993dd9cb5b2db6ef37701dd2d2d8d677397936aa24" -> "sha256:c0e8fcf60ef9ba28c836430a90efac98c8d17806c8e4e83fe7affe3873a3aec1" [label=""];
  "sha256:6788cda17d1cc4714c5d6eacb738700730899eea883eedbd8bbdab9affe22193" -> "sha256:c0e8fcf60ef9ba28c836430a90efac98c8d17806c8e4e83fe7affe3873a3aec1" [label=""];
  "sha256:c0e8fcf60ef9ba28c836430a90efac98c8d17806c8e4e83fe7affe3873a3aec1" -> "sha256:9bf7c7190927a7e4509f8fe065d9f7783a9e3794216354cc3f2dad235f02e659" [label=""];
  "sha256:9bf7c7190927a7e4509f8fe065d9f7783a9e3794216354cc3f2dad235f02e659" -> "sha256:00088b29e5c528c98ef9759a5ecee8ef67b5c7a2b64b53a9840aadaa3080c8bf" [label=""];
  "sha256:00088b29e5c528c98ef9759a5ecee8ef67b5c7a2b64b53a9840aadaa3080c8bf" -> "sha256:4ee7169bd95584ecbe89cf4fa698255134f2fa55922cff91c4ba11316e235aa5" [label=""];
  "sha256:4ee7169bd95584ecbe89cf4fa698255134f2fa55922cff91c4ba11316e235aa5" -> "sha256:01b9ee29eee2759b33b2c8cfbe065f6ee96f125db5ccae62b291cb1f58d69659" [label=""];
  "sha256:01b9ee29eee2759b33b2c8cfbe065f6ee96f125db5ccae62b291cb1f58d69659" -> "sha256:5f20aae529e8ef747094bc35adc7895040a7bf359b59ac6bead34d6883f364d2" [label=""];
}

