[app/sources/378558495.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:decedfafcf301e5763e71c5381be1e4b112bd9861d922465201f1cc70be075b5" [label="/bin/sh -c apk --update add --no-cache git" shape="box"];
  "sha256:ad9db458981008a92cd0777148a91ead0b865e6a0f7ce9483f4185486a1eb032" [label="/bin/sh -c echo '{ \"allow_root\": true }' > /root/.bowerrc" shape="box"];
  "sha256:7d9a9c796e57981c7245a1f8867d313fc56afc4e6ea28c4817a5b85f93822dd4" [label="sha256:7d9a9c796e57981c7245a1f8867d313fc56afc4e6ea28c4817a5b85f93822dd4" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:decedfafcf301e5763e71c5381be1e4b112bd9861d922465201f1cc70be075b5" [label=""];
  "sha256:decedfafcf301e5763e71c5381be1e4b112bd9861d922465201f1cc70be075b5" -> "sha256:ad9db458981008a92cd0777148a91ead0b865e6a0f7ce9483f4185486a1eb032" [label=""];
  "sha256:ad9db458981008a92cd0777148a91ead0b865e6a0f7ce9483f4185486a1eb032" -> "sha256:7d9a9c796e57981c7245a1f8867d313fc56afc4e6ea28c4817a5b85f93822dd4" [label=""];
}

