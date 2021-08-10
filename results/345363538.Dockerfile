[app/sources/345363538.Dockerfile]
digraph {
  "sha256:34968fbf3501237ca8de9be0c097342fe59b22fdf8a90ff0cd2f23adc19b0284" [label="docker-image://docker.io/balenalib/armv5e-debian:sid-build" shape="ellipse"];
  "sha256:6156befa5af0ecf83968bc28371f0e000913e390776fe0637e3dadc54ddafd2b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armel.tar.gz\" \t&& echo \"12d319a014b894db07d32792bc4e450f7d408742e1d7bf602777fb375196233e  go$GO_VERSION.linux-armel.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armel.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armel.tar.gz" shape="box"];
  "sha256:ec6f94c4a264ac9f32f7d88e15b78848ae32a220f72bedd9544f0198fa05afdb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:fc820870f19843c6890ea1e8803ec571a688cb61cc97d6ea344ab3e43a9d3a40" [label="mkdir{path=/go}" shape="note"];
  "sha256:046b85ae510496a2ef795346450e6ef2f7d15330bfc363120fa9d4446172d38a" [label="sha256:046b85ae510496a2ef795346450e6ef2f7d15330bfc363120fa9d4446172d38a" shape="plaintext"];
  "sha256:34968fbf3501237ca8de9be0c097342fe59b22fdf8a90ff0cd2f23adc19b0284" -> "sha256:6156befa5af0ecf83968bc28371f0e000913e390776fe0637e3dadc54ddafd2b" [label=""];
  "sha256:6156befa5af0ecf83968bc28371f0e000913e390776fe0637e3dadc54ddafd2b" -> "sha256:ec6f94c4a264ac9f32f7d88e15b78848ae32a220f72bedd9544f0198fa05afdb" [label=""];
  "sha256:ec6f94c4a264ac9f32f7d88e15b78848ae32a220f72bedd9544f0198fa05afdb" -> "sha256:fc820870f19843c6890ea1e8803ec571a688cb61cc97d6ea344ab3e43a9d3a40" [label=""];
  "sha256:fc820870f19843c6890ea1e8803ec571a688cb61cc97d6ea344ab3e43a9d3a40" -> "sha256:046b85ae510496a2ef795346450e6ef2f7d15330bfc363120fa9d4446172d38a" [label=""];
}

