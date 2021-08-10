[app/sources/235654905.Dockerfile]
digraph {
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" [label="docker-image://docker.io/library/python:latest" shape="ellipse"];
  "sha256:38007da72162d97ae5bb029c2bb380588f99e728e21bce6de7793cee141dc782" [label="local://context" shape="ellipse"];
  "sha256:32bf9cc676eba1ad4ad72e0db08c7c2f79245556e2e897c70619c840c30d39f1" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:e63a643f00daf553d69e7ff2314b70e1ba3a61540d192ca5d9ff31635912322e" [label="/bin/sh -c mkdir /app     && pip install -U -r /tmp/requirements.txt" shape="box"];
  "sha256:ee48be22a9961235a4c38011ea8809231e77b7da0b0bac3e3bf80a3251aca145" [label="mkdir{path=/app}" shape="note"];
  "sha256:707801dafb4e67ae1d370fe9474a3e3f0c6d01075155f0cf103e7b3287d0411d" [label="sha256:707801dafb4e67ae1d370fe9474a3e3f0c6d01075155f0cf103e7b3287d0411d" shape="plaintext"];
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" -> "sha256:32bf9cc676eba1ad4ad72e0db08c7c2f79245556e2e897c70619c840c30d39f1" [label=""];
  "sha256:38007da72162d97ae5bb029c2bb380588f99e728e21bce6de7793cee141dc782" -> "sha256:32bf9cc676eba1ad4ad72e0db08c7c2f79245556e2e897c70619c840c30d39f1" [label=""];
  "sha256:32bf9cc676eba1ad4ad72e0db08c7c2f79245556e2e897c70619c840c30d39f1" -> "sha256:e63a643f00daf553d69e7ff2314b70e1ba3a61540d192ca5d9ff31635912322e" [label=""];
  "sha256:e63a643f00daf553d69e7ff2314b70e1ba3a61540d192ca5d9ff31635912322e" -> "sha256:ee48be22a9961235a4c38011ea8809231e77b7da0b0bac3e3bf80a3251aca145" [label=""];
  "sha256:ee48be22a9961235a4c38011ea8809231e77b7da0b0bac3e3bf80a3251aca145" -> "sha256:707801dafb4e67ae1d370fe9474a3e3f0c6d01075155f0cf103e7b3287d0411d" [label=""];
}

