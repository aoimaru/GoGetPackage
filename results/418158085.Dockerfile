[app/sources/418158085.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:1b6a74c4cf63e821bcc1f85d7b35830b4a519c03ed149e159391380e4114bf05" [label="/bin/sh -c set -eux;   curl -L -s https://github.com/golang/dep/releases/download/v0.5.0/dep-linux-amd64 -o \"$GOPATH/bin/dep\";   echo \"287b08291e14f1fae8ba44374b26a2b12eb941af3497ed0ca649253e21ba2f83 $GOPATH/bin/dep\" | sha256sum -c -;   chmod +x \"${GOPATH}/bin/dep\";" shape="box"];
  "sha256:b86704459f361b36fa32cc4c1b94659fbb731f23983e9338b31c9799c222afe1" [label="local://context" shape="ellipse"];
  "sha256:b8ebd31ce00d35d14078a77487785e496ab2507ca5b5f0170743805a10640933" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:b4981053b051ea5a92ea6ceab0a7fceb105408190062253545eb7c6e9094b6b0" [label="sha256:b4981053b051ea5a92ea6ceab0a7fceb105408190062253545eb7c6e9094b6b0" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:1b6a74c4cf63e821bcc1f85d7b35830b4a519c03ed149e159391380e4114bf05" [label=""];
  "sha256:1b6a74c4cf63e821bcc1f85d7b35830b4a519c03ed149e159391380e4114bf05" -> "sha256:b8ebd31ce00d35d14078a77487785e496ab2507ca5b5f0170743805a10640933" [label=""];
  "sha256:b86704459f361b36fa32cc4c1b94659fbb731f23983e9338b31c9799c222afe1" -> "sha256:b8ebd31ce00d35d14078a77487785e496ab2507ca5b5f0170743805a10640933" [label=""];
  "sha256:b8ebd31ce00d35d14078a77487785e496ab2507ca5b5f0170743805a10640933" -> "sha256:b4981053b051ea5a92ea6ceab0a7fceb105408190062253545eb7c6e9094b6b0" [label=""];
}

