[app/sources/252788981.Dockerfile]
digraph {
  "sha256:0475e0a787309e26a80e49077452a3cc8e62a53946cc50cc78b37dbef3e89e69" [label="docker-image://docker.io/ascendhit/ruby-plus:latest" shape="ellipse"];
  "sha256:2eb5a386144bc9d8571b05f22377875ae5aed798cefbb35b38398d5dcd578379" [label="/bin/sh -c mkdir -p $APP_HOME" shape="box"];
  "sha256:be81cb1d2c9b7ed53684fa8e31a4a8ee2d7c4da92de0232df207fa3704fbc9a4" [label="mkdir{path=/app/user}" shape="note"];
  "sha256:3bd491e700a9466c49b84e6ab514dd250b2d76b91770d82eb8024229b93a32d7" [label="/bin/sh -c gem install mailcatcher" shape="box"];
  "sha256:52fd78ac75933126b52c137923461a138bab3fb8f28dbc16ef64311301344b2f" [label="sha256:52fd78ac75933126b52c137923461a138bab3fb8f28dbc16ef64311301344b2f" shape="plaintext"];
  "sha256:0475e0a787309e26a80e49077452a3cc8e62a53946cc50cc78b37dbef3e89e69" -> "sha256:2eb5a386144bc9d8571b05f22377875ae5aed798cefbb35b38398d5dcd578379" [label=""];
  "sha256:2eb5a386144bc9d8571b05f22377875ae5aed798cefbb35b38398d5dcd578379" -> "sha256:be81cb1d2c9b7ed53684fa8e31a4a8ee2d7c4da92de0232df207fa3704fbc9a4" [label=""];
  "sha256:be81cb1d2c9b7ed53684fa8e31a4a8ee2d7c4da92de0232df207fa3704fbc9a4" -> "sha256:3bd491e700a9466c49b84e6ab514dd250b2d76b91770d82eb8024229b93a32d7" [label=""];
  "sha256:3bd491e700a9466c49b84e6ab514dd250b2d76b91770d82eb8024229b93a32d7" -> "sha256:52fd78ac75933126b52c137923461a138bab3fb8f28dbc16ef64311301344b2f" [label=""];
}

