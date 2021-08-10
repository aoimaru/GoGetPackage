[app/sources/226195153.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:5372ccc26f2ab811bb856e14a390862e048073337a1e232858ec85d13343b0ad" [label="local://context" shape="ellipse"];
  "sha256:a27e87504d0af1ec640bbc5d5328deaeba4eaea1d59b3bc98a642f4a59fafcc2" [label="copy{src=/, dest=/go/src/github.com/umputun/rt-bot/sample-go}" shape="note"];
  "sha256:3d78cf324dbd9cd0636bc1f82f117a43344bc93488e5aa5dad4981dd766716ef" [label="/bin/sh -c cd /go/src/github.com/umputun/rt-bot/sample-go &&  go get -v &&  go build -o /srv/sample-go &&  rm -rf /go/src/*" shape="box"];
  "sha256:45d4ad06297fae44312d96abc79bab2e6d6c396ccf1408a746afbc2156e86da8" [label="mkdir{path=/srv}" shape="note"];
  "sha256:0cd60b99960aa5189994f106009c12572251dd714e08a7a44db66124de397de6" [label="sha256:0cd60b99960aa5189994f106009c12572251dd714e08a7a44db66124de397de6" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:a27e87504d0af1ec640bbc5d5328deaeba4eaea1d59b3bc98a642f4a59fafcc2" [label=""];
  "sha256:5372ccc26f2ab811bb856e14a390862e048073337a1e232858ec85d13343b0ad" -> "sha256:a27e87504d0af1ec640bbc5d5328deaeba4eaea1d59b3bc98a642f4a59fafcc2" [label=""];
  "sha256:a27e87504d0af1ec640bbc5d5328deaeba4eaea1d59b3bc98a642f4a59fafcc2" -> "sha256:3d78cf324dbd9cd0636bc1f82f117a43344bc93488e5aa5dad4981dd766716ef" [label=""];
  "sha256:3d78cf324dbd9cd0636bc1f82f117a43344bc93488e5aa5dad4981dd766716ef" -> "sha256:45d4ad06297fae44312d96abc79bab2e6d6c396ccf1408a746afbc2156e86da8" [label=""];
  "sha256:45d4ad06297fae44312d96abc79bab2e6d6c396ccf1408a746afbc2156e86da8" -> "sha256:0cd60b99960aa5189994f106009c12572251dd714e08a7a44db66124de397de6" [label=""];
}

