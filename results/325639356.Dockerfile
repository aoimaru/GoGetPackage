[app/sources/325639356.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:56ac03b75894615c4bcea11867d0e2c790bbecf5e5c9b033ab17534174893570" [label="mkdir{path=/app}" shape="note"];
  "sha256:9ea4af5f707ebe5f275acc4aa578e8cbdcdc4991d027d9be7133cf649fcd4b39" [label="local://context" shape="ellipse"];
  "sha256:9142b0885ffa893c668ffe2f4661f6116bb852651eb8ea7a3f78514fb780d520" [label="copy{src=/package*, dest=/app/}" shape="note"];
  "sha256:64325025579468fc3344de211b8fc1d3497d0d0fec388df7b76e3db4eac3740a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:6309382f65d4b93179b124fafc1bb249b602b219a78f4184555c3a77c099b083" [label="sha256:6309382f65d4b93179b124fafc1bb249b602b219a78f4184555c3a77c099b083" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:56ac03b75894615c4bcea11867d0e2c790bbecf5e5c9b033ab17534174893570" [label=""];
  "sha256:56ac03b75894615c4bcea11867d0e2c790bbecf5e5c9b033ab17534174893570" -> "sha256:9142b0885ffa893c668ffe2f4661f6116bb852651eb8ea7a3f78514fb780d520" [label=""];
  "sha256:9ea4af5f707ebe5f275acc4aa578e8cbdcdc4991d027d9be7133cf649fcd4b39" -> "sha256:9142b0885ffa893c668ffe2f4661f6116bb852651eb8ea7a3f78514fb780d520" [label=""];
  "sha256:9142b0885ffa893c668ffe2f4661f6116bb852651eb8ea7a3f78514fb780d520" -> "sha256:64325025579468fc3344de211b8fc1d3497d0d0fec388df7b76e3db4eac3740a" [label=""];
  "sha256:64325025579468fc3344de211b8fc1d3497d0d0fec388df7b76e3db4eac3740a" -> "sha256:6309382f65d4b93179b124fafc1bb249b602b219a78f4184555c3a77c099b083" [label=""];
}

