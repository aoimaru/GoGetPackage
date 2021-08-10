[app/sources/252799401.Dockerfile]
digraph {
  "sha256:d9092953adf04aaaa4bf9f314a68dcf31583886581a1153805a26428ded5f542" [label="local://context" shape="ellipse"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:05c3c4c0bf479fb719d75ad4c77de78861ad09500565ea4ab83ec0ac130bd293" [label="copy{src=/target/jamaicatalina.jar, dest=/jamaicatalina.jar}" shape="note"];
  "sha256:ab37ba27d6325c678f524ea1ad4cb04d92c3d392e8f84fde78301a607e204427" [label="sha256:ab37ba27d6325c678f524ea1ad4cb04d92c3d392e8f84fde78301a607e204427" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:05c3c4c0bf479fb719d75ad4c77de78861ad09500565ea4ab83ec0ac130bd293" [label=""];
  "sha256:d9092953adf04aaaa4bf9f314a68dcf31583886581a1153805a26428ded5f542" -> "sha256:05c3c4c0bf479fb719d75ad4c77de78861ad09500565ea4ab83ec0ac130bd293" [label=""];
  "sha256:05c3c4c0bf479fb719d75ad4c77de78861ad09500565ea4ab83ec0ac130bd293" -> "sha256:ab37ba27d6325c678f524ea1ad4cb04d92c3d392e8f84fde78301a607e204427" [label=""];
}

