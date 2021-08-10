[app/sources/234036448.Dockerfile]
digraph {
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" [label="docker-image://docker.io/library/fedora:26" shape="ellipse"];
  "sha256:5999908f470ae8db4c89adc6cba0c7396432f7696a4b86a4771dd6b9a6626e90" [label="/bin/sh -c dnf -y update \t&& dnf install -y python sqlite-devel rpm-build rpmdevtools" shape="box"];
  "sha256:21e1a2b88399acb2510f384081e4f9e145481dd73b922cb3c882eb660ef6cdaa" [label="sha256:21e1a2b88399acb2510f384081e4f9e145481dd73b922cb3c882eb660ef6cdaa" shape="plaintext"];
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" -> "sha256:5999908f470ae8db4c89adc6cba0c7396432f7696a4b86a4771dd6b9a6626e90" [label=""];
  "sha256:5999908f470ae8db4c89adc6cba0c7396432f7696a4b86a4771dd6b9a6626e90" -> "sha256:21e1a2b88399acb2510f384081e4f9e145481dd73b922cb3c882eb660ef6cdaa" [label=""];
}

