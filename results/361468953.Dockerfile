[app/sources/361468953.Dockerfile]
digraph {
  "sha256:fafe1a31b3aabe0bbdd16091bb87c38ec84f48bdde97bde46107d59e6d6b06f0" [label="docker-image://docker.io/ibnesayeed/scratch-certs:latest" shape="ellipse"];
  "sha256:be0fc4f6070a398dca60655ceea4cff2966b019e8b85c17d34c1308883f4c344" [label="local://context" shape="ellipse"];
  "sha256:c72d07c3a4d298f3634363d71aa73cf31ff15a20c63fc1dcadf398858d7a47fb" [label="copy{src=/memgator, dest=/}" shape="note"];
  "sha256:2a22028e6e047c10264631123760caee5ebaa212bc22c96aec10005a742bc8f3" [label="sha256:2a22028e6e047c10264631123760caee5ebaa212bc22c96aec10005a742bc8f3" shape="plaintext"];
  "sha256:fafe1a31b3aabe0bbdd16091bb87c38ec84f48bdde97bde46107d59e6d6b06f0" -> "sha256:c72d07c3a4d298f3634363d71aa73cf31ff15a20c63fc1dcadf398858d7a47fb" [label=""];
  "sha256:be0fc4f6070a398dca60655ceea4cff2966b019e8b85c17d34c1308883f4c344" -> "sha256:c72d07c3a4d298f3634363d71aa73cf31ff15a20c63fc1dcadf398858d7a47fb" [label=""];
  "sha256:c72d07c3a4d298f3634363d71aa73cf31ff15a20c63fc1dcadf398858d7a47fb" -> "sha256:2a22028e6e047c10264631123760caee5ebaa212bc22c96aec10005a742bc8f3" [label=""];
}

