[app/sources/241435830.Dockerfile]
digraph {
  "sha256:95c27888ae73dee0f5efbc09397170aa32e43059c77d8df2b407df418d40fb47" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:8a92861d9dd51bfbb221d97a8a012a068eb3fee909a11f44fb6e9c27b49ff871" [label="copy{src=/, dest=/opt/webogram}" shape="note"];
  "sha256:76e2d71c0420e2118cb21912b12c1daccc26f7c01548fee48c0a7303bcfaab8f" [label="mkdir{path=/opt/webogram}" shape="note"];
  "sha256:7854f1d55b9242e8428015990a2b4a00161574b4906d1647ecdd168fb27bbf05" [label="/bin/sh -c npm install -g gulp && npm install" shape="box"];
  "sha256:e581a697f03d4035a9670dcf5ae0749ea18bd701b1b1a5cdda76768a50820a37" [label="sha256:e581a697f03d4035a9670dcf5ae0749ea18bd701b1b1a5cdda76768a50820a37" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:8a92861d9dd51bfbb221d97a8a012a068eb3fee909a11f44fb6e9c27b49ff871" [label=""];
  "sha256:95c27888ae73dee0f5efbc09397170aa32e43059c77d8df2b407df418d40fb47" -> "sha256:8a92861d9dd51bfbb221d97a8a012a068eb3fee909a11f44fb6e9c27b49ff871" [label=""];
  "sha256:8a92861d9dd51bfbb221d97a8a012a068eb3fee909a11f44fb6e9c27b49ff871" -> "sha256:76e2d71c0420e2118cb21912b12c1daccc26f7c01548fee48c0a7303bcfaab8f" [label=""];
  "sha256:76e2d71c0420e2118cb21912b12c1daccc26f7c01548fee48c0a7303bcfaab8f" -> "sha256:7854f1d55b9242e8428015990a2b4a00161574b4906d1647ecdd168fb27bbf05" [label=""];
  "sha256:7854f1d55b9242e8428015990a2b4a00161574b4906d1647ecdd168fb27bbf05" -> "sha256:e581a697f03d4035a9670dcf5ae0749ea18bd701b1b1a5cdda76768a50820a37" [label=""];
}

