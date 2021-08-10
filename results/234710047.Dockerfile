[app/sources/234710047.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:8833ed114ac286d8369bf4d93b62f7edeb820f197d327974f8057f3f04b09a61" [label="local://context" shape="ellipse"];
  "sha256:5df460830669a16731dd39a8d5aa3ca607f4e104ab04bd68d890ee3ec99e1f34" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:353a65db6bb153e27503e0c72fc30f195200822e03712438d9919389d34243af" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:111314ae78ca2c6b610def5735489526b231298e2c8dae46a9a9f3c5d8689256" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:2a47968224207814b0cfdb6ac0cd71239414a35d5d7a378d941837bebbce67bb" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:78293cd2a2acf03c6d5b140dee95d69c42a8db987467662e10bd8853f1964c85" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:a9409aa137d2674d72f84e7d19878bc152df02a20aab37fbeb49ea6671922d05" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:53f7e686fbf5479439bb95836f78a7b6d13bab97de6d4cead7b749afb1c16d40" [label="sha256:53f7e686fbf5479439bb95836f78a7b6d13bab97de6d4cead7b749afb1c16d40" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:5df460830669a16731dd39a8d5aa3ca607f4e104ab04bd68d890ee3ec99e1f34" [label=""];
  "sha256:8833ed114ac286d8369bf4d93b62f7edeb820f197d327974f8057f3f04b09a61" -> "sha256:5df460830669a16731dd39a8d5aa3ca607f4e104ab04bd68d890ee3ec99e1f34" [label=""];
  "sha256:5df460830669a16731dd39a8d5aa3ca607f4e104ab04bd68d890ee3ec99e1f34" -> "sha256:353a65db6bb153e27503e0c72fc30f195200822e03712438d9919389d34243af" [label=""];
  "sha256:353a65db6bb153e27503e0c72fc30f195200822e03712438d9919389d34243af" -> "sha256:111314ae78ca2c6b610def5735489526b231298e2c8dae46a9a9f3c5d8689256" [label=""];
  "sha256:111314ae78ca2c6b610def5735489526b231298e2c8dae46a9a9f3c5d8689256" -> "sha256:2a47968224207814b0cfdb6ac0cd71239414a35d5d7a378d941837bebbce67bb" [label=""];
  "sha256:2a47968224207814b0cfdb6ac0cd71239414a35d5d7a378d941837bebbce67bb" -> "sha256:78293cd2a2acf03c6d5b140dee95d69c42a8db987467662e10bd8853f1964c85" [label=""];
  "sha256:78293cd2a2acf03c6d5b140dee95d69c42a8db987467662e10bd8853f1964c85" -> "sha256:a9409aa137d2674d72f84e7d19878bc152df02a20aab37fbeb49ea6671922d05" [label=""];
  "sha256:a9409aa137d2674d72f84e7d19878bc152df02a20aab37fbeb49ea6671922d05" -> "sha256:53f7e686fbf5479439bb95836f78a7b6d13bab97de6d4cead7b749afb1c16d40" [label=""];
}

