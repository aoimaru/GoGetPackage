[app/sources/455727156.Dockerfile]
digraph {
  "sha256:b3e16a56f4469d6477b9da0836931f2f09778f8244b990051a991bd109fc39f2" [label="docker-image://docker.io/library/node:8.8.1-alpine" shape="ellipse"];
  "sha256:16842eb0fc1d74c7f11dbc66a03e16c71a428b01673fe011b701669bb79b5fbe" [label="local://context" shape="ellipse"];
  "sha256:dbea527dc2fcc5f272c8ebafce3041b608da98c39e786a34d00acdbaedee2a7e" [label="copy{src=/, dest=/srv/www}" shape="note"];
  "sha256:ccdd6e535b0f7885b57fb64d7e3e470b565e1c9c5af72c71ebad93fdb084b057" [label="mkdir{path=/srv/www}" shape="note"];
  "sha256:955587fb5df477fbb17760a473edaca043b3abcf9842c4d24f70a3a5f8f047be" [label="/bin/sh -c npm install --unsafe-perm" shape="box"];
  "sha256:8cd4d9e0be55e298acc3cde32546e91fc03e4aea445042ca49dcca2a4c761eab" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:9da4017533ad0314c597a499bdeae1238f208767400c9f7697aee3452f46c1e9" [label="sha256:9da4017533ad0314c597a499bdeae1238f208767400c9f7697aee3452f46c1e9" shape="plaintext"];
  "sha256:b3e16a56f4469d6477b9da0836931f2f09778f8244b990051a991bd109fc39f2" -> "sha256:dbea527dc2fcc5f272c8ebafce3041b608da98c39e786a34d00acdbaedee2a7e" [label=""];
  "sha256:16842eb0fc1d74c7f11dbc66a03e16c71a428b01673fe011b701669bb79b5fbe" -> "sha256:dbea527dc2fcc5f272c8ebafce3041b608da98c39e786a34d00acdbaedee2a7e" [label=""];
  "sha256:dbea527dc2fcc5f272c8ebafce3041b608da98c39e786a34d00acdbaedee2a7e" -> "sha256:ccdd6e535b0f7885b57fb64d7e3e470b565e1c9c5af72c71ebad93fdb084b057" [label=""];
  "sha256:ccdd6e535b0f7885b57fb64d7e3e470b565e1c9c5af72c71ebad93fdb084b057" -> "sha256:955587fb5df477fbb17760a473edaca043b3abcf9842c4d24f70a3a5f8f047be" [label=""];
  "sha256:955587fb5df477fbb17760a473edaca043b3abcf9842c4d24f70a3a5f8f047be" -> "sha256:8cd4d9e0be55e298acc3cde32546e91fc03e4aea445042ca49dcca2a4c761eab" [label=""];
  "sha256:8cd4d9e0be55e298acc3cde32546e91fc03e4aea445042ca49dcca2a4c761eab" -> "sha256:9da4017533ad0314c597a499bdeae1238f208767400c9f7697aee3452f46c1e9" [label=""];
}

