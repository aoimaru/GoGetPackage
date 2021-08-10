[app/sources/233419405.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:d9bbc429ff435dbf47878b51bc741b5555bf2445362a61cba5eac280bb6c1183" [label="/bin/sh -c apt-get update &&     apt-get install -y curl nano wget zip &&     apt-get clean" shape="box"];
  "sha256:300cb6f0691eeeb8f411b4234111e1335f404c614d4f10ccf28a40656da3d7aa" [label="sha256:300cb6f0691eeeb8f411b4234111e1335f404c614d4f10ccf28a40656da3d7aa" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:d9bbc429ff435dbf47878b51bc741b5555bf2445362a61cba5eac280bb6c1183" [label=""];
  "sha256:d9bbc429ff435dbf47878b51bc741b5555bf2445362a61cba5eac280bb6c1183" -> "sha256:300cb6f0691eeeb8f411b4234111e1335f404c614d4f10ccf28a40656da3d7aa" [label=""];
}

