[app/sources/259775290.Dockerfile]
digraph {
  "sha256:9d808acee13b22e0ea078fde651741a32786f69426cbd591d17fabb65da851de" [label="docker-image://docker.io/library/node:8.6.0-alpine" shape="ellipse"];
  "sha256:8cfaf4f67327f584e76ac2397505b8e12c51864349136ace7d015924ada66788" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:721567ef64b9ae901968ae50e01e07b2e21f80c3f084c854f357e8aca263963c" [label="/bin/sh -c npm install nodemon -g" shape="box"];
  "sha256:ed70cd1ff7741ea89f4602a229564196d13ca11a4bb6aa54c384429b21b6272e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2d750c55b94e824ab113c5d794c6ae842beecebbbeac74513d514ff8be38ad05" [label="local://context" shape="ellipse"];
  "sha256:daa2864c7a163300811a7fab16c1eb062da9a03f10e88902f3e33bb225fbbe72" [label="copy{src=/app/package.json, dest=/usr/src/app/package.json}" shape="note"];
  "sha256:d8eb7dccafbe6987ba8049da3ba5392e2c252c9dc8a3591015cea0615a9ba7a0" [label="/bin/sh -c npm install -g" shape="box"];
  "sha256:e1d7f799725e49a21206e40e8d63e6a99d46f7bcf60a0f298c5b587b6f52b123" [label="sha256:e1d7f799725e49a21206e40e8d63e6a99d46f7bcf60a0f298c5b587b6f52b123" shape="plaintext"];
  "sha256:9d808acee13b22e0ea078fde651741a32786f69426cbd591d17fabb65da851de" -> "sha256:8cfaf4f67327f584e76ac2397505b8e12c51864349136ace7d015924ada66788" [label=""];
  "sha256:8cfaf4f67327f584e76ac2397505b8e12c51864349136ace7d015924ada66788" -> "sha256:721567ef64b9ae901968ae50e01e07b2e21f80c3f084c854f357e8aca263963c" [label=""];
  "sha256:721567ef64b9ae901968ae50e01e07b2e21f80c3f084c854f357e8aca263963c" -> "sha256:ed70cd1ff7741ea89f4602a229564196d13ca11a4bb6aa54c384429b21b6272e" [label=""];
  "sha256:ed70cd1ff7741ea89f4602a229564196d13ca11a4bb6aa54c384429b21b6272e" -> "sha256:daa2864c7a163300811a7fab16c1eb062da9a03f10e88902f3e33bb225fbbe72" [label=""];
  "sha256:2d750c55b94e824ab113c5d794c6ae842beecebbbeac74513d514ff8be38ad05" -> "sha256:daa2864c7a163300811a7fab16c1eb062da9a03f10e88902f3e33bb225fbbe72" [label=""];
  "sha256:daa2864c7a163300811a7fab16c1eb062da9a03f10e88902f3e33bb225fbbe72" -> "sha256:d8eb7dccafbe6987ba8049da3ba5392e2c252c9dc8a3591015cea0615a9ba7a0" [label=""];
  "sha256:d8eb7dccafbe6987ba8049da3ba5392e2c252c9dc8a3591015cea0615a9ba7a0" -> "sha256:e1d7f799725e49a21206e40e8d63e6a99d46f7bcf60a0f298c5b587b6f52b123" [label=""];
}

