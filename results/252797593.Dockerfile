[app/sources/252797593.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:9164d3f468c765962506e60d7e5af5e805734f44e441c6bf870656509b93128c" [label="/bin/sh -c apt update" shape="box"];
  "sha256:78785b6c84baef76f2b94499f6fc83fe0f76396d5a09a6184fef14f5d57dcd6c" [label="sha256:78785b6c84baef76f2b94499f6fc83fe0f76396d5a09a6184fef14f5d57dcd6c" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:9164d3f468c765962506e60d7e5af5e805734f44e441c6bf870656509b93128c" [label=""];
  "sha256:9164d3f468c765962506e60d7e5af5e805734f44e441c6bf870656509b93128c" -> "sha256:78785b6c84baef76f2b94499f6fc83fe0f76396d5a09a6184fef14f5d57dcd6c" [label=""];
}

