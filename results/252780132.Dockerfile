[app/sources/252780132.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:4ff3b92c81c0f742b88195455ce282eb314bc12edd5c23f5f5cd87966acbffc7" [label="apk add -U git ca-certificates go make" shape="box"];
  "sha256:b1abb7c8bfc33e39d81246f41eb7f65e26cdf0ad08242d7803684db46c334c36" [label="local://context" shape="ellipse"];
  "sha256:1c766fd76e9129d023c0c14c04c3dd025b75f214abd8f27826f1f3ccd217dab2" [label="copy{src=/, dest=/go/src/ngrok}" shape="note"];
  "sha256:20854f4dc316c212952d55f295dbba3d5114e364e099c2982b84bffa27420b44" [label="mkdir{path=/go/src/ngrok}" shape="note"];
  "sha256:54e22116ec119935bade75cac3cc227422ebd157373e419b4eee0f6e6254aaf5" [label="make release-server" shape="box"];
  "sha256:a56103e47c4f7b7736b4b53b4d257d40551a07fd68c90787a8b31ef50342d82a" [label="sha256:a56103e47c4f7b7736b4b53b4d257d40551a07fd68c90787a8b31ef50342d82a" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:4ff3b92c81c0f742b88195455ce282eb314bc12edd5c23f5f5cd87966acbffc7" [label=""];
  "sha256:4ff3b92c81c0f742b88195455ce282eb314bc12edd5c23f5f5cd87966acbffc7" -> "sha256:1c766fd76e9129d023c0c14c04c3dd025b75f214abd8f27826f1f3ccd217dab2" [label=""];
  "sha256:b1abb7c8bfc33e39d81246f41eb7f65e26cdf0ad08242d7803684db46c334c36" -> "sha256:1c766fd76e9129d023c0c14c04c3dd025b75f214abd8f27826f1f3ccd217dab2" [label=""];
  "sha256:1c766fd76e9129d023c0c14c04c3dd025b75f214abd8f27826f1f3ccd217dab2" -> "sha256:20854f4dc316c212952d55f295dbba3d5114e364e099c2982b84bffa27420b44" [label=""];
  "sha256:20854f4dc316c212952d55f295dbba3d5114e364e099c2982b84bffa27420b44" -> "sha256:54e22116ec119935bade75cac3cc227422ebd157373e419b4eee0f6e6254aaf5" [label=""];
  "sha256:54e22116ec119935bade75cac3cc227422ebd157373e419b4eee0f6e6254aaf5" -> "sha256:a56103e47c4f7b7736b4b53b4d257d40551a07fd68c90787a8b31ef50342d82a" [label=""];
}

