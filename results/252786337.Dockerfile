[app/sources/252786337.Dockerfile]
digraph {
  "sha256:58355cdbcac817b9bd64671f83a98914e390ec15032da3b93a9bb6c5dce12bc4" [label="docker-image://docker.io/dochang/confd:latest" shape="ellipse"];
  "sha256:9485f0e5ab623cb84f93381eb520f8b472c9324533f6f4bbb74d3b974fb143aa" [label="local://context" shape="ellipse"];
  "sha256:f0e4df001c2eb9e86b5296a3d4a397f74fabad3b377bbb04ec17b55d171a1671" [label="copy{src=/--from=builder, dest=/usr/local/bin/},copy{src=/go/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:f1e673a8832b91b58c2738de49d8f5bd897e198f0a3a70a3b6b228b98258abdf" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:d23795e5fde0c98ca0794df19daf4eb4f6763da22e04613fd556c229c765fe4a" [label="sha256:d23795e5fde0c98ca0794df19daf4eb4f6763da22e04613fd556c229c765fe4a" shape="plaintext"];
  "sha256:58355cdbcac817b9bd64671f83a98914e390ec15032da3b93a9bb6c5dce12bc4" -> "sha256:f0e4df001c2eb9e86b5296a3d4a397f74fabad3b377bbb04ec17b55d171a1671" [label=""];
  "sha256:9485f0e5ab623cb84f93381eb520f8b472c9324533f6f4bbb74d3b974fb143aa" -> "sha256:f0e4df001c2eb9e86b5296a3d4a397f74fabad3b377bbb04ec17b55d171a1671" [label=""];
  "sha256:f0e4df001c2eb9e86b5296a3d4a397f74fabad3b377bbb04ec17b55d171a1671" -> "sha256:f1e673a8832b91b58c2738de49d8f5bd897e198f0a3a70a3b6b228b98258abdf" [label=""];
  "sha256:9485f0e5ab623cb84f93381eb520f8b472c9324533f6f4bbb74d3b974fb143aa" -> "sha256:f1e673a8832b91b58c2738de49d8f5bd897e198f0a3a70a3b6b228b98258abdf" [label=""];
  "sha256:f1e673a8832b91b58c2738de49d8f5bd897e198f0a3a70a3b6b228b98258abdf" -> "sha256:d23795e5fde0c98ca0794df19daf4eb4f6763da22e04613fd556c229c765fe4a" [label=""];
}

