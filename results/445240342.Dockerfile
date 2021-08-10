[app/sources/445240342.Dockerfile]
digraph {
  "sha256:6e808d4c008417c633499f8c12cbd87cef09faea461afca71abca4d7be549abd" [label="docker-image://docker.io/jboss/wildfly:10.0.0.Final" shape="ellipse"];
  "sha256:0aa809eb3738c2ee0d62fcc931a109ff134ad9e351fc9e6180d2eee78af93859" [label="local://context" shape="ellipse"];
  "sha256:d02219ca2e6f99e906b83d29b8758ba65f9051920b0b4f6d31e347da3604c096" [label="copy{src=/domain/configuration/*, dest=/opt/jboss/wildfly/domain/configuration/}" shape="note"];
  "sha256:123b49e45e3cbfb4ddb5ec6304a99d185ac8a3b3a1c63a34648a36bf23de494b" [label="copy{src=/entrypoint.sh, dest=/opt/jboss/wildfly/bin/entrypoint.sh}" shape="note"];
  "sha256:6dcd15740da99d613f960c9c54776b5cff63b9ed436a2dfa388e4c02c2ab2afc" [label="/bin/sh -c chown -R jboss:jboss /opt/jboss/wildfly" shape="box"];
  "sha256:cdb03608ff791896f5f7339df9d1ea93f552417be1289a3e67699853ec4256f5" [label="/bin/sh -c chmod +x /opt/jboss/wildfly/bin/entrypoint.sh" shape="box"];
  "sha256:d6a789b2b8180f98a031f26af00e086b45e8b06a580e9fd240c68dc3c5049987" [label="sha256:d6a789b2b8180f98a031f26af00e086b45e8b06a580e9fd240c68dc3c5049987" shape="plaintext"];
  "sha256:6e808d4c008417c633499f8c12cbd87cef09faea461afca71abca4d7be549abd" -> "sha256:d02219ca2e6f99e906b83d29b8758ba65f9051920b0b4f6d31e347da3604c096" [label=""];
  "sha256:0aa809eb3738c2ee0d62fcc931a109ff134ad9e351fc9e6180d2eee78af93859" -> "sha256:d02219ca2e6f99e906b83d29b8758ba65f9051920b0b4f6d31e347da3604c096" [label=""];
  "sha256:d02219ca2e6f99e906b83d29b8758ba65f9051920b0b4f6d31e347da3604c096" -> "sha256:123b49e45e3cbfb4ddb5ec6304a99d185ac8a3b3a1c63a34648a36bf23de494b" [label=""];
  "sha256:0aa809eb3738c2ee0d62fcc931a109ff134ad9e351fc9e6180d2eee78af93859" -> "sha256:123b49e45e3cbfb4ddb5ec6304a99d185ac8a3b3a1c63a34648a36bf23de494b" [label=""];
  "sha256:123b49e45e3cbfb4ddb5ec6304a99d185ac8a3b3a1c63a34648a36bf23de494b" -> "sha256:6dcd15740da99d613f960c9c54776b5cff63b9ed436a2dfa388e4c02c2ab2afc" [label=""];
  "sha256:6dcd15740da99d613f960c9c54776b5cff63b9ed436a2dfa388e4c02c2ab2afc" -> "sha256:cdb03608ff791896f5f7339df9d1ea93f552417be1289a3e67699853ec4256f5" [label=""];
  "sha256:cdb03608ff791896f5f7339df9d1ea93f552417be1289a3e67699853ec4256f5" -> "sha256:d6a789b2b8180f98a031f26af00e086b45e8b06a580e9fd240c68dc3c5049987" [label=""];
}

