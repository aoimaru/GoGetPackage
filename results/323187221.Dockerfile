[app/sources/323187221.Dockerfile]
digraph {
  "sha256:fd5bd1da5f07b1a2fc1cbf17861bfc0e299fcb722bdea249547e0bb378a6e1ab" [label="docker-image://docker.io/library/python:3.6.5-slim" shape="ellipse"];
  "sha256:b56485cc2942a11c7068a10cdfa3c02751b3ccb32e2e271c03159f74138ddb8c" [label="/bin/sh -c apt-get update &&     apt-get -y install netcat &&     apt-get clean" shape="box"];
  "sha256:2a62b2c57a75c2ea527e4cddcf0b64aa95471032a474e1b72d610ae201b7ecfe" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:5d68ea988de033af67443de3ba47193780aa817cfbd417bbe40236bdccdf9c9b" [label="local://context" shape="ellipse"];
  "sha256:a79cc6c2af176a9646a16bbabf02ff232e59e5d1e5b1612231108b56b957306e" [label="copy{src=/requirements.txt, dest=/usr/src/app/requirements.txt}" shape="note"];
  "sha256:ebcbd1f91524579a465b02cd8013ca02e9462501f911b57673d5b1cf49aa0a46" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:824fa5cdced28a08e9aa10030f44b9c90b60cd274cd1c8e508464128709791ee" [label="copy{src=/entrypoint-stage.sh, dest=/usr/src/app/entrypoint-stage.sh}" shape="note"];
  "sha256:7c8defcb1f3d0e2559d184dae80d22ebbbd953d45736046c335825baf0a58b7b" [label="/bin/sh -c chmod +x /usr/src/app/entrypoint-stage.sh" shape="box"];
  "sha256:675a91f167a85b05f4a237f70e495d1df5359eeb9b81250371c65e5a9c0ed5e9" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:918a7375439540c9b38e16a6b682dc918dcd876b93160f86212330da2388db72" [label="sha256:918a7375439540c9b38e16a6b682dc918dcd876b93160f86212330da2388db72" shape="plaintext"];
  "sha256:fd5bd1da5f07b1a2fc1cbf17861bfc0e299fcb722bdea249547e0bb378a6e1ab" -> "sha256:b56485cc2942a11c7068a10cdfa3c02751b3ccb32e2e271c03159f74138ddb8c" [label=""];
  "sha256:b56485cc2942a11c7068a10cdfa3c02751b3ccb32e2e271c03159f74138ddb8c" -> "sha256:2a62b2c57a75c2ea527e4cddcf0b64aa95471032a474e1b72d610ae201b7ecfe" [label=""];
  "sha256:2a62b2c57a75c2ea527e4cddcf0b64aa95471032a474e1b72d610ae201b7ecfe" -> "sha256:a79cc6c2af176a9646a16bbabf02ff232e59e5d1e5b1612231108b56b957306e" [label=""];
  "sha256:5d68ea988de033af67443de3ba47193780aa817cfbd417bbe40236bdccdf9c9b" -> "sha256:a79cc6c2af176a9646a16bbabf02ff232e59e5d1e5b1612231108b56b957306e" [label=""];
  "sha256:a79cc6c2af176a9646a16bbabf02ff232e59e5d1e5b1612231108b56b957306e" -> "sha256:ebcbd1f91524579a465b02cd8013ca02e9462501f911b57673d5b1cf49aa0a46" [label=""];
  "sha256:ebcbd1f91524579a465b02cd8013ca02e9462501f911b57673d5b1cf49aa0a46" -> "sha256:824fa5cdced28a08e9aa10030f44b9c90b60cd274cd1c8e508464128709791ee" [label=""];
  "sha256:5d68ea988de033af67443de3ba47193780aa817cfbd417bbe40236bdccdf9c9b" -> "sha256:824fa5cdced28a08e9aa10030f44b9c90b60cd274cd1c8e508464128709791ee" [label=""];
  "sha256:824fa5cdced28a08e9aa10030f44b9c90b60cd274cd1c8e508464128709791ee" -> "sha256:7c8defcb1f3d0e2559d184dae80d22ebbbd953d45736046c335825baf0a58b7b" [label=""];
  "sha256:7c8defcb1f3d0e2559d184dae80d22ebbbd953d45736046c335825baf0a58b7b" -> "sha256:675a91f167a85b05f4a237f70e495d1df5359eeb9b81250371c65e5a9c0ed5e9" [label=""];
  "sha256:5d68ea988de033af67443de3ba47193780aa817cfbd417bbe40236bdccdf9c9b" -> "sha256:675a91f167a85b05f4a237f70e495d1df5359eeb9b81250371c65e5a9c0ed5e9" [label=""];
  "sha256:675a91f167a85b05f4a237f70e495d1df5359eeb9b81250371c65e5a9c0ed5e9" -> "sha256:918a7375439540c9b38e16a6b682dc918dcd876b93160f86212330da2388db72" [label=""];
}

