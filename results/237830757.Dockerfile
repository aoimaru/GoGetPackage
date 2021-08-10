[app/sources/237830757.Dockerfile]
digraph {
  "sha256:cdc15a138b1ded915338630db30bf408fbcdc94775dc16f89316ec182fdac3bc" [label="local://context" shape="ellipse"];
  "sha256:53bbff50d343442e33c55dff0d62663246e432c405f6512b4fdb88126fa85770" [label="docker-image://docker.io/rafaelsoares/archlinux:latest" shape="ellipse"];
  "sha256:ec1c7cf3246901c294f3bae4734f91e550c6caffbe0f32cf5568872707eb5cc7" [label="copy{src=/utilities.py, dest=/build/utilities.py}" shape="note"];
  "sha256:8e0b309e8d303c94c288d4c7879767cf174cb6c714145b87359a1b9809a996fe" [label="copy{src=/getpkgs.py, dest=/build/getpkgs.py}" shape="note"];
  "sha256:9355d9055188a1864c75987324de8cba1a2cdf62078969e8ab45cb878e2d8cbd" [label="copy{src=/main.sh, dest=/build/main.sh}" shape="note"];
  "sha256:cf9311b2b6a2f1e09fdaec0ce437ad4aecc73b4efb4c86c16af615cad1493631" [label="sha256:cf9311b2b6a2f1e09fdaec0ce437ad4aecc73b4efb4c86c16af615cad1493631" shape="plaintext"];
  "sha256:53bbff50d343442e33c55dff0d62663246e432c405f6512b4fdb88126fa85770" -> "sha256:ec1c7cf3246901c294f3bae4734f91e550c6caffbe0f32cf5568872707eb5cc7" [label=""];
  "sha256:cdc15a138b1ded915338630db30bf408fbcdc94775dc16f89316ec182fdac3bc" -> "sha256:ec1c7cf3246901c294f3bae4734f91e550c6caffbe0f32cf5568872707eb5cc7" [label=""];
  "sha256:ec1c7cf3246901c294f3bae4734f91e550c6caffbe0f32cf5568872707eb5cc7" -> "sha256:8e0b309e8d303c94c288d4c7879767cf174cb6c714145b87359a1b9809a996fe" [label=""];
  "sha256:cdc15a138b1ded915338630db30bf408fbcdc94775dc16f89316ec182fdac3bc" -> "sha256:8e0b309e8d303c94c288d4c7879767cf174cb6c714145b87359a1b9809a996fe" [label=""];
  "sha256:8e0b309e8d303c94c288d4c7879767cf174cb6c714145b87359a1b9809a996fe" -> "sha256:9355d9055188a1864c75987324de8cba1a2cdf62078969e8ab45cb878e2d8cbd" [label=""];
  "sha256:cdc15a138b1ded915338630db30bf408fbcdc94775dc16f89316ec182fdac3bc" -> "sha256:9355d9055188a1864c75987324de8cba1a2cdf62078969e8ab45cb878e2d8cbd" [label=""];
  "sha256:9355d9055188a1864c75987324de8cba1a2cdf62078969e8ab45cb878e2d8cbd" -> "sha256:cf9311b2b6a2f1e09fdaec0ce437ad4aecc73b4efb4c86c16af615cad1493631" [label=""];
}

