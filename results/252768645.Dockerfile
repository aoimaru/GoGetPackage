[app/sources/252768645.Dockerfile]
digraph {
  "sha256:bd879171d30119d29428d4852e4e6407e8786157c36cafe0be828fcc0f266569" [label="docker-image://docker.io/frolvlad/alpine-bash:latest" shape="ellipse"];
  "sha256:dc2e629719a894b4c38dbf4a6888670b91e44011542debd9fb89da8bc8aea3d9" [label="/bin/sh -c apk --update add git openssh python python-dev py-setuptools py-crypto py2-pip py-cparser py-cryptography py-markupsafe py-cffi py-yaml py-jinja2 py-paramiko && pip install --upgrade pip && hash -r && pip install --no-cache-dir ansible && chmod 750 /usr/bin/ansible* && apk del python-dev && rm -rf /var/lib/apt/lists/* && rm /var/cache/apk/*" shape="box"];
  "sha256:5a080235c9c2e2549f63c8d9b0b7963fa7f57ac6b3601b78ae1aacd4565c78e5" [label="sha256:5a080235c9c2e2549f63c8d9b0b7963fa7f57ac6b3601b78ae1aacd4565c78e5" shape="plaintext"];
  "sha256:bd879171d30119d29428d4852e4e6407e8786157c36cafe0be828fcc0f266569" -> "sha256:dc2e629719a894b4c38dbf4a6888670b91e44011542debd9fb89da8bc8aea3d9" [label=""];
  "sha256:dc2e629719a894b4c38dbf4a6888670b91e44011542debd9fb89da8bc8aea3d9" -> "sha256:5a080235c9c2e2549f63c8d9b0b7963fa7f57ac6b3601b78ae1aacd4565c78e5" [label=""];
}

