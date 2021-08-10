[app/sources/249682471.Dockerfile]
digraph {
  "sha256:c73d1dcb9d8dcb257d0f7cb0bab650b547eb8c04943cdd2f9f3bc4080e83bb64" [label="local://context" shape="ellipse"];
  "sha256:8355606acb6ef359fa28a62c0c331b985972a192fb0026195cda6169c1ab0166" [label="docker-image://docker.io/openshift/origin-base:latest" shape="ellipse"];
  "sha256:ba28c76af309243e4e9c126ecb0decdf827b1225a924b31d91e023b56f04b248" [label="copy{src=/config.yml, dest=/}" shape="note"];
  "sha256:33ec44c69861d83f4ac867fd041858c346ace2ebd68dcfeea4de6dff6e58b4bb" [label="copy{src=/bin/dockerregistry, dest=/dockerregistry}" shape="note"];
  "sha256:af8c5a328fbd8c88ebd9a3a7c8bde51d9ed73a12b416f023f270894d69907430" [label="sha256:af8c5a328fbd8c88ebd9a3a7c8bde51d9ed73a12b416f023f270894d69907430" shape="plaintext"];
  "sha256:8355606acb6ef359fa28a62c0c331b985972a192fb0026195cda6169c1ab0166" -> "sha256:ba28c76af309243e4e9c126ecb0decdf827b1225a924b31d91e023b56f04b248" [label=""];
  "sha256:c73d1dcb9d8dcb257d0f7cb0bab650b547eb8c04943cdd2f9f3bc4080e83bb64" -> "sha256:ba28c76af309243e4e9c126ecb0decdf827b1225a924b31d91e023b56f04b248" [label=""];
  "sha256:ba28c76af309243e4e9c126ecb0decdf827b1225a924b31d91e023b56f04b248" -> "sha256:33ec44c69861d83f4ac867fd041858c346ace2ebd68dcfeea4de6dff6e58b4bb" [label=""];
  "sha256:c73d1dcb9d8dcb257d0f7cb0bab650b547eb8c04943cdd2f9f3bc4080e83bb64" -> "sha256:33ec44c69861d83f4ac867fd041858c346ace2ebd68dcfeea4de6dff6e58b4bb" [label=""];
  "sha256:33ec44c69861d83f4ac867fd041858c346ace2ebd68dcfeea4de6dff6e58b4bb" -> "sha256:af8c5a328fbd8c88ebd9a3a7c8bde51d9ed73a12b416f023f270894d69907430" [label=""];
}

