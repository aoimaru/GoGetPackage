[app/sources/252777439.Dockerfile]
digraph {
  "sha256:715860a346ce5db513e393cf3dc6b3b75f308dc1ce6214b792e7438f85964ce5" [label="docker-image://docker.io/library/node:4.0-onbuild" shape="ellipse"];
  "sha256:056967f945ee2c21bda086fc5d9dd1df000b6f4119f8cdba65fbdc8ae1d069dd" [label="/bin/sh -c useradd --create-home shout" shape="box"];
  "sha256:02c9382e53cab7188df3eab87a6729d31797cfdaa0298a27227a7639a4b748d9" [label="sha256:02c9382e53cab7188df3eab87a6729d31797cfdaa0298a27227a7639a4b748d9" shape="plaintext"];
  "sha256:715860a346ce5db513e393cf3dc6b3b75f308dc1ce6214b792e7438f85964ce5" -> "sha256:056967f945ee2c21bda086fc5d9dd1df000b6f4119f8cdba65fbdc8ae1d069dd" [label=""];
  "sha256:056967f945ee2c21bda086fc5d9dd1df000b6f4119f8cdba65fbdc8ae1d069dd" -> "sha256:02c9382e53cab7188df3eab87a6729d31797cfdaa0298a27227a7639a4b748d9" [label=""];
}

