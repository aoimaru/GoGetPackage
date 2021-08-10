[app/sources/382336067.Dockerfile]
digraph {
  "sha256:446d41895526d7d89dd4713317621101e94c623c0fa16bf6ce5dd9d16bbfa419" [label="docker-image://docker.io/library/ubuntu:14.04.5" shape="ellipse"];
  "sha256:a73c5dd3b279c84457fcd819b3167de59bc5ceff80cdd5c67da235a0c9bdc304" [label="/bin/sh -c apt-get --quiet update &&     apt-get --quiet install -y unattended-upgrades &&     unattended-upgrade --minimal_upgrade_steps && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:983532fe18246789103ab7018e5ba5e66614869851095b57cc4bf993ed0b0044" [label="/bin/sh -c apt-get --quiet update && apt-get --quiet install -y     python-dev     git-core     libffi-dev     openssl     libssl-dev         python-virtualenv && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cc2fdd6eb83b51523d7972463a4e22b471be35eec51e1b544e27a25da8824fe3" [label="/bin/sh -c virtualenv /app/env" shape="box"];
  "sha256:62c7a113d736c9bcc3a0e8c2945039894b25a4e74852d75bac4dea46dc596f76" [label="/bin/sh -c /app/env/bin/pip install --upgrade setuptools" shape="box"];
  "sha256:7f43d0b5e55f83ba03187d520aaa573f36e5a6b259df73cb8eac5b805554cfce" [label="/bin/sh -c /app/env/bin/pip install --upgrade pip" shape="box"];
  "sha256:d114cf03e30b023b7dc2a73e35a1fb3b613a17f2f29eadb61699f6eb61351ded" [label="/bin/sh -c /app/env/bin/pip install --upgrade urllib3[secure]" shape="box"];
  "sha256:c0395e55316fad6eba41be8dc453a07a7b76356c5054113f982f9ebf3ad1b312" [label="sha256:c0395e55316fad6eba41be8dc453a07a7b76356c5054113f982f9ebf3ad1b312" shape="plaintext"];
  "sha256:446d41895526d7d89dd4713317621101e94c623c0fa16bf6ce5dd9d16bbfa419" -> "sha256:a73c5dd3b279c84457fcd819b3167de59bc5ceff80cdd5c67da235a0c9bdc304" [label=""];
  "sha256:a73c5dd3b279c84457fcd819b3167de59bc5ceff80cdd5c67da235a0c9bdc304" -> "sha256:983532fe18246789103ab7018e5ba5e66614869851095b57cc4bf993ed0b0044" [label=""];
  "sha256:983532fe18246789103ab7018e5ba5e66614869851095b57cc4bf993ed0b0044" -> "sha256:cc2fdd6eb83b51523d7972463a4e22b471be35eec51e1b544e27a25da8824fe3" [label=""];
  "sha256:cc2fdd6eb83b51523d7972463a4e22b471be35eec51e1b544e27a25da8824fe3" -> "sha256:62c7a113d736c9bcc3a0e8c2945039894b25a4e74852d75bac4dea46dc596f76" [label=""];
  "sha256:62c7a113d736c9bcc3a0e8c2945039894b25a4e74852d75bac4dea46dc596f76" -> "sha256:7f43d0b5e55f83ba03187d520aaa573f36e5a6b259df73cb8eac5b805554cfce" [label=""];
  "sha256:7f43d0b5e55f83ba03187d520aaa573f36e5a6b259df73cb8eac5b805554cfce" -> "sha256:d114cf03e30b023b7dc2a73e35a1fb3b613a17f2f29eadb61699f6eb61351ded" [label=""];
  "sha256:d114cf03e30b023b7dc2a73e35a1fb3b613a17f2f29eadb61699f6eb61351ded" -> "sha256:c0395e55316fad6eba41be8dc453a07a7b76356c5054113f982f9ebf3ad1b312" [label=""];
}

