[app/sources/287337760.Dockerfile]
digraph {
  "sha256:2cd324855ac49bb09fa2b249d919f71c6731d64c1aaee40cf1df539f80547cf5" [label="docker-image://docker.io/poktnetwork/pocket-node:latest" shape="ellipse"];
  "sha256:9e15fe76d716ddffdc1494f6c72e0949d33ee01845bed5e54cab9f33d436d923" [label="/bin/sh -c npm install -g lerna" shape="box"];
  "sha256:a45a745b76c997eb4c433a18a961df0c342d673bf12883d20cc7702d45eb36e8" [label="local://context" shape="ellipse"];
  "sha256:6b0f70322d165b82b3727d5b4b9fc9e1f09f0e0494849e43aeea8f6b39c3ae54" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:43d501de6487f7d9d0169414d8a3dbbbfb0fca80f93bfc4d5b8f851f00ffd39a" [label="/bin/sh -c bash install.sh" shape="box"];
  "sha256:c6c78c27777048601ebb642b6d1a688c58e09a7b6ca0c3006416d80b5e84431a" [label="sha256:c6c78c27777048601ebb642b6d1a688c58e09a7b6ca0c3006416d80b5e84431a" shape="plaintext"];
  "sha256:2cd324855ac49bb09fa2b249d919f71c6731d64c1aaee40cf1df539f80547cf5" -> "sha256:9e15fe76d716ddffdc1494f6c72e0949d33ee01845bed5e54cab9f33d436d923" [label=""];
  "sha256:9e15fe76d716ddffdc1494f6c72e0949d33ee01845bed5e54cab9f33d436d923" -> "sha256:6b0f70322d165b82b3727d5b4b9fc9e1f09f0e0494849e43aeea8f6b39c3ae54" [label=""];
  "sha256:a45a745b76c997eb4c433a18a961df0c342d673bf12883d20cc7702d45eb36e8" -> "sha256:6b0f70322d165b82b3727d5b4b9fc9e1f09f0e0494849e43aeea8f6b39c3ae54" [label=""];
  "sha256:6b0f70322d165b82b3727d5b4b9fc9e1f09f0e0494849e43aeea8f6b39c3ae54" -> "sha256:43d501de6487f7d9d0169414d8a3dbbbfb0fca80f93bfc4d5b8f851f00ffd39a" [label=""];
  "sha256:43d501de6487f7d9d0169414d8a3dbbbfb0fca80f93bfc4d5b8f851f00ffd39a" -> "sha256:c6c78c27777048601ebb642b6d1a688c58e09a7b6ca0c3006416d80b5e84431a" [label=""];
}

