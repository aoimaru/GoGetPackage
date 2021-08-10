[app/sources/345362291.Dockerfile]
digraph {
  "sha256:7d552428ab57c9ae7d497751d296dbf5d3929201c9b95b56be9100843a93eccc" [label="docker-image://docker.io/balenalib/aarch64-debian:jessie-run" shape="ellipse"];
  "sha256:77786db7156fbbf491dcd95a166a36ed68c3d8a92a48cabfbe861e0db4ba07a4" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:33ebd717f7dfa008375bee66f17e075237a3d7de6c111002a326250da724e1ea" [label="sha256:33ebd717f7dfa008375bee66f17e075237a3d7de6c111002a326250da724e1ea" shape="plaintext"];
  "sha256:7d552428ab57c9ae7d497751d296dbf5d3929201c9b95b56be9100843a93eccc" -> "sha256:77786db7156fbbf491dcd95a166a36ed68c3d8a92a48cabfbe861e0db4ba07a4" [label=""];
  "sha256:77786db7156fbbf491dcd95a166a36ed68c3d8a92a48cabfbe861e0db4ba07a4" -> "sha256:33ebd717f7dfa008375bee66f17e075237a3d7de6c111002a326250da724e1ea" [label=""];
}

