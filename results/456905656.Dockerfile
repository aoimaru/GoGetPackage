[app/sources/456905656.Dockerfile]
digraph {
  "sha256:3ba9773650c97f34efb884195214763e5ee80b7bbb32a8d5efbcc78614fbbceb" [label="docker-image://docker.io/microsoft/windowsservercore:latest" shape="ellipse"];
  "sha256:0e7ff609c5083a9fe8141f60e2f95555c6c0d55054c0926440c01112337795a7" [label="local://context" shape="ellipse"];
  "sha256:b5f83e9fb2f72b55e167fbe30b78fcb9bef1e466134bafa180379d838d065227" [label="copy{src=/bin/Debug, dest=/root/CRA.Worker/bin/Debug}" shape="note"];
  "sha256:ff6bba99d90db8c050f26666c8c4692b0b1567582e8ab416438b0a37bc741556" [label="sha256:ff6bba99d90db8c050f26666c8c4692b0b1567582e8ab416438b0a37bc741556" shape="plaintext"];
  "sha256:3ba9773650c97f34efb884195214763e5ee80b7bbb32a8d5efbcc78614fbbceb" -> "sha256:b5f83e9fb2f72b55e167fbe30b78fcb9bef1e466134bafa180379d838d065227" [label=""];
  "sha256:0e7ff609c5083a9fe8141f60e2f95555c6c0d55054c0926440c01112337795a7" -> "sha256:b5f83e9fb2f72b55e167fbe30b78fcb9bef1e466134bafa180379d838d065227" [label=""];
  "sha256:b5f83e9fb2f72b55e167fbe30b78fcb9bef1e466134bafa180379d838d065227" -> "sha256:ff6bba99d90db8c050f26666c8c4692b0b1567582e8ab416438b0a37bc741556" [label=""];
}

