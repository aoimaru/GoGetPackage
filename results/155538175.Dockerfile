[app/sources/155538175.Dockerfile]
digraph {
  "sha256:9991373957756e9e476d1f6848f846a0f2901acc1ef4c2471d7b9a8f712a8ee0" [label="docker-image://docker.io/okfn/postgres:0.4" shape="ellipse"];
  "sha256:9a16b94f14cbc877a3c5ba86efd2d653d8e56dff46e94b130425f9b82857bfd3" [label="/bin/sh -c apt-get -y install s3cmd bzip2" shape="box"];
  "sha256:cc1effc046e01311a5b57eea0a984a8d36bb205c756d3bb9839db13848029a1b" [label="local://context" shape="ellipse"];
  "sha256:2cc0d77b4d812ede3eb15e449ab0261800f6c575b4b99c280b6664c8d3638db1" [label="copy{src=/dumper.sh, dest=/dumper.sh}" shape="note"];
  "sha256:1710e35735387fafb7efe0cec3573ac2af51c98008d59e101ab06b7ec913a07f" [label="copy{src=/s3cfg, dest=/.s3cfg}" shape="note"];
  "sha256:fc2ae43bd58fd5e1b62456683a7c1b02e3faf5f66dff2a8f3b34920aa453d387" [label="sha256:fc2ae43bd58fd5e1b62456683a7c1b02e3faf5f66dff2a8f3b34920aa453d387" shape="plaintext"];
  "sha256:9991373957756e9e476d1f6848f846a0f2901acc1ef4c2471d7b9a8f712a8ee0" -> "sha256:9a16b94f14cbc877a3c5ba86efd2d653d8e56dff46e94b130425f9b82857bfd3" [label=""];
  "sha256:9a16b94f14cbc877a3c5ba86efd2d653d8e56dff46e94b130425f9b82857bfd3" -> "sha256:2cc0d77b4d812ede3eb15e449ab0261800f6c575b4b99c280b6664c8d3638db1" [label=""];
  "sha256:cc1effc046e01311a5b57eea0a984a8d36bb205c756d3bb9839db13848029a1b" -> "sha256:2cc0d77b4d812ede3eb15e449ab0261800f6c575b4b99c280b6664c8d3638db1" [label=""];
  "sha256:2cc0d77b4d812ede3eb15e449ab0261800f6c575b4b99c280b6664c8d3638db1" -> "sha256:1710e35735387fafb7efe0cec3573ac2af51c98008d59e101ab06b7ec913a07f" [label=""];
  "sha256:cc1effc046e01311a5b57eea0a984a8d36bb205c756d3bb9839db13848029a1b" -> "sha256:1710e35735387fafb7efe0cec3573ac2af51c98008d59e101ab06b7ec913a07f" [label=""];
  "sha256:1710e35735387fafb7efe0cec3573ac2af51c98008d59e101ab06b7ec913a07f" -> "sha256:fc2ae43bd58fd5e1b62456683a7c1b02e3faf5f66dff2a8f3b34920aa453d387" [label=""];
}

