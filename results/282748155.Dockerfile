[app/sources/282748155.Dockerfile]
digraph {
  "sha256:b1b40fd35de83aa4be1ca9b3249629403dcbb9aea0dab3988903199391bef61a" [label="docker-image://gcr.io/google-appengine/aspnetcore:2.0@sha256:07dc334a72c859102a9540c197f91114f6be9ec201c9f57197b0265d947627e2" shape="ellipse"];
  "sha256:ec9e9dbae1520174af865c41c106296663d705b3c09d320424a2363423be52c4" [label="local://context" shape="ellipse"];
  "sha256:3df3fe10650fa0e79887d52daf467b3dbdf9f33d629014d7600f174daf9ed20f" [label="copy{src=/bin/Release/netcoreapp2.0/publish, dest=/app}" shape="note"];
  "sha256:9bde42bc4cf02525764c2a9ec05d68e51efc19ef3a6b0acd120d72e4024472c2" [label="mkdir{path=/app}" shape="note"];
  "sha256:77b3bb276c511b80fc4a58f926794e0a372dce1a430f79b14d4d6e694ca46522" [label="sha256:77b3bb276c511b80fc4a58f926794e0a372dce1a430f79b14d4d6e694ca46522" shape="plaintext"];
  "sha256:b1b40fd35de83aa4be1ca9b3249629403dcbb9aea0dab3988903199391bef61a" -> "sha256:3df3fe10650fa0e79887d52daf467b3dbdf9f33d629014d7600f174daf9ed20f" [label=""];
  "sha256:ec9e9dbae1520174af865c41c106296663d705b3c09d320424a2363423be52c4" -> "sha256:3df3fe10650fa0e79887d52daf467b3dbdf9f33d629014d7600f174daf9ed20f" [label=""];
  "sha256:3df3fe10650fa0e79887d52daf467b3dbdf9f33d629014d7600f174daf9ed20f" -> "sha256:9bde42bc4cf02525764c2a9ec05d68e51efc19ef3a6b0acd120d72e4024472c2" [label=""];
  "sha256:9bde42bc4cf02525764c2a9ec05d68e51efc19ef3a6b0acd120d72e4024472c2" -> "sha256:77b3bb276c511b80fc4a58f926794e0a372dce1a430f79b14d4d6e694ca46522" [label=""];
}

