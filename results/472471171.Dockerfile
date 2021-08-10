[app/sources/472471171.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:44a67847f8c65bc12967ed13355cdf07009752704701524f487a231f33274c55" [label="/bin/sh -c apk add --no-cache   bash   ca-certificates   curl   jq" shape="box"];
  "sha256:ecb281a90f4a6579b4b1e3d73eebc3172fac65ddf4da73a8633ab57731349af8" [label="local://context" shape="ellipse"];
  "sha256:bfa1aab23e44f04b7718fd345de1c3cba6e10d9bc807292e1930b03770dfafef" [label="copy{src=/upload-to-release, dest=/usr/bin/upload-to-release}" shape="note"];
  "sha256:bd9dde56fff9e2ed673e8314cb4c1a667da3cff686719a095a168911a0899433" [label="sha256:bd9dde56fff9e2ed673e8314cb4c1a667da3cff686719a095a168911a0899433" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:44a67847f8c65bc12967ed13355cdf07009752704701524f487a231f33274c55" [label=""];
  "sha256:44a67847f8c65bc12967ed13355cdf07009752704701524f487a231f33274c55" -> "sha256:bfa1aab23e44f04b7718fd345de1c3cba6e10d9bc807292e1930b03770dfafef" [label=""];
  "sha256:ecb281a90f4a6579b4b1e3d73eebc3172fac65ddf4da73a8633ab57731349af8" -> "sha256:bfa1aab23e44f04b7718fd345de1c3cba6e10d9bc807292e1930b03770dfafef" [label=""];
  "sha256:bfa1aab23e44f04b7718fd345de1c3cba6e10d9bc807292e1930b03770dfafef" -> "sha256:bd9dde56fff9e2ed673e8314cb4c1a667da3cff686719a095a168911a0899433" [label=""];
}

