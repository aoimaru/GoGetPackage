[app/sources/430673824.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:7fad20939ec20addc4d81447ab27af2125b27bfd006bfb691ccb08114744cfe4" [label="/bin/sh -c mkdir -p /go/src/github.com/getsentry/raven-go" shape="box"];
  "sha256:cb1177aab22b2517c11aa3639a30c6d8b9664e2884e53727c726f96f24adac88" [label="mkdir{path=/go/src/github.com/getsentry/raven-go}" shape="note"];
  "sha256:97afa7492d2c7cf7e860c7810c224f0012ee3a6c0a51b0034fe1736e1c979d53" [label="/bin/sh -c go install -race std && go get golang.org/x/tools/cmd/cover" shape="box"];
  "sha256:f00c7ec6994c79cded149a204e553bad6cddf36ac225285f5bd042ee16153828" [label="local://context" shape="ellipse"];
  "sha256:439518689caf999558e885908136171e45acd2a6f9944b7bca2b41ba4e0324c3" [label="copy{src=/, dest=/go/src/github.com/getsentry/raven-go}" shape="note"];
  "sha256:524aa306449ad5d66d7c5a3ca7743a0a855650d1c407efe11ef8fb531e84d8b0" [label="sha256:524aa306449ad5d66d7c5a3ca7743a0a855650d1c407efe11ef8fb531e84d8b0" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:7fad20939ec20addc4d81447ab27af2125b27bfd006bfb691ccb08114744cfe4" [label=""];
  "sha256:7fad20939ec20addc4d81447ab27af2125b27bfd006bfb691ccb08114744cfe4" -> "sha256:cb1177aab22b2517c11aa3639a30c6d8b9664e2884e53727c726f96f24adac88" [label=""];
  "sha256:cb1177aab22b2517c11aa3639a30c6d8b9664e2884e53727c726f96f24adac88" -> "sha256:97afa7492d2c7cf7e860c7810c224f0012ee3a6c0a51b0034fe1736e1c979d53" [label=""];
  "sha256:97afa7492d2c7cf7e860c7810c224f0012ee3a6c0a51b0034fe1736e1c979d53" -> "sha256:439518689caf999558e885908136171e45acd2a6f9944b7bca2b41ba4e0324c3" [label=""];
  "sha256:f00c7ec6994c79cded149a204e553bad6cddf36ac225285f5bd042ee16153828" -> "sha256:439518689caf999558e885908136171e45acd2a6f9944b7bca2b41ba4e0324c3" [label=""];
  "sha256:439518689caf999558e885908136171e45acd2a6f9944b7bca2b41ba4e0324c3" -> "sha256:524aa306449ad5d66d7c5a3ca7743a0a855650d1c407efe11ef8fb531e84d8b0" [label=""];
}

