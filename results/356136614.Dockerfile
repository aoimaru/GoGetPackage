[app/sources/356136614.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:6bf64459bced1850fabe15073fbf8bebff169dd76c47e76cb5bf548ce409ee6c" [label="local://context" shape="ellipse"];
  "sha256:164a3c347bb4d97e0f5e2b3798034f07a5dcc1e775d3d67064cececf4b2cbd4e" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:03790ebffbc176132bb5247de0332adaef237f4e5f6b18d475a5b49a0c231ac4" [label="/bin/sh -c npm install --ignore-scripts" shape="box"];
  "sha256:12a6fcae30ea98b4480e272b292eac99679515506d9266d1147ad5fbe8c4e5d4" [label="sha256:12a6fcae30ea98b4480e272b292eac99679515506d9266d1147ad5fbe8c4e5d4" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:164a3c347bb4d97e0f5e2b3798034f07a5dcc1e775d3d67064cececf4b2cbd4e" [label=""];
  "sha256:6bf64459bced1850fabe15073fbf8bebff169dd76c47e76cb5bf548ce409ee6c" -> "sha256:164a3c347bb4d97e0f5e2b3798034f07a5dcc1e775d3d67064cececf4b2cbd4e" [label=""];
  "sha256:164a3c347bb4d97e0f5e2b3798034f07a5dcc1e775d3d67064cececf4b2cbd4e" -> "sha256:03790ebffbc176132bb5247de0332adaef237f4e5f6b18d475a5b49a0c231ac4" [label=""];
  "sha256:03790ebffbc176132bb5247de0332adaef237f4e5f6b18d475a5b49a0c231ac4" -> "sha256:12a6fcae30ea98b4480e272b292eac99679515506d9266d1147ad5fbe8c4e5d4" [label=""];
}

