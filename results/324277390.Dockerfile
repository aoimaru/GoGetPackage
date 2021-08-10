[app/sources/324277390.Dockerfile]
digraph {
  "sha256:0ed26a07218bf49303812e6d79ca96ac934258580e0764bc5cd1ed67209f515c" [label="docker-image://docker.io/gitpod/workspace-full-vnc:latest" shape="ellipse"];
  "sha256:50b38e7d565cf43e1378f6ef77deb56a93f053c96457a461a8e96dd9394b5bb9" [label="/bin/sh -c apt-get update     && apt-get install -y libgtk-3-dev     && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*" shape="box"];
  "sha256:44d4893a62b01e54262929d4b1dda26eb60c61255c1b6888d2fb77c7d0700603" [label="sha256:44d4893a62b01e54262929d4b1dda26eb60c61255c1b6888d2fb77c7d0700603" shape="plaintext"];
  "sha256:0ed26a07218bf49303812e6d79ca96ac934258580e0764bc5cd1ed67209f515c" -> "sha256:50b38e7d565cf43e1378f6ef77deb56a93f053c96457a461a8e96dd9394b5bb9" [label=""];
  "sha256:50b38e7d565cf43e1378f6ef77deb56a93f053c96457a461a8e96dd9394b5bb9" -> "sha256:44d4893a62b01e54262929d4b1dda26eb60c61255c1b6888d2fb77c7d0700603" [label=""];
}

