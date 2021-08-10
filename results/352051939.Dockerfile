[app/sources/352051939.Dockerfile]
digraph {
  "sha256:f8d64c48a9c6f7780a288531fe4526ce7773e814143ee457651faf5559027ada" [label="docker-image://docker.io/openforis/java:latest" shape="ellipse"];
  "sha256:8790fb1e403348452ec381ba386e9549e241c60e1d48f37a9cbcb7b64229bafd" [label="local://context" shape="ellipse"];
  "sha256:4e0ef72171f61725c66586ebd0cbe158626bb82af05aeefb3f8c5bc1cfd47cc8" [label="copy{src=/config, dest=/config}" shape="note"];
  "sha256:f007d4b4bae8c85aed2219b7d0086233b153fabc39f7e52a6dcbf9a5b36d97b6" [label="copy{src=/script, dest=/script}" shape="note"];
  "sha256:40b4058b59140e0c8ad45185be97a347e47c92909ffcb4296e1ba049a6099100" [label="/bin/sh -c chmod -R 500 /script &&     chmod -R 400 /config; sync &&     /script/init_image.sh" shape="box"];
  "sha256:792ef1213ab320106d3dbe35a367e6e211a211c33d2dc49b430940599aa9a93a" [label="copy{src=/binary/sepal-api-gateway.jar, dest=/opt/sepal/bin/sepal-api-gateway.jar}" shape="note"];
  "sha256:c597e4c713cc71e5e9f779bb79c34420093d37c89cc3c5dba0cd9ea8f299921e" [label="sha256:c597e4c713cc71e5e9f779bb79c34420093d37c89cc3c5dba0cd9ea8f299921e" shape="plaintext"];
  "sha256:f8d64c48a9c6f7780a288531fe4526ce7773e814143ee457651faf5559027ada" -> "sha256:4e0ef72171f61725c66586ebd0cbe158626bb82af05aeefb3f8c5bc1cfd47cc8" [label=""];
  "sha256:8790fb1e403348452ec381ba386e9549e241c60e1d48f37a9cbcb7b64229bafd" -> "sha256:4e0ef72171f61725c66586ebd0cbe158626bb82af05aeefb3f8c5bc1cfd47cc8" [label=""];
  "sha256:4e0ef72171f61725c66586ebd0cbe158626bb82af05aeefb3f8c5bc1cfd47cc8" -> "sha256:f007d4b4bae8c85aed2219b7d0086233b153fabc39f7e52a6dcbf9a5b36d97b6" [label=""];
  "sha256:8790fb1e403348452ec381ba386e9549e241c60e1d48f37a9cbcb7b64229bafd" -> "sha256:f007d4b4bae8c85aed2219b7d0086233b153fabc39f7e52a6dcbf9a5b36d97b6" [label=""];
  "sha256:f007d4b4bae8c85aed2219b7d0086233b153fabc39f7e52a6dcbf9a5b36d97b6" -> "sha256:40b4058b59140e0c8ad45185be97a347e47c92909ffcb4296e1ba049a6099100" [label=""];
  "sha256:40b4058b59140e0c8ad45185be97a347e47c92909ffcb4296e1ba049a6099100" -> "sha256:792ef1213ab320106d3dbe35a367e6e211a211c33d2dc49b430940599aa9a93a" [label=""];
  "sha256:8790fb1e403348452ec381ba386e9549e241c60e1d48f37a9cbcb7b64229bafd" -> "sha256:792ef1213ab320106d3dbe35a367e6e211a211c33d2dc49b430940599aa9a93a" [label=""];
  "sha256:792ef1213ab320106d3dbe35a367e6e211a211c33d2dc49b430940599aa9a93a" -> "sha256:c597e4c713cc71e5e9f779bb79c34420093d37c89cc3c5dba0cd9ea8f299921e" [label=""];
}

