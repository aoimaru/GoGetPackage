[app/sources/341902736.Dockerfile]
digraph {
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" [label="docker-image://docker.io/library/python:2.7.13@sha256:ac21ec6277f7da89c32f977b25224abbbbb0f4d3d10ce37461210c14019bc955" shape="ellipse"];
  "sha256:be37e9b0472b54706ff119cb0b80aad9f02bb8aad10252a844bc10404a140e6a" [label="local://context" shape="ellipse"];
  "sha256:26b29be485140a695bffe2e92a73c29b5c78a7b097c9d1304ced00eb0c6074c3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:27f87642de7f4259f8c3f93fd8111a38cf3068f7bd4de387d22114d327e6a3f8" [label="sha256:27f87642de7f4259f8c3f93fd8111a38cf3068f7bd4de387d22114d327e6a3f8" shape="plaintext"];
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" -> "sha256:26b29be485140a695bffe2e92a73c29b5c78a7b097c9d1304ced00eb0c6074c3" [label=""];
  "sha256:be37e9b0472b54706ff119cb0b80aad9f02bb8aad10252a844bc10404a140e6a" -> "sha256:26b29be485140a695bffe2e92a73c29b5c78a7b097c9d1304ced00eb0c6074c3" [label=""];
  "sha256:26b29be485140a695bffe2e92a73c29b5c78a7b097c9d1304ced00eb0c6074c3" -> "sha256:27f87642de7f4259f8c3f93fd8111a38cf3068f7bd4de387d22114d327e6a3f8" [label=""];
}

