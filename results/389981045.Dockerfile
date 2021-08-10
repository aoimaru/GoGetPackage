[app/sources/389981045.Dockerfile]
digraph {
  "sha256:7912b197187b03b65bd3365adb49e5891af3a2ab2b85ec638f8040c56fa287f8" [label="docker-image://docker.io/library/fedora:30" shape="ellipse"];
  "sha256:943c97bb18725ab7a623acdb729b75d5141faf867cf635da16927401dc2fab8e" [label="/bin/sh -c dnf update -y     && dnf install -y 'dnf-command(builddep)'     && dnf builddep -y glib-networking     && dnf install -y gsettings-desktop-schemas                       gcc                       libasan                       openssl-devel     && dnf clean all" shape="box"];
  "sha256:1d65c4b1b571dbba87a52396af846ada857ba7ae8e5541e90d8983105cd881c6" [label="/bin/sh -c useradd -u $HOST_USER_ID -ms /bin/bash user" shape="box"];
  "sha256:728f7972fcf04302c30a917fd8ac33b9ee2601d0dc3f9ce052f30fd16ac3b249" [label="mkdir{path=/home/user}" shape="note"];
  "sha256:dc0038bb3a4ec87f24b982ca7095f5f629fc612ab5cd2e0d1561beefdb46416b" [label="sha256:dc0038bb3a4ec87f24b982ca7095f5f629fc612ab5cd2e0d1561beefdb46416b" shape="plaintext"];
  "sha256:7912b197187b03b65bd3365adb49e5891af3a2ab2b85ec638f8040c56fa287f8" -> "sha256:943c97bb18725ab7a623acdb729b75d5141faf867cf635da16927401dc2fab8e" [label=""];
  "sha256:943c97bb18725ab7a623acdb729b75d5141faf867cf635da16927401dc2fab8e" -> "sha256:1d65c4b1b571dbba87a52396af846ada857ba7ae8e5541e90d8983105cd881c6" [label=""];
  "sha256:1d65c4b1b571dbba87a52396af846ada857ba7ae8e5541e90d8983105cd881c6" -> "sha256:728f7972fcf04302c30a917fd8ac33b9ee2601d0dc3f9ce052f30fd16ac3b249" [label=""];
  "sha256:728f7972fcf04302c30a917fd8ac33b9ee2601d0dc3f9ce052f30fd16ac3b249" -> "sha256:dc0038bb3a4ec87f24b982ca7095f5f629fc612ab5cd2e0d1561beefdb46416b" [label=""];
}

