[app/sources/342928171.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:698d56f6a8aa8d5f37c8dfd333da8666cc41c8206c595b700f7e11142c2fb3da" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:d5c04bdb883bd5996b3242a0ac668a34eb597837f2e11f4ae63064884fdc2dab" [label="/bin/sh -c mkdir -p /public" shape="box"];
  "sha256:3f2d40c82aae484a21d9513d3e89800f25d7d9838c7aadaf3a20810aa6baf226" [label="local://context" shape="ellipse"];
  "sha256:669f8fd91de7db69c3330a839f3dc9b83eddedc101880844535c80a6371f534f" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:a52d38e88bc904462100a4a091ae204e784bd85353e049aff31b44e3cb273e4e" [label="mkdir{path=/app}" shape="note"];
  "sha256:c875c6de5b32f6092f374a84a1208b15c87a6ddd52e3121b5597710b8b43d0f7" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:02f79c6c4b882901e9e10ec95f79e8fc8e84d1523019fa30e1a03bed41481efa" [label="/bin/sh -c apt-get install git nginx curl unzip supervisor python3 python3-dev python3-pip -y" shape="box"];
  "sha256:6b1ecf043e46197f48ff4512b9f816302a6efb737d7e8b6faa40fab5a03703cf" [label="/bin/sh -c pip3 install --no-cache-dir -r /app/requirements.txt" shape="box"];
  "sha256:d9fbaf756fd6b08a14d90eb64b03b27ba1bd80d60d556cb71431aea7432c85f7" [label="/bin/sh -c curl -L  $(curl -s  https://api.github.com/repos/VirtualJudge/VirtualJudgeFE/releases/latest | grep /dist.zip | cut -d '\"' -f 4) -o dist.zip &&     unzip dist.zip &&     rm dist.zip" shape="box"];
  "sha256:19a88e7ed153a8c02f8ecfc67dd5bd7b415deab15792fb53df8797e7d84f8e6c" [label="sha256:19a88e7ed153a8c02f8ecfc67dd5bd7b415deab15792fb53df8797e7d84f8e6c" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:698d56f6a8aa8d5f37c8dfd333da8666cc41c8206c595b700f7e11142c2fb3da" [label=""];
  "sha256:698d56f6a8aa8d5f37c8dfd333da8666cc41c8206c595b700f7e11142c2fb3da" -> "sha256:d5c04bdb883bd5996b3242a0ac668a34eb597837f2e11f4ae63064884fdc2dab" [label=""];
  "sha256:d5c04bdb883bd5996b3242a0ac668a34eb597837f2e11f4ae63064884fdc2dab" -> "sha256:669f8fd91de7db69c3330a839f3dc9b83eddedc101880844535c80a6371f534f" [label=""];
  "sha256:3f2d40c82aae484a21d9513d3e89800f25d7d9838c7aadaf3a20810aa6baf226" -> "sha256:669f8fd91de7db69c3330a839f3dc9b83eddedc101880844535c80a6371f534f" [label=""];
  "sha256:669f8fd91de7db69c3330a839f3dc9b83eddedc101880844535c80a6371f534f" -> "sha256:a52d38e88bc904462100a4a091ae204e784bd85353e049aff31b44e3cb273e4e" [label=""];
  "sha256:a52d38e88bc904462100a4a091ae204e784bd85353e049aff31b44e3cb273e4e" -> "sha256:c875c6de5b32f6092f374a84a1208b15c87a6ddd52e3121b5597710b8b43d0f7" [label=""];
  "sha256:c875c6de5b32f6092f374a84a1208b15c87a6ddd52e3121b5597710b8b43d0f7" -> "sha256:02f79c6c4b882901e9e10ec95f79e8fc8e84d1523019fa30e1a03bed41481efa" [label=""];
  "sha256:02f79c6c4b882901e9e10ec95f79e8fc8e84d1523019fa30e1a03bed41481efa" -> "sha256:6b1ecf043e46197f48ff4512b9f816302a6efb737d7e8b6faa40fab5a03703cf" [label=""];
  "sha256:6b1ecf043e46197f48ff4512b9f816302a6efb737d7e8b6faa40fab5a03703cf" -> "sha256:d9fbaf756fd6b08a14d90eb64b03b27ba1bd80d60d556cb71431aea7432c85f7" [label=""];
  "sha256:d9fbaf756fd6b08a14d90eb64b03b27ba1bd80d60d556cb71431aea7432c85f7" -> "sha256:19a88e7ed153a8c02f8ecfc67dd5bd7b415deab15792fb53df8797e7d84f8e6c" [label=""];
}

