[app/sources/243178751.Dockerfile]
digraph {
  "sha256:bd3040a734e0e0de456f8aeac2cb89621ce197a4ed01b2fbb1a275a1b26ca33f" [label="docker-image://docker.io/maddinat0r/debian-samp:latest" shape="ellipse"];
  "sha256:a9c8f1b7d9bb785bc82e495e20d0fc78698c185f7d78e56eac4f358d171d423b" [label="local://context" shape="ellipse"];
  "sha256:5b46c286203f2a2a046aa7e192c7d0df72e7f35ea1c2eaa0e109e684d15c6b9f" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:f23ea6318e5bb31c2d5e9c75cafe194f088946211dac1ec1fbcd15ab215f1203" [label="/bin/sh -c mkdir build" shape="box"];
  "sha256:358224f6d9f5883eebb88f04d8d9e5c6f2fb5dcb276dcf5c2885d0f6350ea002" [label="sha256:358224f6d9f5883eebb88f04d8d9e5c6f2fb5dcb276dcf5c2885d0f6350ea002" shape="plaintext"];
  "sha256:bd3040a734e0e0de456f8aeac2cb89621ce197a4ed01b2fbb1a275a1b26ca33f" -> "sha256:5b46c286203f2a2a046aa7e192c7d0df72e7f35ea1c2eaa0e109e684d15c6b9f" [label=""];
  "sha256:a9c8f1b7d9bb785bc82e495e20d0fc78698c185f7d78e56eac4f358d171d423b" -> "sha256:5b46c286203f2a2a046aa7e192c7d0df72e7f35ea1c2eaa0e109e684d15c6b9f" [label=""];
  "sha256:5b46c286203f2a2a046aa7e192c7d0df72e7f35ea1c2eaa0e109e684d15c6b9f" -> "sha256:f23ea6318e5bb31c2d5e9c75cafe194f088946211dac1ec1fbcd15ab215f1203" [label=""];
  "sha256:f23ea6318e5bb31c2d5e9c75cafe194f088946211dac1ec1fbcd15ab215f1203" -> "sha256:358224f6d9f5883eebb88f04d8d9e5c6f2fb5dcb276dcf5c2885d0f6350ea002" [label=""];
}

