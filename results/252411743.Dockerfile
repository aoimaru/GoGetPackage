[app/sources/252411743.Dockerfile]
digraph {
  "sha256:73ab5a22c661c7717fed2482bcab29466969f5f385743b0da050942e797d605b" [label="docker-image://docker.io/circleci/node:8@sha256:44c6136b6b55003fa12321aa1eb790a5a6482edb461227cb56daf488178d04dc" shape="ellipse"];
  "sha256:7d8f8c83e93b7d12f50c25f3741a49d3cf1ae8a5de157c2a853040bd63ad66a3" [label="/bin/sh -c apt-get update &&     apt-get install -y -qq jq wget python-pip python-dev &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a0d668c5c38e08fdf60b36d27c18e42c28ca1b5af01531335c56f8dbf5afb27a" [label="local://context" shape="ellipse"];
  "sha256:bb4cee561ab2030409c10a2b5c69e15db4cbe4c40622540556fc22e30bcfcff4" [label="copy{src=/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:6ea849ea6bf08ce6cf25a9fea1286ccc506a537ac07f99ae5d486b4183703cbe" [label="/bin/sh -c install-rok8s-requirements" shape="box"];
  "sha256:bf845457c079c25ce722aaee9661b276bb3eb1ee2fbae593a0f4a179915cb924" [label="sha256:bf845457c079c25ce722aaee9661b276bb3eb1ee2fbae593a0f4a179915cb924" shape="plaintext"];
  "sha256:73ab5a22c661c7717fed2482bcab29466969f5f385743b0da050942e797d605b" -> "sha256:7d8f8c83e93b7d12f50c25f3741a49d3cf1ae8a5de157c2a853040bd63ad66a3" [label=""];
  "sha256:7d8f8c83e93b7d12f50c25f3741a49d3cf1ae8a5de157c2a853040bd63ad66a3" -> "sha256:bb4cee561ab2030409c10a2b5c69e15db4cbe4c40622540556fc22e30bcfcff4" [label=""];
  "sha256:a0d668c5c38e08fdf60b36d27c18e42c28ca1b5af01531335c56f8dbf5afb27a" -> "sha256:bb4cee561ab2030409c10a2b5c69e15db4cbe4c40622540556fc22e30bcfcff4" [label=""];
  "sha256:bb4cee561ab2030409c10a2b5c69e15db4cbe4c40622540556fc22e30bcfcff4" -> "sha256:6ea849ea6bf08ce6cf25a9fea1286ccc506a537ac07f99ae5d486b4183703cbe" [label=""];
  "sha256:6ea849ea6bf08ce6cf25a9fea1286ccc506a537ac07f99ae5d486b4183703cbe" -> "sha256:bf845457c079c25ce722aaee9661b276bb3eb1ee2fbae593a0f4a179915cb924" [label=""];
}

