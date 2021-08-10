[app/sources/389664768.Dockerfile]
digraph {
  "sha256:bcbd3bc5b905203617de3bb5e255b9fe1e6eec40fe3b90979beea0435c1693c5" [label="docker-image://docker.sunet.se/jenkins-job:latest" shape="ellipse"];
  "sha256:232da1dbef862e51c53632df61558c3218ff42ab47651ca0c00fff77519eccab" [label="/bin/sh -c apt-get install -y libssl-dev libseccomp-dev" shape="box"];
  "sha256:8cb80fc9fe3d973e4320f1f1f055c77db84cb353f7300b0141ddca418180a7a2" [label="sha256:8cb80fc9fe3d973e4320f1f1f055c77db84cb353f7300b0141ddca418180a7a2" shape="plaintext"];
  "sha256:bcbd3bc5b905203617de3bb5e255b9fe1e6eec40fe3b90979beea0435c1693c5" -> "sha256:232da1dbef862e51c53632df61558c3218ff42ab47651ca0c00fff77519eccab" [label=""];
  "sha256:232da1dbef862e51c53632df61558c3218ff42ab47651ca0c00fff77519eccab" -> "sha256:8cb80fc9fe3d973e4320f1f1f055c77db84cb353f7300b0141ddca418180a7a2" [label=""];
}

