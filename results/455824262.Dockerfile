[app/sources/455824262.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:61275c78ebe43d575a27ad42036c0915fd413a48fa2870221d95174ed78d2740" [label="mkdir{path=/usr/local/src/app}" shape="note"];
  "sha256:5af15e75afe9f485f151dd2e0bbf512268b353b73d867f093b56f9aca15f222e" [label="local://context" shape="ellipse"];
  "sha256:ce4deb1e0d91b5baa06e2eead68b2701335d796128f5b6fdb373df3058c9ad84" [label="copy{src=/, dest=/usr/local/src/app}" shape="note"];
  "sha256:ce8919e893ef5eaab89b000c4398e3456a8dc7d4fe1956a31f9427437fe56089" [label="/bin/sh -c apt-get update &&     apt-get install -y curl python make g++ &&         (curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash) &&     export NVM_DIR=\"$HOME/.nvm\" &&     . ${NVM_DIR}/nvm.sh &&     nvm install 4.8 &&     nvm use 4.8 &&         npm install --unsafe-perm &&     npm test &&         apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0b6620e17d6f38455f3d6e11dfa97cf89f3fd0c7cb9efb453c52e96e663a0403" [label="sha256:0b6620e17d6f38455f3d6e11dfa97cf89f3fd0c7cb9efb453c52e96e663a0403" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:61275c78ebe43d575a27ad42036c0915fd413a48fa2870221d95174ed78d2740" [label=""];
  "sha256:61275c78ebe43d575a27ad42036c0915fd413a48fa2870221d95174ed78d2740" -> "sha256:ce4deb1e0d91b5baa06e2eead68b2701335d796128f5b6fdb373df3058c9ad84" [label=""];
  "sha256:5af15e75afe9f485f151dd2e0bbf512268b353b73d867f093b56f9aca15f222e" -> "sha256:ce4deb1e0d91b5baa06e2eead68b2701335d796128f5b6fdb373df3058c9ad84" [label=""];
  "sha256:ce4deb1e0d91b5baa06e2eead68b2701335d796128f5b6fdb373df3058c9ad84" -> "sha256:ce8919e893ef5eaab89b000c4398e3456a8dc7d4fe1956a31f9427437fe56089" [label=""];
  "sha256:ce8919e893ef5eaab89b000c4398e3456a8dc7d4fe1956a31f9427437fe56089" -> "sha256:0b6620e17d6f38455f3d6e11dfa97cf89f3fd0c7cb9efb453c52e96e663a0403" [label=""];
}

