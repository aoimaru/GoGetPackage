[app/sources/442332248.Dockerfile]
digraph {
  "sha256:46b25337b6497e2a04bb43db7e2ddfd626590fa67e24801204556a1c358dfb18" [label="docker-image://docker.io/library/base:latest" shape="ellipse"];
  "sha256:53f95c5143e204fcae36fc1b5c875a28c91c2175131152e331dc57e4ee7a8963" [label="/bin/sh -c /bin/echo \"The cheese shop is open\" > /tmp/cheese" shape="box"];
  "sha256:c887ea418fdb578c1b513c19a5df85964ff18ad62903d64c920e09ea4e937cf2" [label="sha256:c887ea418fdb578c1b513c19a5df85964ff18ad62903d64c920e09ea4e937cf2" shape="plaintext"];
  "sha256:46b25337b6497e2a04bb43db7e2ddfd626590fa67e24801204556a1c358dfb18" -> "sha256:53f95c5143e204fcae36fc1b5c875a28c91c2175131152e331dc57e4ee7a8963" [label=""];
  "sha256:53f95c5143e204fcae36fc1b5c875a28c91c2175131152e331dc57e4ee7a8963" -> "sha256:c887ea418fdb578c1b513c19a5df85964ff18ad62903d64c920e09ea4e937cf2" [label=""];
}

