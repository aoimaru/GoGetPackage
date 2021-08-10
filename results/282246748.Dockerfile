[app/sources/282246748.Dockerfile]
digraph {
  "sha256:94f476c0c94fc2626e30ac0d5f6be16a5890faa28c2ad9c697373abeff6d62a8" [label="docker-image://docker.io/bde2020/hadoop-base:1.0.0" shape="ellipse"];
  "sha256:a116b6ef3ff082b3869eb387741e211746f26b020a2d97f40b3546191607838d" [label="/bin/sh -c mkdir -p /hadoop/yarn/timeline" shape="box"];
  "sha256:d6b25a098a2ebe05efbf9fc229ddee93b487537f44079024c790ac082a38f226" [label="local://context" shape="ellipse"];
  "sha256:0412ff9ab4facfc0f9621d98009e391937143e6cf276dd96739027b89b5d9779" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:8a03a1952f4be1918dae62a3862619ea7fde1b9ae8a1c02622ac476d927b4154" [label="/bin/sh -c chmod a+x /run.sh" shape="box"];
  "sha256:0fda6af8409fe9de73b43817bcb123e56241c51b9bdcc4f59f74b1da1589ca14" [label="sha256:0fda6af8409fe9de73b43817bcb123e56241c51b9bdcc4f59f74b1da1589ca14" shape="plaintext"];
  "sha256:94f476c0c94fc2626e30ac0d5f6be16a5890faa28c2ad9c697373abeff6d62a8" -> "sha256:a116b6ef3ff082b3869eb387741e211746f26b020a2d97f40b3546191607838d" [label=""];
  "sha256:a116b6ef3ff082b3869eb387741e211746f26b020a2d97f40b3546191607838d" -> "sha256:0412ff9ab4facfc0f9621d98009e391937143e6cf276dd96739027b89b5d9779" [label=""];
  "sha256:d6b25a098a2ebe05efbf9fc229ddee93b487537f44079024c790ac082a38f226" -> "sha256:0412ff9ab4facfc0f9621d98009e391937143e6cf276dd96739027b89b5d9779" [label=""];
  "sha256:0412ff9ab4facfc0f9621d98009e391937143e6cf276dd96739027b89b5d9779" -> "sha256:8a03a1952f4be1918dae62a3862619ea7fde1b9ae8a1c02622ac476d927b4154" [label=""];
  "sha256:8a03a1952f4be1918dae62a3862619ea7fde1b9ae8a1c02622ac476d927b4154" -> "sha256:0fda6af8409fe9de73b43817bcb123e56241c51b9bdcc4f59f74b1da1589ca14" [label=""];
}

