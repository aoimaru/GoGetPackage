[app/sources/303976815.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label="mkdir{path=/root}" shape="note"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:ebe0abaeccaab6c9adf352cee84fc65f59ac031fa7ebdb497ecee98f335a378a" [label="mkdir{path=/usr/app}" shape="note"];
  "sha256:cb71f71e8e1f7b71c214345fb8650ac1285dc49656a509f752d232a8465b2cdf" [label="local://context" shape="ellipse"];
  "sha256:3d029f1412d4c09efe32c218e616d3e8da1a4f091ba9397a5bf665c9bd9e1915" [label="copy{src=/, dest=/usr/app/}" shape="note"];
  "sha256:bfd55330a4b00ead0fd92cdd4121cf4bfd9bbd603982673b7e7eaa7ac8fd128c" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o go-graphql-api-boilerplate ." shape="box"];
  "sha256:f20bbc3a9781b0c1c620daaa3b11e322a6a9c201628bbdd7dd735836da8ba06e" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o migrate ./migrations/" shape="box"];
  "sha256:0e49ebf178e8ba6b6d14b21e5dd5190b2204834e7d657aa13838cb3d12108693" [label="copy{src=/usr/app/go-graphql-api-boilerplate, dest=/root/}" shape="note"];
  "sha256:39b85e28fc71444b16fb83c811342c897155a81ec574467a79a78b8bc864f247" [label="copy{src=/usr/app/migrate, dest=/root/}" shape="note"];
  "sha256:efc3986a3982f488701b7f159a25a38de6e7147fc48779eb7190a971f00431d3" [label="sha256:efc3986a3982f488701b7f159a25a38de6e7147fc48779eb7190a971f00431d3" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label=""];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:ebe0abaeccaab6c9adf352cee84fc65f59ac031fa7ebdb497ecee98f335a378a" [label=""];
  "sha256:ebe0abaeccaab6c9adf352cee84fc65f59ac031fa7ebdb497ecee98f335a378a" -> "sha256:3d029f1412d4c09efe32c218e616d3e8da1a4f091ba9397a5bf665c9bd9e1915" [label=""];
  "sha256:cb71f71e8e1f7b71c214345fb8650ac1285dc49656a509f752d232a8465b2cdf" -> "sha256:3d029f1412d4c09efe32c218e616d3e8da1a4f091ba9397a5bf665c9bd9e1915" [label=""];
  "sha256:3d029f1412d4c09efe32c218e616d3e8da1a4f091ba9397a5bf665c9bd9e1915" -> "sha256:bfd55330a4b00ead0fd92cdd4121cf4bfd9bbd603982673b7e7eaa7ac8fd128c" [label=""];
  "sha256:bfd55330a4b00ead0fd92cdd4121cf4bfd9bbd603982673b7e7eaa7ac8fd128c" -> "sha256:f20bbc3a9781b0c1c620daaa3b11e322a6a9c201628bbdd7dd735836da8ba06e" [label=""];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" -> "sha256:0e49ebf178e8ba6b6d14b21e5dd5190b2204834e7d657aa13838cb3d12108693" [label=""];
  "sha256:f20bbc3a9781b0c1c620daaa3b11e322a6a9c201628bbdd7dd735836da8ba06e" -> "sha256:0e49ebf178e8ba6b6d14b21e5dd5190b2204834e7d657aa13838cb3d12108693" [label=""];
  "sha256:0e49ebf178e8ba6b6d14b21e5dd5190b2204834e7d657aa13838cb3d12108693" -> "sha256:39b85e28fc71444b16fb83c811342c897155a81ec574467a79a78b8bc864f247" [label=""];
  "sha256:f20bbc3a9781b0c1c620daaa3b11e322a6a9c201628bbdd7dd735836da8ba06e" -> "sha256:39b85e28fc71444b16fb83c811342c897155a81ec574467a79a78b8bc864f247" [label=""];
  "sha256:39b85e28fc71444b16fb83c811342c897155a81ec574467a79a78b8bc864f247" -> "sha256:efc3986a3982f488701b7f159a25a38de6e7147fc48779eb7190a971f00431d3" [label=""];
}

