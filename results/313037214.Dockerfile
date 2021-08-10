[app/sources/313037214.Dockerfile]
digraph {
  "sha256:19075c15dfcece7c24bcdaa0d83f9be5b8a6a74b710f4175b5ec92d1e034bbe0" [label="docker-image://docker.io/jupyter/base-notebook:latest" shape="ellipse"];
  "sha256:6bf317b147055fd13d8f779d3474fda6b82029a088da3d83bef84648cb1f2288" [label="/bin/sh -c apt-get update && apt-get install -yq --no-install-recommends     build-essential     emacs     git     inkscape     jed     libsm6     libxext-dev     libxrender1     lmodern     netcat     pandoc     python-dev     texlive-fonts-extra     texlive-fonts-recommended     texlive-generic-recommended     texlive-latex-base     texlive-latex-extra     texlive-xetex     unzip     nano     && apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:565f5267af50c25fe3b4831425a0a9bb2b564f90090e9be5208850b83f530559" [label="/bin/sh -c pip install egtplot" shape="box"];
  "sha256:4a399b2a07a341ceba9b4a0819ce26ef4ae4703d5370d4a953069acdf68a5562" [label="/bin/sh -c git clone https://github.com/mirzaevinom/egtplot.git" shape="box"];
  "sha256:3ab3188bbccc6f13a517d80f684c2cad8617ebde0bbee93f25a206e77bb5c819" [label="/bin/sh -c python -c \"import imageio.plugins.ffmpeg as ff; ff.download()\"" shape="box"];
  "sha256:ad4df1db510ae56fc81b39fda5d01d154efdf9152cb96709f9cb06d2071bfba0" [label="sha256:ad4df1db510ae56fc81b39fda5d01d154efdf9152cb96709f9cb06d2071bfba0" shape="plaintext"];
  "sha256:19075c15dfcece7c24bcdaa0d83f9be5b8a6a74b710f4175b5ec92d1e034bbe0" -> "sha256:6bf317b147055fd13d8f779d3474fda6b82029a088da3d83bef84648cb1f2288" [label=""];
  "sha256:6bf317b147055fd13d8f779d3474fda6b82029a088da3d83bef84648cb1f2288" -> "sha256:565f5267af50c25fe3b4831425a0a9bb2b564f90090e9be5208850b83f530559" [label=""];
  "sha256:565f5267af50c25fe3b4831425a0a9bb2b564f90090e9be5208850b83f530559" -> "sha256:4a399b2a07a341ceba9b4a0819ce26ef4ae4703d5370d4a953069acdf68a5562" [label=""];
  "sha256:4a399b2a07a341ceba9b4a0819ce26ef4ae4703d5370d4a953069acdf68a5562" -> "sha256:3ab3188bbccc6f13a517d80f684c2cad8617ebde0bbee93f25a206e77bb5c819" [label=""];
  "sha256:3ab3188bbccc6f13a517d80f684c2cad8617ebde0bbee93f25a206e77bb5c819" -> "sha256:ad4df1db510ae56fc81b39fda5d01d154efdf9152cb96709f9cb06d2071bfba0" [label=""];
}

