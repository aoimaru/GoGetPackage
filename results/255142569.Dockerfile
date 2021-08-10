[app/sources/255142569.Dockerfile]
digraph {
  "sha256:12443432c6a2d7b000e62c03ba1da75ab6fe480b82e4f02bc0a65be1b7d738ec" [label="local://context" shape="ellipse"];
  "sha256:b9e89d631d8f83790f1f5f79ae7a7872c8b8d377bf35873df7ca61257e2aeaa0" [label="docker-image://10.84.34.155:5000/ubuntu:14.04.5" shape="ellipse"];
  "sha256:bd1d516e0d0c6a8a112be46381033e4c7e479de1f9aca1823b32a28f88321385" [label="copy{src=/install_repo.sh, dest=/}" shape="note"];
  "sha256:58b8971347c0301d680d3dd83f6264662eaef2e23d03b87606fae6bbac3fc6d4" [label="/bin/sh -c bash -x /install_repo.sh" shape="box"];
  "sha256:eab2ee1bbbee4403c911c13f7d7082190cc3a3459666a49c5f8338431c376ea9" [label="copy{src=/nginx_site.conf, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:1bf03aad1dc0dcb038b49a4485855a80acbdac6bed4ca3b2541562f3b0027355" [label="/bin/sh -c echo \"server_names_hash_bucket_size 64;\" > /etc/nginx/conf.d/server_names_hash_bucket_size.conf" shape="box"];
  "sha256:407821a4b25d76cea25f79c72c5e079b9429ba1bd8ec98de1d7aadd6ad37f74e" [label="/bin/sh -c sed -i '1idaemon off;' /etc/nginx/nginx.conf" shape="box"];
  "sha256:c8f0526580ff85d795ce0a098f243679e83e4d98056271d4085ec8f80c7eface" [label="/bin/sh -c echo \"echo \\\"Repo is up on port 1567, point apt source.list to 'deb http://<ip of repo>:1567 ./'\\\"; /usr/sbin/nginx\" > /entrypoint.sh;     chmod +x /entrypoint.sh" shape="box"];
  "sha256:8c1bf8e1462ecf2cc018f6d4a36cb14f92f34618f19bd16376bb110628e0d9a9" [label="sha256:8c1bf8e1462ecf2cc018f6d4a36cb14f92f34618f19bd16376bb110628e0d9a9" shape="plaintext"];
  "sha256:b9e89d631d8f83790f1f5f79ae7a7872c8b8d377bf35873df7ca61257e2aeaa0" -> "sha256:bd1d516e0d0c6a8a112be46381033e4c7e479de1f9aca1823b32a28f88321385" [label=""];
  "sha256:12443432c6a2d7b000e62c03ba1da75ab6fe480b82e4f02bc0a65be1b7d738ec" -> "sha256:bd1d516e0d0c6a8a112be46381033e4c7e479de1f9aca1823b32a28f88321385" [label=""];
  "sha256:bd1d516e0d0c6a8a112be46381033e4c7e479de1f9aca1823b32a28f88321385" -> "sha256:58b8971347c0301d680d3dd83f6264662eaef2e23d03b87606fae6bbac3fc6d4" [label=""];
  "sha256:58b8971347c0301d680d3dd83f6264662eaef2e23d03b87606fae6bbac3fc6d4" -> "sha256:eab2ee1bbbee4403c911c13f7d7082190cc3a3459666a49c5f8338431c376ea9" [label=""];
  "sha256:12443432c6a2d7b000e62c03ba1da75ab6fe480b82e4f02bc0a65be1b7d738ec" -> "sha256:eab2ee1bbbee4403c911c13f7d7082190cc3a3459666a49c5f8338431c376ea9" [label=""];
  "sha256:eab2ee1bbbee4403c911c13f7d7082190cc3a3459666a49c5f8338431c376ea9" -> "sha256:1bf03aad1dc0dcb038b49a4485855a80acbdac6bed4ca3b2541562f3b0027355" [label=""];
  "sha256:1bf03aad1dc0dcb038b49a4485855a80acbdac6bed4ca3b2541562f3b0027355" -> "sha256:407821a4b25d76cea25f79c72c5e079b9429ba1bd8ec98de1d7aadd6ad37f74e" [label=""];
  "sha256:407821a4b25d76cea25f79c72c5e079b9429ba1bd8ec98de1d7aadd6ad37f74e" -> "sha256:c8f0526580ff85d795ce0a098f243679e83e4d98056271d4085ec8f80c7eface" [label=""];
  "sha256:c8f0526580ff85d795ce0a098f243679e83e4d98056271d4085ec8f80c7eface" -> "sha256:8c1bf8e1462ecf2cc018f6d4a36cb14f92f34618f19bd16376bb110628e0d9a9" [label=""];
}

