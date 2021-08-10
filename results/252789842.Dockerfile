[app/sources/252789842.Dockerfile]
digraph {
  "sha256:c0027681183a2e0844bf5acf770be567827182acfc1e12455eafc275b7f9c0f7" [label="docker-image://docker.io/callforamerica/debian@sha256:0bad997fbe419b58a1f1ea98e9a46d4102820b995bc30749bb681e7a5df8d367" shape="ellipse"];
  "sha256:81b7fa8cda409eeb449297d58aa757945d0c1845c675a4e0525a56a4ac49d10b" [label="local://context" shape="ellipse"];
  "sha256:7b6cb22bcc64c29f20b7af460ffcbf087cbf2d89c325c23081fb4f5897ba34aa" [label="copy{src=/build.sh, dest=/tmp/build.sh}" shape="note"];
  "sha256:c111fa32fb80caee954aa58cb0e82ad33b30b02895b183931c6869b452c3d85e" [label="/bin/sh -c /tmp/build.sh" shape="box"];
  "sha256:300b7a7a0b68e7548e00880e39d2cecd29df06fba550629f73915a0aae04130c" [label="copy{src=/entrypoint, dest=/tmp/}" shape="note"];
  "sha256:358229dc762e864eae6c21866939ec8e20e2bfbc20ac3d083fd1f12e25ad4eb1" [label="/bin/sh -c mv /tmp/entrypoint /" shape="box"];
  "sha256:e62519d48d55a0d80112f1780b239a34d6708c812f045879c5b49e5a6268ab69" [label="mkdir{path=/opt/bigcouch}" shape="note"];
  "sha256:0a9ef075747b82df66adf020a43f92c9f182a79eccdf8f6699fb2d4da764b8e2" [label="sha256:0a9ef075747b82df66adf020a43f92c9f182a79eccdf8f6699fb2d4da764b8e2" shape="plaintext"];
  "sha256:c0027681183a2e0844bf5acf770be567827182acfc1e12455eafc275b7f9c0f7" -> "sha256:7b6cb22bcc64c29f20b7af460ffcbf087cbf2d89c325c23081fb4f5897ba34aa" [label=""];
  "sha256:81b7fa8cda409eeb449297d58aa757945d0c1845c675a4e0525a56a4ac49d10b" -> "sha256:7b6cb22bcc64c29f20b7af460ffcbf087cbf2d89c325c23081fb4f5897ba34aa" [label=""];
  "sha256:7b6cb22bcc64c29f20b7af460ffcbf087cbf2d89c325c23081fb4f5897ba34aa" -> "sha256:c111fa32fb80caee954aa58cb0e82ad33b30b02895b183931c6869b452c3d85e" [label=""];
  "sha256:c111fa32fb80caee954aa58cb0e82ad33b30b02895b183931c6869b452c3d85e" -> "sha256:300b7a7a0b68e7548e00880e39d2cecd29df06fba550629f73915a0aae04130c" [label=""];
  "sha256:81b7fa8cda409eeb449297d58aa757945d0c1845c675a4e0525a56a4ac49d10b" -> "sha256:300b7a7a0b68e7548e00880e39d2cecd29df06fba550629f73915a0aae04130c" [label=""];
  "sha256:300b7a7a0b68e7548e00880e39d2cecd29df06fba550629f73915a0aae04130c" -> "sha256:358229dc762e864eae6c21866939ec8e20e2bfbc20ac3d083fd1f12e25ad4eb1" [label=""];
  "sha256:358229dc762e864eae6c21866939ec8e20e2bfbc20ac3d083fd1f12e25ad4eb1" -> "sha256:e62519d48d55a0d80112f1780b239a34d6708c812f045879c5b49e5a6268ab69" [label=""];
  "sha256:e62519d48d55a0d80112f1780b239a34d6708c812f045879c5b49e5a6268ab69" -> "sha256:0a9ef075747b82df66adf020a43f92c9f182a79eccdf8f6699fb2d4da764b8e2" [label=""];
}

