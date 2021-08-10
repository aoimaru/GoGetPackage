[app/sources/354560292.Dockerfile]
digraph {
  "sha256:728d63f79d8dace1bd40796778986f461eabf98f564b77fae3954c04cec611dd" [label="docker-image://mcr.microsoft.com/windows/servercore:latest" shape="ellipse"];
  "sha256:4e898a38ef1df5427e8cd7a9f31b4f61737ccfad48361c85694522a3743f2658" [label="local://context" shape="ellipse"];
  "sha256:58c1bdb8a28e6f4eee68b3894953c9b9304172cac8977b711f4fdcdeca4d2f89" [label="copy{src=/server-jre-8u112-windows-x64.tar.gz, dest=/}" shape="note"];
  "sha256:fc8d0315ba81272321d85df5b89998433108c18aa00e93a377e63c20f8db248f" [label="/bin/sh -c setx /M PATH %PATH%;%JAVA_HOME%\\bin" shape="box"];
  "sha256:5a891d496c1049cbbc84eec7d8f8400e24ae47d1f2493c43d56a80d8d30e272f" [label="sha256:5a891d496c1049cbbc84eec7d8f8400e24ae47d1f2493c43d56a80d8d30e272f" shape="plaintext"];
  "sha256:728d63f79d8dace1bd40796778986f461eabf98f564b77fae3954c04cec611dd" -> "sha256:58c1bdb8a28e6f4eee68b3894953c9b9304172cac8977b711f4fdcdeca4d2f89" [label=""];
  "sha256:4e898a38ef1df5427e8cd7a9f31b4f61737ccfad48361c85694522a3743f2658" -> "sha256:58c1bdb8a28e6f4eee68b3894953c9b9304172cac8977b711f4fdcdeca4d2f89" [label=""];
  "sha256:58c1bdb8a28e6f4eee68b3894953c9b9304172cac8977b711f4fdcdeca4d2f89" -> "sha256:fc8d0315ba81272321d85df5b89998433108c18aa00e93a377e63c20f8db248f" [label=""];
  "sha256:fc8d0315ba81272321d85df5b89998433108c18aa00e93a377e63c20f8db248f" -> "sha256:5a891d496c1049cbbc84eec7d8f8400e24ae47d1f2493c43d56a80d8d30e272f" [label=""];
}

