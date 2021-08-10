[app/sources/207573552.Dockerfile]
digraph {
  "sha256:3cb13bfed0b469e87bcea434c17e947092b9e37949a4bcf6b91a1ab0671d9308" [label="docker-image://docker.io/rwynn/monstache-builder-cache:1.0.21" shape="ellipse"];
  "sha256:ec188c532b2d2b54a3bb4ec46617a3772606d58afbcc313ca26c0b6a5843d702" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:af1c77fad06113362bf49259f5c889b3bdfab623818ce4e5c8917ed82a6b4e40" [label="mkdir{path=/app}" shape="note"];
  "sha256:4a99a3d9d9120ad992e06e8f8f504db9b31eaa3f97140ef2ec18baea8f88e1bf" [label="local://context" shape="ellipse"];
  "sha256:63cdc48788e3c39e4ad88d355e7202f68ce14133d2ee1a8d7d7ad43556e30f26" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:487b638b1cd0578f43cfdb15764122df28cf7bdae55c7937d06a5ab2b42bea29" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:27135149a7b2b51418ca57ae82ef0942cae2d099c255291917ad37c873262193" [label="mkdir{path=/app/docker/plugin}" shape="note"];
  "sha256:2015bd9414df4c7a846eca603ef93ac30f821bf03d347680191747ce02ab3c00" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:0d598eb2f6fc55a4945174e4e3482bcaa1be6b8dd20813579ff8e4a05c202c1b" [label="/bin/sh -c go build -buildmode=plugin -o $PLUGIN.so $PLUGIN.go" shape="box"];
  "sha256:848fa9e74f4e82db403a54e5fccddfdb196b30a9d46462bf66e32110e0c25e0e" [label="sha256:848fa9e74f4e82db403a54e5fccddfdb196b30a9d46462bf66e32110e0c25e0e" shape="plaintext"];
  "sha256:3cb13bfed0b469e87bcea434c17e947092b9e37949a4bcf6b91a1ab0671d9308" -> "sha256:ec188c532b2d2b54a3bb4ec46617a3772606d58afbcc313ca26c0b6a5843d702" [label=""];
  "sha256:ec188c532b2d2b54a3bb4ec46617a3772606d58afbcc313ca26c0b6a5843d702" -> "sha256:af1c77fad06113362bf49259f5c889b3bdfab623818ce4e5c8917ed82a6b4e40" [label=""];
  "sha256:af1c77fad06113362bf49259f5c889b3bdfab623818ce4e5c8917ed82a6b4e40" -> "sha256:63cdc48788e3c39e4ad88d355e7202f68ce14133d2ee1a8d7d7ad43556e30f26" [label=""];
  "sha256:4a99a3d9d9120ad992e06e8f8f504db9b31eaa3f97140ef2ec18baea8f88e1bf" -> "sha256:63cdc48788e3c39e4ad88d355e7202f68ce14133d2ee1a8d7d7ad43556e30f26" [label=""];
  "sha256:63cdc48788e3c39e4ad88d355e7202f68ce14133d2ee1a8d7d7ad43556e30f26" -> "sha256:487b638b1cd0578f43cfdb15764122df28cf7bdae55c7937d06a5ab2b42bea29" [label=""];
  "sha256:487b638b1cd0578f43cfdb15764122df28cf7bdae55c7937d06a5ab2b42bea29" -> "sha256:27135149a7b2b51418ca57ae82ef0942cae2d099c255291917ad37c873262193" [label=""];
  "sha256:27135149a7b2b51418ca57ae82ef0942cae2d099c255291917ad37c873262193" -> "sha256:2015bd9414df4c7a846eca603ef93ac30f821bf03d347680191747ce02ab3c00" [label=""];
  "sha256:2015bd9414df4c7a846eca603ef93ac30f821bf03d347680191747ce02ab3c00" -> "sha256:0d598eb2f6fc55a4945174e4e3482bcaa1be6b8dd20813579ff8e4a05c202c1b" [label=""];
  "sha256:0d598eb2f6fc55a4945174e4e3482bcaa1be6b8dd20813579ff8e4a05c202c1b" -> "sha256:848fa9e74f4e82db403a54e5fccddfdb196b30a9d46462bf66e32110e0c25e0e" [label=""];
}

