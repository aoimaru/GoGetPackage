[app/sources/477608338.Dockerfile]
digraph {
  "sha256:5cd56552a24e37f314669c20ca26983c5d6e317efcdbf5df9701882c4012a94e" [label="docker-image://hub.opshub.sh/containerops/nodejs:latest" shape="ellipse"];
  "sha256:c59bba33a5f5ef41e2c394f401376f073619eb78449b8496372dae1848c8f3aa" [label="/bin/sh -c apt-get install -y bzip2" shape="box"];
  "sha256:dc21b12957881f264da660769ef740ccb87be73d2cf80317f16f4a0230973dbf" [label="/bin/sh -c npm install -g jshint" shape="box"];
  "sha256:bf8a88c4d390c415d76752f93bfc37b2fd74e2cf3019c8f34bc738f109137b25" [label="/bin/sh -c mkdir -p /root/src" shape="box"];
  "sha256:44d2286e65e2bab6afec94bcb42b2bbba3b96de872394d9efe319ea9b80fa5a4" [label="local://context" shape="ellipse"];
  "sha256:c0bbc4f1629dedb28a59c6b213524139f4cd1a1983e1bc03b0fa041d6c417d36" [label="copy{src=/, dest=/root/src}" shape="note"];
  "sha256:8dc9cbb8128254e50b0c8ffc7fe751728c00454fc99a0ed326de93d478db6d20" [label="mkdir{path=/root/src}" shape="note"];
  "sha256:f5e77d2ddd7d281188624aa1b28f101e4e18a4308757a1096be931c4abb2583d" [label="sha256:f5e77d2ddd7d281188624aa1b28f101e4e18a4308757a1096be931c4abb2583d" shape="plaintext"];
  "sha256:5cd56552a24e37f314669c20ca26983c5d6e317efcdbf5df9701882c4012a94e" -> "sha256:c59bba33a5f5ef41e2c394f401376f073619eb78449b8496372dae1848c8f3aa" [label=""];
  "sha256:c59bba33a5f5ef41e2c394f401376f073619eb78449b8496372dae1848c8f3aa" -> "sha256:dc21b12957881f264da660769ef740ccb87be73d2cf80317f16f4a0230973dbf" [label=""];
  "sha256:dc21b12957881f264da660769ef740ccb87be73d2cf80317f16f4a0230973dbf" -> "sha256:bf8a88c4d390c415d76752f93bfc37b2fd74e2cf3019c8f34bc738f109137b25" [label=""];
  "sha256:bf8a88c4d390c415d76752f93bfc37b2fd74e2cf3019c8f34bc738f109137b25" -> "sha256:c0bbc4f1629dedb28a59c6b213524139f4cd1a1983e1bc03b0fa041d6c417d36" [label=""];
  "sha256:44d2286e65e2bab6afec94bcb42b2bbba3b96de872394d9efe319ea9b80fa5a4" -> "sha256:c0bbc4f1629dedb28a59c6b213524139f4cd1a1983e1bc03b0fa041d6c417d36" [label=""];
  "sha256:c0bbc4f1629dedb28a59c6b213524139f4cd1a1983e1bc03b0fa041d6c417d36" -> "sha256:8dc9cbb8128254e50b0c8ffc7fe751728c00454fc99a0ed326de93d478db6d20" [label=""];
  "sha256:8dc9cbb8128254e50b0c8ffc7fe751728c00454fc99a0ed326de93d478db6d20" -> "sha256:f5e77d2ddd7d281188624aa1b28f101e4e18a4308757a1096be931c4abb2583d" [label=""];
}

